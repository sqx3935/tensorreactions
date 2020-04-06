-- *********************************** Functions around logic actions  **************************************
-- *                                                                                                        *
-- *                                Mostly for general and Decision logic                                   *
-- *                                                                                                        *
-- **********************************************************************************************************

if NilsReactionLibrary.Combat.Logic == nil then NilsReactionLibrary.Combat.Logic = {} end

if NilsReactionLibrary.Logic == nil then NilsReactionLibrary.Logic = {} end

function NilsReactionLibrary.Combat.Logic.Feint(entityID, remaining, spellID, useList)

  -- return if in opener
  if NilsReactionLibrary.Combat.inOpener()  then return true, nil, nil, false, false end

  if NilsReactionLibrary.isempty(entityID) then entityID = 0 end
  if NilsReactionLibrary.isempty(spellID) then spellID = 0 end
  if NilsReactionLibrary.isempty(remaining) then remaining = 0 end
  if NilsReactionLibrary.isempty(useList) then useList = true end

  -- get target
  local target = Player:GetTarget()
  if entityID ~= nil and entityID ~= 0 then target = EntityList:Get(entityID) end
  if target == nil or not table.valid(target) or not target.attackable or HasBuff(target.id, 1195) then return true, nil, nil, false, false end

  if useList then
    -- skip if wrong map
    if not NilsReactionLibrary.data.feint[NilsReactionLibrary.Settings.CurrentMapID] or target.castinginfo ~= nil then return true, nil, nil, false, false end

    -- skip if wrong spell
    if not NilsReactionLibrary.data.feint[NilsReactionLibrary.Settings.CurrentMapID][spellID] then return true, nil, nil, false, false end

    -- keep in queue if event time does not match, otherwise complete the reation
    if target.castinginfo.casttime - target.castinginfo.channeltime > tonumber(NilsReactionLibrary.data.feint[NilsReactionLibrary.Settings.CurrentMapID][spellID]) then return false, nil, nil, false, false end

    return NilsReactionLibrary.Combat.Actions.Feint()
  end

  return NilsReactionLibrary.Combat.Actions.Feint(entityID)
end

-- Gap closer defaults to current target, optionally entityid can be passed in.
function NilsReactionLibrary.Combat.Logic.GapClosers(entityID)
  if Player.job == NilsReactionLibrary.jobs.Ninja.id then return NilsReactionLibrary.Combat.Actions.Shukuchi(entityID) end
  if Player.job == NilsReactionLibrary.jobs.Samurai.id then return NilsReactionLibrary.Combat.Actions.Gyoten() end
  if Player.job == NilsReactionLibrary.jobs.Dragoon.id then return  NilsReactionLibrary.Combat.Actions.ElusiveJump(entityID) end

  return true, nil, nil, true, false
end

function NilsReactionLibrary.Combat.Logic.Knockback(entityID, remaining, spellID, useList)

  -- return if in opener
  if NilsReactionLibrary.Combat.inOpener()  then return true, nil, nil, false, false end

  if NilsReactionLibrary.isempty(entityID) then entityID = 0 end
  if NilsReactionLibrary.isempty(spellID) then spellID = 0 end
  if NilsReactionLibrary.isempty(remaining) then remaining = 0 end
  if NilsReactionLibrary.isempty(useList) then useList = true end


  NilsReactionLibrary.Log("useList : " ..tostring(useList))

  if useList then
    -- get target
    local target = Player:GetTarget()
    if entityID ~= nil and entityID ~= 0 then target = EntityList:Get(entityID) end
    if target == nil or not table.valid(target) or not target.attackable then return true, nil, nil, false, false end

    -- skip if wrong map
    if not NilsReactionLibrary.data.knockback[NilsReactionLibrary.Settings.CurrentMapID] or target.castinginfo ~= nil then return true, nil, nil, false, false end

    -- skip if wrong spell
    if not NilsReactionLibrary.data.knockback[NilsReactionLibrary.Settings.CurrentMapID][spellID] then return true, nil, nil, false, false end

    -- keep in queue if event time does not match, otherwise complete the reation
    if target.castinginfo.casttime - target.castinginfo.channeltime > tonumber(NilsReactionLibrary.data.knockback[NilsReactionLibrary.Settings.CurrentMapID][spellID]) then return false, nil, nil, false, false end

    return NilsReactionLibrary.Combat.Actions.Knockback()
  end

  return NilsReactionLibrary.Combat.Actions.Knockback(entityID, remaining)
end

