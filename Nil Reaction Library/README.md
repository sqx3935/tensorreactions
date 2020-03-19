# Nils Reaction Library

========================

## Purpose

---------------
Create a library that is usable for all.  While my primary focus will be on `Tensor Reactions` there honestly is nothing stopping it from being utlized for anything else.

## Example

---------------

In `Tensor Reactions` you can add a reaction like this.

```LUA
if NilsReactionLibrary.Knockback() == true then
  self.used = true
end
```

This function call works on any job, it will use the `Player.job` setting to determine if it is `ArmsLength` or `SureCast`.  If the combat system you are using supports a hotbar it will utilize the hotbar first, otherwise it will fall back to `ActionList`.

## TODO

---------------

After the library is finalized, I need to document it.
