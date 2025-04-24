# count_words.ps1
Get-ChildItem -Path "c:/Users/Administrator/Platform/docs" -Recurse -Force |
Where-Object {!$_.PSIsContainer} |
Get-Content -Raw -Encoding UTF8 -ErrorAction SilentlyContinue |
Measure-Object -Word |
Select-Object -ExpandProperty Words |
Measure-Object -Sum |
Select-Object -ExpandProperty Sum