function createExtensionsIfNotExist()
{
  if ((Test-Path .vscode/extensions.json) -eq $false){
    New-Item -ItemType File -Path .vscode/extensions.json
    "{}" | Set-Content .vscode/extensions.json
  }
}

function addRecommendation($recommendation){
  if ($script:recommendations.Contains($recommendation) -eq $false){
    $script:recommendations += $recommendation
  }
}

function loadRecommendations(){
  $script:extensionsJson = Get-Content .vscode/extensions.json -Raw | ConvertFrom-Json
  if ($script:extensionsJson | Get-Member "recommendations") {  
    $script:recommendations = $extensionsJson.recommendations
  }
  $script:recommendations = @()
}

function saveRecommendations(){
  $script:extensionsJson `
    | Add-Member `
      -NotePropertyName recommendations `
      -NotePropertyValue $script:recommendations `
      -Force
  $script:extensionsJson `
    | ConvertTo-Json `
    | Set-Content ./.vscode/extensions.json
}

createExtensionsIfNotExist

loadRecommendations
# recommendations for Jest
addRecommendation "andys8.jest-snippets"
addRecommendation "orta.vscode-jest"
saveRecommendations

