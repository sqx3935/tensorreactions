# Nils Reaction Library

========================

## Purpose

---------------
Create a library that is usable for all.  While my primary focus will be on `Tensor Reactions` there honestly is nothing stopping it from being utlized for anything else.

## How to install

---------------
Copy the library to `C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\Nil Reaction Library`.

Note: soon as everything is converted and reactions are stablized a self updated will be looked into.  At this time I don't know how to do UI's nor an updater so if someone would like help that would be appreciated.

The way I hand this is. clone the repo to another folder `C:\Projects\src\github.com\nil2share\tensorreactions`

then simlink it to the folder
`New-Item -ItemType SymbolicLink -Path "C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\Nil Reaction Library" -Target "C:\Projects\src\github.com\nil2share\tensorreactions\Nil Reaction Library"`

## Example

---------------

In `Tensor Reactions` you can add a reaction like this.

```LUA
wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Knockback()
if wasSuccessful == true then
  self.used = true
  return action, targetID, ignoreWeaveRules, allowInterrupt
end
```

wasSuccessful (bool) = returns true if the action has executed (using a hotbar arc) or will execute (non-hotbar arc)
action (table) = ActionList item, if action was executed via hotbar this returns nil
targetID (Number) = id of the target the action is for (always returned)
ignoreWeaveRules (bool) = passes flag to tensor reactions in the event weave rules should be followed.
allowInterrupt (bool) = passes flag to tensor reactions in the event a cast should be interrupted.

This function call works on any job, it will use the `Player.job` setting to determine if it is `ArmsLength` or `SureCast`.  If the combat system you are using supports a hotbar it will utilize the hotbar first, otherwise it will fall back to `ActionList`.

## Currently working

---------------

NOTE: if an arc is missing, please let me know what the variable or command is, sadly I do not have all of them.
NOTE2: action name is the nme of the function.

### Hotbar

| Action | Jobs |
|---|---|
| Sprint | All |
| Knockback | All |
| Addle | Caster DPS |
| LowBlow | Tanks |
| LegSweep | Melee DPS |
| TrueNorth | Melee DPS |
| Feint | Melee DPS |
| Mantra | Monk |
| RiddleOfEarth | Monk |
| ThirdEye | Samurai |
| ShadeShift | Ninja |
| CelestialIntersection | Astrologian |

### Quick Toggles

| ARC |
|---|
| TensorRuin |
| SallyNIN |
| SallySAM |

## TODO

---------------

1. figure out how to have this self update
2. After the library is finalized, I need to document it.
