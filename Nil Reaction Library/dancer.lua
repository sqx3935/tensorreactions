-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                        This section is only for Dancer base actions and toggles                       *
-- *                                                                                                        *
-- **********************************************************************************************************

-- *************************************** Functions around actions  ****************************************
-- *                                                                                                        *
-- *                                              Actions                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************
if NilsReactionLibrary.Combat.Actions.Dancer == nil then NilsReactionLibrary.Combat.Actions.Dancer = {} end

function NilsReactionLibrary.Combat.Actions.Dancer.CuringWaltz()
  if not Player.job == NilsReactionLibrary.jobs.Dancer.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16015)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDNC.HotBarConfig.CuringWaltz ~= nil then
      SallyDNC.HotBarConfig.CuringWaltz.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Dancer.Devilment()
  if not Player.job == NilsReactionLibrary.jobs.Dancer.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16011)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDNC.HotBarConfig.Devilment ~= nil then
      SallyDNC.HotBarConfig.Devilment.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Dancer.EnAvant()
  if not Player.job == NilsReactionLibrary.jobs.Dancer.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16010)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDNC.HotBarConfig.EnAvant ~= nil then
      SallyDNC.HotBarConfig.EnAvant.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Dancer.Flourish()
  if not Player.job == NilsReactionLibrary.jobs.Dancer.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16013)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDNC.HotBarConfig.Flourish ~= nil then
      SallyDNC.HotBarConfig.Flourish.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Dancer.HeadGaze()
  if not Player.job == NilsReactionLibrary.jobs.Dancer.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7551)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDNC.HotBarConfig.HeadGaze ~= nil then
      SallyDNC.HotBarConfig.HeadGaze.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Dancer.Improv()
  if not Player.job == NilsReactionLibrary.jobs.Dancer.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16014)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDNC.HotBarConfig.Improv ~= nil then
      SallyDNC.HotBarConfig.Improv.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Dancer.LB()
  if not Player.job == NilsReactionLibrary.jobs.Dancer.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 4238)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDNC.HotBarConfig.LB ~= nil then
      SallyDNC.HotBarConfig.LB.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Dancer.SecondWind()
  if not Player.job == NilsReactionLibrary.jobs.Dancer.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7541)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDNC.HotBarConfig.SecondWind ~= nil then
      SallyDNC.HotBarConfig.SecondWind.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Dancer.ShieldSamba()
  if not Player.job == NilsReactionLibrary.jobs.Dancer.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16012)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDNC.HotBarConfig.ShieldSamba ~= nil then
      SallyDNC.HotBarConfig.ShieldSamba.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Dancer.Sprint()
  if not Player.job == NilsReactionLibrary.jobs.Dancer.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDNC.HotBarConfig.Sprint ~= nil then
      SallyDNC.HotBarConfig.Sprint.enabled = false
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

if NilsReactionLibrary.Combat.Toggles.Dancer == nil then NilsReactionLibrary.Combat.Toggles.Dancer = {} end

function NilsReactionLibrary.Combat.Toggles.Dancer.Reset(onwipe)
  if NilsReactionLibrary.isempty(onwipe) then onwipe = false end

  if NilsReactionLibrary.WhichArc() ~= NilsReactionLibrary.arcs.SallyDNC then return false end

  -- reset hotbar
  SallyDNC.HotBarConfig.Armslength.enabled = true
  SallyDNC.HotBarConfig.CuringWaltz.enabled = true
  SallyDNC.HotBarConfig.Devilment.enabled = true
  SallyDNC.HotBarConfig.EnAvant.enabled = true
  SallyDNC.HotBarConfig.Flourish.enabled = true
  SallyDNC.HotBarConfig.HeadGaze.enabled = true
  SallyDNC.HotBarConfig.Improv.enabled = true
  SallyDNC.HotBarConfig.LB.enabled = true
  SallyDNC.HotBarConfig.SecondWind.enabled = true
  SallyDNC.HotBarConfig.ShieldSamba.enabled = true
  SallyDNC.HotBarConfig.Sprint.enabled = true

  -- reset quick toggles
  SallyDNC.SkillSettings.AutoPartner.enabled = true
  SallyDNC.SkillSettings.BurnCD.enabled = false
  SallyDNC.SkillSettings.Devilment.enabled = true
  SallyDNC.SkillSettings.FanDance3IsAOE.enabled = true
  SallyDNC.SkillSettings.Flourish.enabled = true
  SallyDNC.SkillSettings.Opener.enabled = false
  SallyDNC.SkillSettings.Potion.enabled = onwipe == true
  SallyDNC.SkillSettings.SaberDance.enabled = true
  SallyDNC.SkillSettings.SaberIsAOE.enabled = true
  SallyDNC.SkillSettings.SaveCD.enabled = false
  SallyDNC.SkillSettings.StandardStep.enabled = true
  SallyDNC.SkillSettings.TechStep.enabled = true
  SallyDNC.SkillSettings.UseAOE.enabled = true

  NilsReactionLibrary.Combat.Toggles.Handler.Reset()
  return true
end

function NilsReactionLibrary.Combat.Toggles.Dancer.AutoPartner(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.AutoPartner.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.AutoPartner.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.AutoPartner.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.BurnBoss(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.BurnCD.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.Devilment(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Devilment.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Devilment.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.Devilment.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.FanDance3IsAOE(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.FanDance3IsAOE.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.FanDance3IsAOE.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.FanDance3IsAOE.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.Flourish(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Flourish.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Flourish.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.Flourish.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.Opener(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Opener.IsActive = toggleOn == false -- set active if suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Opener.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.Opener.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.Potion(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Potion.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Potion.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.Potion.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.SaberDance(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.SaberDance.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.SaberDance.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.SaberDance.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.SaberIsAOE(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.SaberIsAOE.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.SaberIsAOE.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.SaberIsAOE.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.CD(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.IsActive = toggleOn == false -- set active if suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.SaveCD.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.StandardStep(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.StandardStep.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.StandardStep.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.StandardStep.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.TechStep(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.TechStep.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.TechStep.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.TechStep.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dancer.UseAOE(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dancer.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.UseAOE.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.UseAOE.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDNC then SallyDNC.SkillSettings.UseAOE.enabled = toggleOn return true end
  return false
end


