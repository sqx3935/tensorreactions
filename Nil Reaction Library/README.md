# Nils Reaction Library

========================

## Purpose

---------------
Create a library that is usable for all.  While my primary focus will be on `Tensor Reactions` there honestly is nothing stopping it from being utlized for anything else.

## Example

---------------

In `Tensor Reactions` you can add a reaction like this.

```LUA
if NilsReactionLibrary.Combat.Actions.Knockback() == true then
  self.used = true
end
```

This function call works on any job, it will use the `Player.job` setting to determine if it is `ArmsLength` or `SureCast`.  If the combat system you are using supports a hotbar it will utilize the hotbar first, otherwise it will fall back to `ActionList`.

## Currently working

---------------

NOTE: if an arc is missing, please let me know what the variable or command is, sadly I do not have all of them.
NOTE2: action name is the nme of the function.

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

## TODO

---------------

1. figure out how to have this self update
2. After the library is finalized, I need to document it.
