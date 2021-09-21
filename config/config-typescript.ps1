[CmdletBinding()]
param (
  [Parameter()] [string] $SrcFolder = "./src",
  [Parameter()] [string] $DistFolder = "./dist"
)

Write-Verbose "Install TypeScript"
npm install --save-dev `
  typescript `
  @types/node `
  ts-node

Write-Verbose "Create a tsconfig.json file"
$tsConfigJs = @"
{
  "compilerOptions": {
    "target": "es6",
    "lib": [
      "es6"
    ],
    "module": "commonjs",      
    "rootDir": "$SrcFolder",
    "moduleResolution": "node",
    "resolveJsonModule": true, 
    "allowJs": true,
    "outDir": "$DistFolder",
    "esModuleInterop": true,
    "forceConsistentCasingInFileNames": true,
    "strict": true,
    "noImplicitAny": true,
    "skipLibCheck": true
  },
  "exclude": [],
  "include": [
    "$SrcFolder/*"
  ]
}
"@

$tsConfigJs | Set-Content tsconfig.json -Force