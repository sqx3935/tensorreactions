#Requires -RunAsAdministrator
# only works if you follow the setup structure I layed out in https://github.com/nil2share/tensorreactions/wiki/How-to-setup-git-for-easier-updates

# setup lib for library
New-Item -f -ItemType SymbolicLink -Path "C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\Nil Reaction Library" -Target "C:\Projects\src\github.com\nil2share\tensorreactions\Nil Reaction Library"

New-Item -f -ItemType SymbolicLink -Path "C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\TensorReactions\TimelineTriggers\nil" -Target "C:\Projects\src\github.com\nil2share\tensorreactions\TimelineTriggers\nil"

New-Item -f -ItemType SymbolicLink -Path "C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\TensorReactions\GeneralTriggers\nil" -Target "C:\Projects\src\github.com\nil2share\tensorreactions\GeneralTriggers\nil"
