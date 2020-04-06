# Nils Reaction Library

========================

## Purpose

---------------
Created reactions for `Tensor Reactions` (Currently), can be easily adapted to other things.

## Setup

---------------
**Warning Warning Warning Warning** Shared Library is now required for these, [click on it to see instructions](https://github.com/nil2share/tensorreactions/tree/master/Nil%20Reaction%20Library)

Library has a setup script that will setup the timeline/general reactions or copy to

`C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\TensorReactions\TimelineTriggers\nil`

`C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\TensorReactions\GeneralTriggers\nil`

`New-Item -f -ItemType SymbolicLink -Path "C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\Nil Reaction Library" -Target "C:\Projects\src\github.com\nil2share\tensorreactions\Nil Reaction Library"`

`New-Item -f -ItemType SymbolicLink -Path "C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\TensorReactions\TimelineTriggers\nil" -Target "C:\Projects\src\github.com\nil2share\tensorreactions\TimelineTriggers\nil"`

`New-Item -f -ItemType SymbolicLink -Path "C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\TensorReactions\GeneralTriggers\nil" -Target "C:\Projects\src\github.com\nil2share\tensorreactions\GeneralTriggers\nil"`

## How to Update

---------------

Navigate to `C:\Projects\src\github.com\nil2share\tensorreactions`
Execute `git pull`

if you get an error on pull about stash, it is because you edited one of the files, execute `git reset --hard` then rerun `git pull`

## Conversion status

| Job | Status |
|---|---|
| Dragoon | (E5S-E8S) Code Complete needs testing.|
| Monk | (E5S-E8S) Code Complete needs testing.|
| Ninja | (E5S-E8S) Code Complete needs testing.|
| Redmage | (E5S-E8S) Code Complete needs testing.|
| Samurai | (E5S-E8S) Code Complete needs testing.|
| Summoner| (E5S-E8S) Code Complete needs testing.|
| All | others are WIP.|

## Donation

If you feel you must [here you go](https://www.patreon.com/nil2share).  I do this entirely for free and fun.
