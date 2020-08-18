#audio
function Get-YoutubeAudio ($urls, $outPath = "G:\Downloads\youtubeRips\audio"){ 
    foreach ($url in $urls) {
        $arg = "$($url) --get-title"
        $title = (Invoke-Process $env:youtube -ArgumentList $arg).split([Environment]::NewLine)[0].replace('[','(').replace(']',')')
        Start-Process $env:youtube -ArgumentList $url, "--extract-audio --audio-format best", '-o', """$($outPath)\$($title)`.%(ext)s""" -NoNewWindow -PassThru -Wait
        $fullTitle = (Get-ChildItem $outPath | Where-Object {$_.Name -like "*$title*"}).FullName
        ConvertTo-LeveledALAC -filePath $fullTitle -noLog
    }
}

#video
function Get-YoutubeVideo ($urls,$outPath = "g:\downloads\youtubeRips\video\%(title)s.%(ext)s"){
    foreach ($url in $urls) {
        Start-Process $env:youtube -ArgumentList $url, "-f bestvideo+bestaudio", '-o', $outPath -NoNewWindow -Wait -PassThru
    }
}
