-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                        This section is only for Redmage base actions and toggles                       *
-- *                                                                                                        *
-- **********************************************************************************************************

-- *************************************** Functions around actions  ****************************************
-- *                                                                                                        *
-- *                                              Actions                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************
if NilsReactionLibrary.Combat.Actions.Redmage == nil then NilsReactionLibrary.Combat.Actions.Redmage = {} end

function NilsReactionLibrary.Combat.Actions.Redmage.Addle()
  if not Player.job == NilsReactionLibrary.jobs.Redmage.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7560)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyRDM.HotBarConfig.Addle ~= nil then
      SallyRDM.HotBarConfig.Addle.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Redmage.Corps()
  if not Player.job == NilsReactionLibrary.jobs.Redmage.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7506)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyRDM.HotBarConfig.Corps ~= nil then
      SallyRDM.HotBarConfig.Corps.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Redmage.Displacement()
  if not Player.job == NilsReactionLibrary.jobs.Redmage.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7515)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyRDM.HotBarConfig.Displacement ~= nil then
      SallyRDM.HotBarConfig.Displacement.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Redmage.Embolden()
  if not Player.job == NilsReactionLibrary.jobs.Redmage.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7520)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyRDM.HotBarConfig.Embolden ~= nil then
      SallyRDM.HotBarConfig.Embolden.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Redmage.Engagement()
  if not Player.job == NilsReactionLibrary.jobs.Redmage.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16527)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyRDM.HotBarConfig.Engagement ~= nil then
      SallyRDM.HotBarConfig.Engagement.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Redmage.Lucid()
  if not Player.job == NilsReactionLibrary.jobs.Redmage.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7560)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyRDM.HotBarConfig.Lucid ~= nil then
      SallyRDM.HotBarConfig.Lucid.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Redmage.Manafication()
  if not Player.job == NilsReactionLibrary.jobs.Redmage.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7560)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyRDM.HotBarConfig.Manafication ~= nil then
      SallyRDM.HotBarConfig.Manafication.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Redmage.Sprint()
  if not Player.job == NilsReactionLibrary.jobs.Redmage.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyRDM.HotBarConfig.Addle ~= nil then
      SallyRDM.HotBarConfig.Addle.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Redmage.SureCast()
  if not Player.job == NilsReactionLibrary.jobs.Redmage.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7559)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyRDM.HotBarConfig.SureCast ~= nil then
      SallyRDM.HotBarConfig.SureCast.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Redmage.SwiftCast()
  if not Player.job == NilsReactionLibrary.jobs.Redmage.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7561)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyRDM.HotBarConfig.SwiftCast ~= nil then
      SallyRDM.HotBarConfig.SwiftCast.enabled = false
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

if NilsReactionLibrary.Combat.Toggles.Redmage == nil then NilsReactionLibrary.Combat.Toggles.Redmage = {} end

function NilsReactionLibrary.Combat.Toggles.Redmage.Reset(onwipe)
  if NilsReactionLibrary.isempty(onwipe) then onwipe = false end

  if NilsReactionLibrary.WhichArc() ~= NilsReactionLibrary.arcs.SallyRDM then return false end

  -- reset hotbar
  SallyRDM.HotBarConfig.Addle.enabled = true
  SallyRDM.HotBarConfig.Corps.enabled = true
  SallyRDM.HotBarConfig.Displacement.enabled = true
  SallyRDM.HotBarConfig.Embolden.enabled = true
  SallyRDM.HotBarConfig.Engagement.enabled = true
  SallyRDM.HotBarConfig.Lucid.enabled = true
  SallyRDM.HotBarConfig.Manafication.enabled = true
  SallyRDM.HotBarConfig.Sprint.enabled = true
  SallyRDM.HotBarConfig.SureCast.enabled = true
  SallyRDM.HotBarConfig.SwiftCast.enabled = true

  -- reset quick toggles
  SallyRDM.SkillSettings.Accel.enabled = true
  SallyRDM.SkillSettings.CorpsMelee.enabled = false
  SallyRDM.SkillSettings.DelayMelee.enabled = true
  SallyRDM.SkillSettings.DualCastRaise.enabled = true
  SallyRDM.SkillSettings.Embolden.enabled = true
  SallyRDM.SkillSettings.Engagement.enabled = true
  SallyRDM.SkillSettings.Potion.enabled = onwipe == true
  SallyRDM.SkillSettings.JumpIn.enabled = true
  SallyRDM.SkillSettings.JumpOut.enabled = true
  SallyRDM.SkillSettings.Manafication.enabled = true
  SallyRDM.SkillSettings.MeleeCombo.enabled = true
  SallyRDM.SkillSettings.Opener.enabled = false
  SallyRDM.SkillSettings.RepriseMovement.enabled = true
  SallyRDM.SkillSettings.SaveCD.enabled = false
  SallyRDM.SkillSettings.SwiftRaise.enabled = true
  SallyRDM.SkillSettings.UseAOE.enabled = true

  NilsReactionLibrary.Combat.Toggles.Handler.Reset()
  return true
end

function NilsReactionLibrary.Combat.Toggles.Redmage.Acceleration(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Acceleration.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Acceleration.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.Accel.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.CorpsMelee(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.CorpsMelee.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.CorpsMelee.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.CorpsMelee.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.DelayMelee(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.DelayMelee.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.DelayMelee.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.DelayMelee.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.DualCastRaise(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.DualCastRaise.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.DualCastRaise.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.DualCastRaise.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.Embolden(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Embolden.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Embolden.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.Embolden.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.Engagement(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Engagement.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Engagement.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.Engagement.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.JumpIn(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.JumpIn.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.JumpIn.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.JumpIn.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.JumpOut(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.JumpOut.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.JumpOut.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.JumpOut.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.Manafication(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Manafication.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Manafication.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.Manafication.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.MeleeCombo(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.MeleeCombo.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.MeleeCombo.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.MeleeCombo.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.Opener(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Opener.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Opener.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.Opener.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.Potion(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Potion.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Potion.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.Potion.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.RepriseMovement(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.RepriseMovement.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.RepriseMovement.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.RepriseMovement.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.SaveCD(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.SaveCD.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.SaveCD.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.SaveCD.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.SwiftRaise(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.SwiftRaise.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.SwiftRaise.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.SwiftRaise.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Redmage.UseAOE(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Redmage.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.UseAOE.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.UseAOE.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyRDM then SallyRDM.SkillSettings.UseAOE.enabled = toggleOn return true end
  return false
end