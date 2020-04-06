-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                        This section is only for dragoon base actions and toggles                       *
-- *                                                                                                        *
-- **********************************************************************************************************

-- *************************************** Functions around actions  ****************************************
-- *                                                                                                        *
-- *                                              Actions                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************

function NilsReactionLibrary.Combat.Actions.ElusiveJump(entityID)
  if not Player.job == NilsReactionLibrary.jobs.Dragoon.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- Get target
  if NilsReactionLibrary.isempty(entityID) then entityID = 0 end
  -- check that target does not already have stun
  local target = Player:GetTarget()
  if entityID ~= nil and entityID ~= 0 then target = EntityList:Get(entityID) end
  if target == nil or not table.valid(target) then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 94)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRG.HotBarConfig.ElusiveJumpTarget ~= nil and FFXIV_Common_BotRunning then
      SallyDRG.HotBarConfig.ElusiveJumpTarget.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end


-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                                              Toggles                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************

if NilsReactionLibrary.Combat.Toggles.Dragoon == nil then NilsReactionLibrary.Combat.Toggles.Dragoon = {} end

function NilsReactionLibrary.Combat.Toggles.Dragoon.Reset(onwipe)
  if NilsReactionLibrary.isempty(onwipe) then onwipe = false end

  if NilsReactionLibrary.WhichArc() ~= NilsReactionLibrary.arcs.SallyDRG then return false end

  -- reset hotbar
  SallyDRG.HotBarConfig.Armslength.enabled = true
  SallyDRG.HotBarConfig.BattleLitany.enabled = true
  SallyDRG.HotBarConfig.BloodOfTheDragon.enabled = true
  SallyDRG.HotBarConfig.Bloodbath.enabled = true
  SallyDRG.HotBarConfig.DragonFireDive.enabled = true
  SallyDRG.HotBarConfig.DragonSight.enabled = true
  SallyDRG.HotBarConfig.ElusiveJump.enabled = true
  SallyDRG.HotBarConfig.Feint.enabled = true
  SallyDRG.HotBarConfig.Geirskogul.enabled = true
  SallyDRG.HotBarConfig.HighJump.enabled = true
  SallyDRG.HotBarConfig.LB.enabled = true
  SallyDRG.HotBarConfig.LanceCharge.enabled = true
  SallyDRG.HotBarConfig.LegSweep.enabled = true
  SallyDRG.HotBarConfig.LifeSurge.enabled = true
  SallyDRG.HotBarConfig.MirageDive.enabled = true
  SallyDRG.HotBarConfig.Potion.enabled = true
  SallyDRG.HotBarConfig.SecondWind.enabled = true
  SallyDRG.HotBarConfig.SpineShatterDive.enabled = true
  SallyDRG.HotBarConfig.Sprint.enabled = true
  SallyDRG.HotBarConfig.TrueNorth.enabled = true

  -- reset quick toggles
  SallyDRG.SkillSettings.BattleLitany.enabled = true
  SallyDRG.SkillSettings.DragonFireDive.enabled = true
  SallyDRG.SkillSettings.Dots.enabled = true
  SallyDRG.SkillSettings.DragonSight.enabled = true
  SallyDRG.SkillSettings.DragonSightWindow.enabled = true
  SallyDRG.SkillSettings.FullThrustOnly.enabled = false
  SallyDRG.SkillSettings.Geirskogul.enabled = true
  SallyDRG.SkillSettings.HighJump.enabled = true
  SallyDRG.SkillSettings.Jumps.enabled = true
  SallyDRG.SkillSettings.LanceCharge.enabled = true
  SallyDRG.SkillSettings.LifeSurge.enabled = true
  SallyDRG.SkillSettings.MirageDive.enabled = true
  SallyDRG.SkillSettings.Nastrond.enabled = true
  SallyDRG.SkillSettings.Opener.enabled = false
  SallyDRG.SkillSettings.PositionalWindow.enabled = true
  SallyDRG.SkillSettings.Potion.enabled = onwipe == true
  SallyDRG.SkillSettings.Range.enabled = true
  SallyDRG.SkillSettings.SaveCD.enabled = false
  SallyDRG.SkillSettings.SmartTrueNorth.enabled = true
  SallyDRG.SkillSettings.SpineShatterDive.enabled = true
  SallyDRG.SkillSettings.Stardiver.enabled = true
  SallyDRG.SkillSettings.UseAOE.enabled = true

  NilsReactionLibrary.Combat.Toggles.Handler.Reset()
  return true
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.BattleLitany(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.BattleLitany.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.DoTs(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.DOT.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.DOT.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.DoTs.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.DragonFireDive(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.DragonFireDive.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.DragonSight(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.DragonSight.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.DragonSightWindow(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.DragonSightWindow.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.FullThrustOnly(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.FullThrustOnly.enabled = toggleOn return true end 
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.Geirskogul(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.Geirskogul.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.HighJump(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.HighJump.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.Jumps(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Jumps.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Jumps.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.Jumps.enabled = toggleOn return true end 
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.LanceCharge(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.LanceCharge.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.LifeSurge(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.LifeSurge.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.MirageDive(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.MirageDive.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.Nastrond(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.Nastrond.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.Opener(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.Opener.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.PositionalWindow(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.PositionalWindow.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.Potion(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Potion.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Potion.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.Potion.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.Range(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.Range.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.CD(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.IsActive = toggleOn == false
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.SaveCD.enabled = toggleOn return true end

  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.SpineShatterDive(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.SpineShatterDive.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.Stardiver(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.Stardiver.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.AOE(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.AOEBlackList.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.AOEBlackList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then SallyDRG.SkillSettings.UseAOE.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Dragoon.Omni(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Dragoon.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.OmniWhiteList.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.OmniWhiteList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRG then
    SallyDRG.SkillSettings.PositionalWindow.enabled = toggleOn
    SallyDRG.SkillSettings.SmartTrueNorth.enabled = toggleOn
    return true end
  return false
end
