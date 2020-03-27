# only works if you follow the setup structure I layed out in https://github.com/nil2share/tensorreactions/wiki/How-to-setup-git-for-easier-updates

# setup lib for library
#New-Item -f -ItemType SymbolicLink -Path "C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\Nil Reaction Library" -Target "C:\Projects\src\github.com\nil2share\tensorreactions\Nil Reaction Library"

# loop through timeline and seutp symbolic link
Get-ChildItem "C:\Projects\src\github.com\nil2share\tensorreactions\TimelineTriggers" -Filter *.lua | 
Foreach-Object {
    #$content = Get-Content $_.FullName
    Write-Host $_.FullName
    Write-Host $_.Name
    New-Item -f -ItemType SymbolicLink -Path "C:\Temp\test\"+ $_.Name -Target $_.FullName
    #filter and save content to the original file
   # $content | Where-Object {$_ -match 'step[49]'} | Set-Content $_.FullName

    #filter and save content to a new file 
   # $content | Where-Object {$_ -match 'step[49]'} | Set-Content ($_.BaseName + '_out.log')
}