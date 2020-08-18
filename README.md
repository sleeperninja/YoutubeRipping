# YoutubeRipping

*PowerShell script to simplify Youtube-DL ripping*

## Get-YoutubeAudio

Get-YoutubeAudio uses Youtube-DL, bound to environment variable $env:youtube, to download the highest quality audio from a specified Youtube URL, then adjust the volume so the average DR sits at -16dB using ConvertTo-LeveledALAC. The early version has practically no error checking, so you should only use it if you know what you're doing. 

## Get-YoutubeVideo

Get-YoutubeVideo uses Youtube-DL, bound to environment variable $env:youtube, to download the highest quality audio/video from a specified Youtube URL. 

No error checking, no extra fun stuff just yet.
