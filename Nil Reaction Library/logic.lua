-- *********************************** Functions around logic actions  **************************************
-- *                                                                                                        *
-- *                                Mostly for general and Decision logic                                   *
-- *                                                                                                        *
-- **********************************************************************************************************

if NilsReactionLibrary.Combat.Logic == nil then NilsReactionLibrary.Combat.Logic = {} end

-- Primary focus is to general reactions, return true if it can be skipped
function NilsReactionLibrary.Combat.Logic.Stun(entityID, spellID, actionID, useList)

  -- return if in opener
  if NilsReactionLibrary.Combat.inOpener()  then return true, nil, nil, false, false end

  if NilsReactionLibrary.isempty(entityID) then entityID = 0 end
  if NilsReactionLibrary.isempty(spellID) then spellID = 0 end
  if NilsReactionLibrary.isempty(actionID) then actionID = 0 end
  if NilsReactionLibrary.isempty(useList) then useList = true end

  -- check that target does not already have stun
  local target = Player:GetTarget()
  if entityID ~= nil and entityID ~= 0 then target = EntityList:Get(entityID) end
  if target == nil or not table.valid(target) or not target.attackable then return true, nil, nil, false, false end

  if useList then
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

function NilsReactionLibrary.Combat.Logic.Knockback(entityID, spellID, remaining, useList)

  -- return if in opener
  if NilsReactionLibrary.Combat.inOpener()  then return true, nil, nil, false, false end

  if NilsReactionLibrary.isempty(entityID) then entityID = 0 end
  if NilsReactionLibrary.isempty(spellID) then spellID = 0 end
  if NilsReactionLibrary.isempty(remaining) then remaining = 0 end
  if NilsReactionLibrary.isempty(useList) then useList = true end

  -- check that target does not already have stun
  local target = Player:GetTarget()
  if entityID ~= nil and entityID ~= 0 then target = EntityList:Get(entityID) end
  if target == nil or not table.valid(target) or not target.attackable then return true, nil, nil, false, false end

  if useList then
    -- skip if wrong map
    if not NilsReactionLibrary.data.stun[NilsReactionLibrary.Settings.CurrentMapID] or target.castinginfo ~= nil then return true, nil, nil, false, false end

    -- skip if wrong spell
    if not NilsReactionLibrary.data.stun[NilsReactionLibrary.Settings.CurrentMapID][spellID] then return true, nil, nil, false, false end

    -- keep in queue if event time does not match, otherwise complete the reation
    if target.castinginfo.casttime - target.castinginfo.channeltime > tonumber(NilsReactionLibrary.data.stun[NilsReactionLibrary.Settings.CurrentMapID][spellID]) then return false, nil, nil, false, false end

    return NilsReactionLibrary.Combat.Actions.Knockback()
  end

  return NilsReactionLibrary.Combat.Actions.Knockback(entityID, remaining)
end
