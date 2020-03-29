-- ******************************************** DPS Functions ***********************************************
-- *                                                                                                        *
-- *                                   Shared actions and functions for DPS                                 *
-- *                                                                                                        *
-- **********************************************************************************************************

function NilsReactionLibrary.Combat.Actions.Feint(entityID)

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check that target does not already have fient
  local target = Player:GetTarget()
  if entityID ~= nil then target = EntityList:Get(entityID) end
  if target == nil or not table.valid(target) or not target.attackable or HasBuff(target.id, 1195) then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7549)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end
  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    if NilsReactionLibrary.Buffs.Ninja.IsDoingMudra() then return false, nil, nil, false, false end

  -- Skip if under trick window
  if HasBuff(target.id, 638, 0, 0, Player.id) then
    return true, nil, nil, false, false
  end

    -- if sally installed, use hotbar, otherwise use base
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then
      if SallyNIN.HotBarConfig.Feint ~= nil then
        SallyNIN.HotBarConfig.Feint.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, target.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == NilsReactionLibrary.jobs.Samurai.id then
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallySAM then
      if SallySAM.HotBarConfig.Feint ~= nil then
        SallySAM.HotBarConfig.Feint.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, target.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == NilsReactionLibrary.jobs.Dragoon.id then
    return true, actionskill, target.id, true, false
  elseif Player.job == NilsReactionLibrary.jobs.Monk.id then
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.TrueNorth()

  -- return if in opener or has true north buff
  if NilsReactionLibrary.Combat.inOpener() or HasBuff(Player.id, 1250) then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7546)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    if NilsReactionLibrary.Buffs.Ninja.IsDoingMudra() then return false, nil, nil, false, false end
    -- if sally installed, use hotbar, otherwise use base
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then
      if SallyNIN.HotBarConfig.TrueNorth ~= nil then
        SallyNIN.HotBarConfig.TrueNorth.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == NilsReactionLibrary.jobs.Samurai.id then
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallySAM then
      if SallySAM.HotBarConfig.TrueNorth ~= nil then
        SallySAM.HotBarConfig.TrueNorth.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == NilsReactionLibrary.jobs.Dragoon.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == NilsReactionLibrary.jobs.Monk.id then
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

-- entityID, the id of the target
-- actionID if you want to hold leg sweep for an action, example 50 for if the target is moving forward
function NilsReactionLibrary.Combat.Actions.LegSweep(entityID, actionID)

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  if NilsReactionLibrary.isempty(entityID) then entityID = 0 end
  if NilsReactionLibrary.isempty(actionID) then actionID = 0 end

  -- check that target does not already have stun
  local target = Player:GetTarget()
  if entityID ~= nil and entityID ~= 0 then target = EntityList:Get(entityID) end
  -- 2 is leg sweep stun
  if target == nil or not table.valid(target) or not target.attackable or HasBuff(target.id, 2) then return false, nil, nil, false, false end

  -- if an action id was passed in, hold legsweet for that action (trying to capture any movement)
  if target.action ~= actionID and target.action ~= 13 and target.action ~= 3 then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7863)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    if NilsReactionLibrary.Buffs.Ninja.IsDoingMudra() then return false, nil, nil, false, false end
    -- if sally installed, use hotbar, otherwise use base
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then
      if SallyNIN.HotBarConfig.LegSweep.enabled ~= nil then
        SallyNIN.HotBarConfig.LegSweep.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, target.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == NilsReactionLibrary.jobs.Samurai.id then
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallySAM then
      if SallySAM.HotBarConfig.LegSweep.enabled ~= nil then
        SallySAM.HotBarConfig.LegSweep.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, target.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == NilsReactionLibrary.jobs.Dragoon.id then
    return true, actionskill, target.id, true, false
  elseif Player.job == NilsReactionLibrary.jobs.Monk.id then
    return true, actionskill, target.id, true, false
  end
  return false
end

function NilsReactionLibrary.Combat.Actions.Bloodbath()

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7542)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  local target = Player:GetTarget()

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    if NilsReactionLibrary.Buffs.Ninja.IsDoingMudra() then return false, nil, nil, false, false end
    -- Skip if under trick window
    if target ~= nil and table.valid(target) and HasBuff(target.id, 638, 0, 0, Player.id) then return false, nil, nil, false, false end

    -- if sally installed, use hotbar, otherwise use base
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then
      if SallyNIN.HotBarConfig.Bloodbath ~= nil then
        SallyNIN.HotBarConfig.Bloodbath.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == NilsReactionLibrary.jobs.Samurai.id then
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallySAM then
      if SallySAM.HotBarConfig.Bloodbath ~= nil then
        SallySAM.HotBarConfig.Bloodbath.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
      return true, nil, nil, false, false
    end
    return true, actionskill, Player.id, true, false
  elseif Player.job == NilsReactionLibrary.jobs.Dragoon.id then
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then
      if SallyDRG.HotBarConfig.Bloodbath ~= nil then
        SallyDRG.HotBarConfig.Bloodbath.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
      return true, nil, nil, false, false
    end
    return true, actionskill, Player.id, true, false
  elseif Player.job == NilsReactionLibrary.jobs.Monk.id then
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.SecondWind()

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7541)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  local target = Player:GetTarget()

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    if NilsReactionLibrary.Buffs.Ninja.IsDoingMudra() then return false, nil, nil, false, false end
    -- Skip if under trick window
    if target ~= nil and table.valid(target) and HasBuff(target.id, 638, 0, 0, Player.id) then return false, nil, nil, false, false end

    -- if sally installed, use hotbar, otherwise use base
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then
      if SallyNIN.HotBarConfig.SecondWind ~= nil then
        SallyNIN.HotBarConfig.SecondWind.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == NilsReactionLibrary.jobs.Samurai.id then
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallySAM then
      if SallySAM.HotBarConfig.SecondWind ~= nil then
        SallySAM.HotBarConfig.SecondWind.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
      return true, nil, nil, false, false
    end
    return true, actionskill, Player.id, true, false
  elseif Player.job == NilsReactionLibrary.jobs.Dragoon.id then
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then
      if SallyDRG.HotBarConfig.SecondWind ~= nil then
        SallyDRG.HotBarConfig.SecondWind.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
      return true, nil, nil, false, false
    end
    return true, actionskill, Player.id, true, false
  elseif Player.job == NilsReactionLibrary.jobs.Monk.id then
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end
