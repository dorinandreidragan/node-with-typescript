Write-Verbose "Install ESLint"
npm install --save-dev `
  eslint `
  @typescript-eslint/parser `
  @typescript-eslint/eslint-plugin

Write-Verbose "Configure ESLint"
@"
{
  "root": true,
  "parser": "@typescript-eslint/parser",
  "plugins": ["@typescript-eslint"],
  "extends": [
    "eslint:recommended",
    "plugin:@typescript-eslint/eslint-recommended",
    "plugin:@typescript-eslint/recommended"
  ]
}
"@ | Set-Content .eslintrc

Write-Verbose "Configure ESLint ignore list"
@"
node_modules
dist
"@ | Set-Content .eslintignore

Write-Verbose "Add lint script to package.json"
$packageJson = Get-Content ./package.json -Raw | ConvertFrom-Json
$packageJson.scripts | Add-Member -NotePropertyName "lint" -NotePropertyValue "eslint . --ext .ts"
$file = $packageJson | ConvertTo-Json
$file | Set-Content ./package.json -Force
