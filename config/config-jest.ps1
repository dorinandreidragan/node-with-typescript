[CmdletBinding()]
param (
  [Parameter()] [string] $SrcFolder = "./src"
)
 

Write-Host "Install types for Jest"
npm install --save-dev `
  jest `
  @types/jest `
  ts-jest

Write-Host "Configure Jest"
$jestConfigJs = @"
module.exports = {
  preset: "ts-jest",
  testEnvironment: "node",
  "roots": [
    "$SrcFolder"
  ],
  "testMatch": [
    "**/__tests__/**/*.+(ts|tsx|js)",
    "**/?(*.)+(spec|test).+(ts|tsx|js)"
  ],
  "transform": {
    "^.+\\.(ts|tsx)$": "ts-jest"
  },
}
"@

$jestConfigJs | Set-Content jest.config.js -Force