function NilsReactionLibrary.Combat.Logic.ShadeShift(entityID, remaining, spellID, useList)

  -- return if in opener
  if NilsReactionLibrary.Combat.inOpener()  then return true, nil, nil, false, false end

  if NilsReactionLibrary.isempty(entityID) then entityID = 0 end
  if NilsReactionLibrary.isempty(spellID) then spellID = 0 end
  if NilsReactionLibrary.isempty(remaining) then remaining = 0 end
  if NilsReactionLibrary.isempty(useList) then useList = true end

  if useList then
    -- get target
    local target = Player:GetTarget()
    if entityID ~= nil and entityID ~= 0 then target = EntityList:Get(entityID) end
    if target == nil or not table.valid(target) or not target.attackable then return true, nil, nil, false, false end

    -- skip if wrong map
    if not NilsReactionLibrary.data.shadeshift[NilsReactionLibrary.Settings.CurrentMapID] or target.castinginfo ~= nil then return true, nil, nil, false, false end

    -- skip if wrong spell
    if not NilsReactionLibrary.data.shadeshift[NilsReactionLibrary.Settings.CurrentMapID][spellID] then return true, nil, nil, false, false end

    -- keep in queue if event time does not match, otherwise complete the reation
    if target.castinginfo.casttime - target.castinginfo.channeltime > tonumber(NilsReactionLibrary.data.shadeshift[NilsReactionLibrary.Settings.CurrentMapID][spellID]) then return false, nil, nil, false, false end

    return NilsReactionLibrary.Combat.Actions.ShadeShift()
  end

  return NilsReactionLibrary.Combat.Actions.ShadeShift()
end

function NilsReactionLibrary.Combat.Logic.Stun(entityID, spellID, actionID, useList)

  -- return if in opener
  if NilsReactionLibrary.Combat.inOpener()  then return true, nil, nil, false, false end

  if NilsReactionLibrary.isempty(entityID) then entityID = 0 end
  if NilsReactionLibrary.isempty(spellID) then spellID = 0 end
  if NilsReactionLibrary.isempty(actionID) then actionID = 0 end
  if NilsReactionLibrary.isempty(useList) then useList = true end

  if useList then
    -- check that target does not already have stun
    local target = Player:GetTarget()
    if entityID ~= nil and entityID ~= 0 then target = EntityList:Get(entityID) end
    if target == nil or not table.valid(target) or not target.attackable then return true, nil, nil, false, false end

    -- skip if wrong map
    if not NilsReactionLibrary.data.stun[NilsReactionLibrary.Settings.CurrentMapID] or target.castinginfo ~= nil then return true, nil, nil, false, false end

    -- skip if wrong spell
    if not NilsReactionLibrary.data.stun[NilsReactionLibrary.Settings.CurrentMapID][spellID] then return true, nil, nil, false, false end

    -- keep in queue if event time does not match, otherwise complete the reation
    if target.castinginfo.casttime - target.castinginfo.channeltime > tonumber(NilsReactionLibrary.data.stun[NilsReactionLibrary.Settings.CurrentMapID][spellID]) then return false, nil, nil, false, false end

    if Player.job == NilsReactionLibrary.jobs.Ninja.id and Player.job == NilsReactionLibrary.jobs.Samurai.id and Player.job == NilsReactionLibrary.jobs.Dragoon.id and Player.job == NilsReactionLibrary.jobs.Monk.id then
      return NilsReactionLibrary.Combat.Actions.LegSweep(entityID, actionID)
    elseif Player.job == NilsReactionLibrary.jobs.Warrior.id and Player.job == NilsReactionLibrary.jobs.DarkKnight.id and Player.job == NilsReactionLibrary.jobs.Paladin.id and Player.job == NilsReactionLibrary.jobs.Gunbreaker.id then
      return NilsReactionLibrary.Combat.Actions.LowBlow(entityID, actionID)
    end

    return false, nil, nil, false, false
  end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id and Player.job == NilsReactionLibrary.jobs.Samurai.id and Player.job == NilsReactionLibrary.jobs.Dragoon.id and Player.job == NilsReactionLibrary.jobs.Monk.id then
    return NilsReactionLibrary.Combat.Actions.LegSweep(entityID, actionID)
  elseif Player.job == NilsReactionLibrary.jobs.Warrior.id and Player.job == NilsReactionLibrary.jobs.DarkKnight.id and Player.job == NilsReactionLibrary.jobs.Paladin.id and Player.job == NilsReactionLibrary.jobs.Gunbreaker.id then
    return NilsReactionLibrary.Combat.Actions.LowBlow(entityID, actionID)
  end

  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Logic.ThirdEye(entityID, remaining, spellID, useList)

  -- return if in opener
  if NilsReactionLibrary.Combat.inOpener()  then return true, nil, nil, false, false end

  if NilsReactionLibrary.isempty(entityID) then entityID = 0 end
  if NilsReactionLibrary.isempty(spellID) then spellID = 0 end
  if NilsReactionLibrary.isempty(remaining) then remaining = 0 end
  if NilsReactionLibrary.isempty(useList) then useList = true end

  if useList then
    -- get target
    local target = Player:GetTarget()
    if entityID ~= nil and entityID ~= 0 then target = EntityList:Get(entityID) end
    if target == nil or not table.valid(target) or not target.attackable then return true, nil, nil, false, false end

    -- skip if wrong map
    if not NilsReactionLibrary.data.thirdeye[NilsReactionLibrary.Settings.CurrentMapID] or target.castinginfo ~= nil then return true, nil, nil, false, false end

    -- skip if wrong spell
    if not NilsReactionLibrary.data.thirdeye[NilsReactionLibrary.Settings.CurrentMapID][spellID] then return true, nil, nil, false, false end

    -- keep in queue if event time does not match, otherwise complete the reation
    if target.castinginfo.casttime - target.castinginfo.channeltime > tonumber(NilsReactionLibrary.data.shadeshift[NilsReactionLibrary.Settings.CurrentMapID][spellID]) then return false, nil, nil, false, false end

    return NilsReactionLibrary.Combat.Actions.ThirdEye()
  end

  return NilsReactionLibrary.Combat.Actions.ThirdEye(entityID)
