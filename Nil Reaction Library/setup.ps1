#Requires -RunAsAdministrator
# only works if you follow the setup structure I layed out in https://github.com/nil2share/tensorreactions/wiki/How-to-setup-git-for-easier-updates

# setup lib for library
New-Item -f -ItemType SymbolicLink -Path "C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\Nil Reaction Library" -Target "C:\Projects\src\github.com\nil2share\tensorreactions\Nil Reaction Library"

# loop through timeline and seutp symbolic link
Get-ChildItem "C:\Projects\src\github.com\nil2share\tensorreactions\TimelineTriggers" -Filter *.lua | 
Foreach-Object {
    New-Item -f -ItemType SymbolicLink -Path "C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\TensorReactions\TimelineTriggers\$_" -Target $_.FullName
}

# loop through general and seutp symbolic link
Get-ChildItem "C:\Projects\src\github.com\nil2share\tensorreactions\GeneralTriggers" -Filter *.lua | 
Foreach-Object {
    New-Item -f -ItemType SymbolicLink -Path "C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\TensorReactions\GeneralTriggers\$_" -Target $_.FullName
}