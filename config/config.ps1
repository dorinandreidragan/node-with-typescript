[CmdletBinding()]
param (
  [Parameter()] [string] $SrcFolder = "./src",
  [Parameter()] [string] $DistFolder = "./dist",
  [Parameter()] [switch] $ConfigVsCode = $true
)

npm init -y

& $PSScriptRoot/config-typescript.ps1 -SrcFolder $SrcFolder -DistFolder $DistFolder
& $PSScriptRoot/config-jest.ps1 -SrcFolder $SrcFolder
& $PSScriptRoot/config-linter.ps1

if ($ConfigVsCode) {
  & $PSScriptRoot/config-extensions.ps1
}