end

-- TODO: This is messy and needs simplified
function NilsReactionLibrary.Combat.Logic.SelfHeal()
  -- ignore if not in combat
  if Player.incombat == false then return false, nil, nil, true, false end

  -- if player just died, hold self healing
  if TimeSince(NilsReactionLibrary.Combat.Toggles.Control.DeathWatch.TimeOfDeath) < 5000 then return false, nil, nil, true, false end

  -- 84 bloodbath buff
  -- check regen buffs
  local hasRegen = false
  if  HasBuff(Player.id, 158) or HasBuff(Player.id, 150) or HasBuff(Player.id, 839) or HasBuff(Player.id, 84) then
		hasRegen = true
  end

  -- if has regen, can hold self healing until 10% and only if a heal ability has not been used within the last 1000ms
  if hasRegen then
    if Player.hp.percent <= NilsReactionLibrary.Settings.SelfHealWithRegen and TimeSince(NilsReactionLibrary.Combat.Toggles.Control.SelfHeal.LastUsed) > 1000 then
      local wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.SecondWind()
      if wasSuccessful == true then NilsReactionLibrary.Combat.Toggles.Control.SelfHeal.LastUsed = Now() return wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt
      elseif TimeSince(NilsReactionLibrary.Combat.Toggles.Control.SelfHeal.LastUsed) > 1000 then
        wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Bloodbath()
        if wasSuccessful == true then NilsReactionLibrary.Combat.Toggles.Control.SelfHeal.LastUsed = Now() return wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt end
      end
      return false, nil, nil, true, false
    end
  else
  -- if no regen , use a self heal at 20%
    if Player.hp.percent <= NilsReactionLibrary.Settings.SelfHealWithoutRegen and TimeSince(NilsReactionLibrary.Combat.Toggles.Control.SelfHeal.LastUsed) > 1000 then
      local wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.SecondWind()
      if wasSuccessful == true then NilsReactionLibrary.Combat.Toggles.Control.SelfHeal.LastUsed = Now() return wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt
      elseif TimeSince(NilsReactionLibrary.Combat.Toggles.Control.SelfHeal.LastUsed) > 1000 then
        wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Bloodbath()
        if wasSuccessful == true then NilsReactionLibrary.Combat.Toggles.Control.SelfHeal.LastUsed = Now() return wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt end
      end
      return false, nil, nil, true, false
    end
  end

  return false, nil, nil, true, false
end

-- *************************************** Shared toggle actions  *******************************************
-- *                                                                                                        *
-- *                                              Toggles                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************

if NilsReactionLibrary.Logic.Toggles == nil then NilsReactionLibrary.Logic.Toggles = {} end

