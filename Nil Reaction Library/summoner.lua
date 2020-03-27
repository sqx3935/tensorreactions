-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                        This section is only for summoner base actions and toggles                      *
-- *                                                                                                        *
-- **********************************************************************************************************



-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                                              Toggles                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************

if NilsReactionLibrary.Combat.Toggles.Summoner == nil then NilsReactionLibrary.Combat.Toggles.Summoner = {} end

function NilsReactionLibrary.Combat.Toggles.Summoner.Reset()
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then
    -- HotBar
    ACR_TensorRuin_Hotbar_Potion = false
    ACR_TensorRuin_Hotbar_Addle = false
    ACR_TensorRuin_Hotbar_Sprint = false
    ACR_TensorRuin_Hotbar_Deathflare = false
    ACR_TensorRuin_Hotbar_Surecast = false
    ACR_TensorRuin_Hotbar_LockFace = false
    ACR_TensorRuin_Hotbar_LimitBreak = false

    ACR_TensorRuin_CD = true
    ACR_TensorRuin_PetCD = true
    ACR_TensorRuin_AOE = true
    ACR_TensorRuin_Fester = true
    ACR_TensorRuin_DW = true
    ACR_TensorRuin_Demi = true
    ACR_TensorRuin_Aetherpact = true
    ACR_TensorRuin_EnergyDrain = true
    ACR_TensorRuin_DoTs = true
    ACR_TensorRuin_BurnR4 = false
    ACR_TensorRuin_HoldAOE = false
    ACR_TensorRuin_SmartAOE = true
    ACR_TensorRuin_SmartDoT = true
    ACR_TensorRuin_SmartBane = true
    -- ACR_TensorRuin_Potion = true -- TODO not resetting until a gui with settings can be created
    ACR_TensorRuin_HardRes = false
    ACR_TensorRuin_SwiftRes = false
    ACR_TensorRuin_SwiftR3 = true

    NilsReactionLibrary.Combat.Toggles.Handler.Reset()
  end

  return true
end

-- Toggles DWT, Summon Bahamut, and FBT. Use this to hold major cooldowns before phase transitions. In the case of TensorRuin, if you turn off CDs while in DWT for example, it will auto extend dwt to maximum duration and won't summon bahamut until after.
function NilsReactionLibrary.Combat.Toggles.Summoner.CD(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Summoner.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_CD = toggleOn return true end

  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.PetCD(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_PetCD = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.AOE(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Summoner.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.AOEBlackList.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.AOEBlackList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_AOE = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.Fester(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_Fester = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.DWT(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_DW = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.Demi(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_Demi = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.Aetehrpact(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_Aetherpact = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.EnergyDrain(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_EnergyDrain = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.DoTs(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_DoTs = toggleOn return true end
  end
  return false
end

-- Burn Boss
function NilsReactionLibrary.Combat.Toggles.Summoner.BurnR4(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Summoner.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.TimelineActive = byTimeline and toggleOn == false
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.LastMoved = Now()
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_BurnR4 = toggleOn return true end

  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.HoldAOE(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_HoldAOE = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.SmartAOE(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_SmartAOE = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.SmartDoT(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_SmartDoT = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.SmartBane(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_SmartBane = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.Potion(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_Potion = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.HardRes(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_HardRes = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.SwiftRes(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_SwiftRes = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Summoner.SwiftR3(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Summoner.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.TensorRuin then ACR_TensorRuin_SwiftR3 = toggleOn return true end
  end
  return false
end
