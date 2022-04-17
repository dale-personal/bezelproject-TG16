$files = Get-ChildItem -File -Filter *.png  -Path retroarch\overlay\GameBezels\TG16\

for ($i=0; $i -lt $files.Count; $i++) {
    Write-Output $files[$i].FullName
    magick $files[$i].FullName -strokewidth 0 -fill black -draw "rectangle 222,0 1698,1080" -region "1477x1080+222+0" -transparent black $files[$i].FullName
}