function NilsReactionLibrary.Logic.Toggles.AOEOff(byTimeline)
  -- sally
  NilsReactionLibrary.Combat.Toggles.Dragoon.AOE(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Ninja.AOE(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Redmage.UseAOE(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Samurai.AOE(NilsReactionLibrary.params.off, byTimeline)
  -- variables
  NilsReactionLibrary.Combat.Toggles.Monk.AOE(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Summoner.AOE(NilsReactionLibrary.params.off, byTimeline)

  return true
end

function NilsReactionLibrary.Logic.Toggles.AOEOon(byTimeline)
  -- sally
  NilsReactionLibrary.Combat.Toggles.Dragoon.AOE(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Ninja.AOE(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Redmage.UseAOE(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Samurai.AOE(NilsReactionLibrary.params.on, byTimeline)
  -- variables
  NilsReactionLibrary.Combat.Toggles.Monk.AOE(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Summoner.AOE(NilsReactionLibrary.params.on, byTimeline)

  return true
end

function NilsReactionLibrary.Logic.Toggles.JumpsOff(byTimeline)
  NilsReactionLibrary.Combat.Toggles.Dragoon.Jumps(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Redmage.JumpIn(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Redmage.JumpOut(NilsReactionLibrary.params.off, byTimeline)

  return true
end

function NilsReactionLibrary.Logic.Toggles.JumpsOn(byTimeline)
  NilsReactionLibrary.Combat.Toggles.Dragoon.Jumps(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Redmage.JumpIn(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Redmage.JumpOut(NilsReactionLibrary.params.on, byTimeline)

  return true
end

function NilsReactionLibrary.Logic.Toggles.CDOff(byTimeline)
  -- Turn on Save CD
  NilsReactionLibrary.Combat.Toggles.Dragoon.CD(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Monk.CD(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Ninja.CD(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Redmage.CD(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Samurai.CD(NilsReactionLibrary.params.on, byTimeline)

  -- variables
  NilsReactionLibrary.Combat.Toggles.Summoner.CD(NilsReactionLibrary.params.off, byTimeline)

  return true
end

function NilsReactionLibrary.Logic.Toggles.CDOn(byTimeline)
  -- Turn off Save CD
  NilsReactionLibrary.Combat.Toggles.Dragoon.CD(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Monk.CD(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Ninja.CD(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Redmage.CD(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Samurai.CD(NilsReactionLibrary.params.off, byTimeline)
  -- variables
  NilsReactionLibrary.Combat.Toggles.Summoner.CD(NilsReactionLibrary.params.on, byTimeline)

  return true
end

function NilsReactionLibrary.Logic.Toggles.DOTOff(byTimeline)
  -- sally
  NilsReactionLibrary.Combat.Toggles.Dragoon.DoTs(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Ninja.ShadowFang(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Samurai.Higanbana(NilsReactionLibrary.params.off, byTimeline)

  -- variables
  NilsReactionLibrary.Combat.Toggles.Summoner.DoTs(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Monk.DOT(NilsReactionLibrary.params.off, byTimeline)
  return true
end

function NilsReactionLibrary.Logic.Toggles.DOTOn(byTimeline)
  -- sally
  NilsReactionLibrary.Combat.Toggles.Dragoon.DoTs(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Ninja.ShadowFang(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Samurai.Higanbana(NilsReactionLibrary.params.on, byTimeline)

  -- variables
  NilsReactionLibrary.Combat.Toggles.Summoner.DoTs(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Monk.DOT(NilsReactionLibrary.params.on, byTimeline)

  return true
end

function NilsReactionLibrary.Logic.Toggles.PotionOff(byTimeline)
  -- sally
  NilsReactionLibrary.Combat.Toggles.Dragoon.Potion(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Ninja.Potion(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Redmage.Potion(NilsReactionLibrary.params.off, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Samurai.Potion(NilsReactionLibrary.params.off, byTimeline)

  -- variables
  NilsReactionLibrary.Combat.Toggles.Summoner.DoTs(NilsReactionLibrary.params.off, byTimeline)
  return true
end

function NilsReactionLibrary.Logic.Toggles.PotionOn(byTimeline)
  -- sally
  NilsReactionLibrary.Combat.Toggles.Dragoon.Potion(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Ninja.Potion(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Redmage.Potion(NilsReactionLibrary.params.on, byTimeline)
  NilsReactionLibrary.Combat.Toggles.Samurai.Potion(NilsReactionLibrary.params.on, byTimeline)

  -- variables
  NilsReactionLibrary.Combat.Toggles.Summoner.DoTs(NilsReactionLibrary.params.on, byTimeline)

  return true
end

function NilsReactionLibrary.Logic.Toggles.BurnBossOn(byTimeline)
  -- sally
  NilsReactionLibrary.Combat.Toggles.Ninja.BurnBoss(NilsReactionLibrary.params.on, byTimeline)

  -- variables
  NilsReactionLibrary.Combat.Toggles.Summoner.BurnR4(NilsReactionLibrary.params.on, byTimeline)

  return true
end