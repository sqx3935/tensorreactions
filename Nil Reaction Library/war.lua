-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                        This section is only for Warrior base actions and toggles                       *
-- *                                                                                                        *
-- **********************************************************************************************************

-- *************************************** Functions around actions  ****************************************
-- *                                                                                                        *
-- *                                              Actions                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************
if NilsReactionLibrary.Combat.Actions.Warrior == nil then NilsReactionLibrary.Combat.Actions.Warrior = {} end

function NilsReactionLibrary.Combat.Actions.Warrior.Armslength()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7548)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Armslength ~= nil then
      SallyWAR.HotBarConfig.Armslength.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Equilibrium()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3552)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Equilibrium ~= nil then
      SallyWAR.HotBarConfig.Equilibrium.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Holmgang()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 43)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Holm ~= nil then
      SallyWAR.HotBarConfig.Holm.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Infuriate()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Infuriate ~= nil then
      SallyWAR.HotBarConfig.Infuriate.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.InnerRelease()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7389)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.InnerRelease ~= nil then
      SallyWAR.HotBarConfig.InnerRelease.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Interject()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7538)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Interject ~= nil then
      SallyWAR.HotBarConfig.Interject.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.LowBlow()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7540)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.LowBlow ~= nil then
      SallyWAR.HotBarConfig.LowBlow.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.NascentFlashOT()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  --TODO: need to fetch id of OT
  -- check cooldown
  local actionskill = ActionList:Get(1, 16464)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.NascentFlash ~= nil then
      SallyWAR.HotBarConfig.NascentFlash.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Onslaught()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7548)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Onslaught ~= nil then
      SallyWAR.HotBarConfig.Onslaught.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Provoke()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7533)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Provoke ~= nil then
      SallyWAR.HotBarConfig.Provoke.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Rampart()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7531)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Rampart ~= nil then
      SallyWAR.HotBarConfig.Rampart.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.RawIntuition()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3551)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.RawIntuition ~= nil then
      SallyWAR.HotBarConfig.RawIntuition.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Reprisal()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7535)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Reprisal ~= nil then
      SallyWAR.HotBarConfig.Reprisal.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Shake()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7388)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Shake ~= nil then
      SallyWAR.HotBarConfig.Shake.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Shirks()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- TODO: GET ID of OT
  -- check cooldown
  local actionskill = ActionList:Get(1, 7537)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Shirks ~= nil then
      SallyWAR.HotBarConfig.Shirks.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Sprint()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Sprint ~= nil then
      SallyWAR.HotBarConfig.Sprint.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.StormEye()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 45)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.StormEye ~= nil then
      SallyWAR.HotBarConfig.StormEye.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Thrill()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 40)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Thrill ~= nil then
      SallyWAR.HotBarConfig.Thrill.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Upheaval()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7387)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Upheaval ~= nil then
      SallyWAR.HotBarConfig.Upheaval.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Warrior.Vengeance()
  if not Player.job == NilsReactionLibrary.jobs.Warrior.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 44)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyWAR.HotBarConfig.Vengeance ~= nil then
      SallyWAR.HotBarConfig.Vengeance.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end


-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                                              Toggles                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************

if NilsReactionLibrary.Combat.Toggles.Warrior == nil then NilsReactionLibrary.Combat.Toggles.Warrior = {} end

function NilsReactionLibrary.Combat.Toggles.Warrior.Reset(onwipe)
  if NilsReactionLibrary.isempty(onwipe) then onwipe = false end

  if NilsReactionLibrary.WhichArc() ~= NilsReactionLibrary.arcs.SallyWAR then return false end

  -- reset hotbar
  SallyWAR.HotBarConfig.Armslength.enabled = true
  SallyWAR.HotBarConfig.Equilibrium.enabled = true
  SallyWAR.HotBarConfig.Holm.enabled = true
  SallyWAR.HotBarConfig.Infuriate.enabled = true
  SallyWAR.HotBarConfig.InnerRelease.enabled = true
  SallyWAR.HotBarConfig.Interject.enabled = true
  SallyWAR.HotBarConfig.LowBlow.enabled = true
  SallyWAR.HotBarConfig.NascentFlash.enabled = true
  SallyWAR.HotBarConfig.Onslaught.enabled = true
  SallyWAR.HotBarConfig.Provoke.enabled = true
  SallyWAR.HotBarConfig.Rampart.enabled = true
  SallyWAR.HotBarConfig.RawIntuition.enabled = true
  SallyWAR.HotBarConfig.Reprisal.enabled = true
  SallyWAR.HotBarConfig.Shake.enabled = true
  SallyWAR.HotBarConfig.Shirks.enabled = true
  SallyWAR.HotBarConfig.Sprint.enabled = true
  SallyWAR.HotBarConfig.StormEye.enabled = true
  SallyWAR.HotBarConfig.Thrill.enabled = true
  SallyWAR.HotBarConfig.Upheaval.enabled = true
  SallyWAR.HotBarConfig.Vengeance.enabled = true

  -- reset quick toggles
  SallyWAR.SkillSettings.Infuriate.enabled = true
  SallyWAR.SkillSettings.InnerRelease.enabled = true
  SallyWAR.SkillSettings.Onslaught.enabled = true
  SallyWAR.SkillSettings.Range.enabled = true
  SallyWAR.SkillSettings.RefreshEye.enabled = true
  SallyWAR.SkillSettings.Opener.enabled = false
  SallyWAR.SkillSettings.Potion.enabled = onwipe == true
  SallyWAR.SkillSettings.SaveCD.enabled = false
  SallyWAR.SkillSettings.TankStance.enabled = true
  SallyWAR.SkillSettings.Upheaval.enabled = true
  SallyWAR.SkillSettings.UseAOE.enabled = true

  NilsReactionLibrary.Combat.Toggles.Handler.Reset()
  return true
end

function NilsReactionLibrary.Combat.Toggles.Warrior.Infuriate(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Warrior.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Infuriate.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Infuriate.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then SallyWAR.SkillSettings.Infuriate.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Warrior.InnerRelease(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Warrior.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.InnerRelease.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.InnerRelease.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then SallyWAR.SkillSettings.InnerRelease.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Warrior.Onslaught(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Warrior.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Onslaught.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Onslaught.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then SallyWAR.SkillSettings.Onslaught.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Warrior.Opener(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Warrior.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Opener.IsActive = toggleOn == false -- set active if suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Opener.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then SallyWAR.SkillSettings.Opener.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Warrior.Potion(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Warrior.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Potion.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Potion.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then SallyWAR.SkillSettings.Potion.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Warrior.Range(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Warrior.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Range.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Range.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then SallyWAR.SkillSettings.Range.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Warrior.RefreshEye(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Warrior.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.RefreshEye.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.RefreshEye.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then SallyWAR.SkillSettings.RefreshEye.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Warrior.CD(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Warrior.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.IsActive = toggleOn == false -- set active if suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then SallyWAR.SkillSettings.SaveCD.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Warrior.TankStance(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Warrior.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.TankStance.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.TankStance.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then SallyWAR.SkillSettings.TankStance.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Warrior.Upheaval(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Warrior.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Upheaval.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Upheaval.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then SallyWAR.SkillSettings.Upheaval.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Warrior.UseAOE(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Warrior.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.UseAOE.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.UseAOE.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyWAR then SallyWAR.SkillSettings.UseAOE.enabled = toggleOn return true end
  return false
end