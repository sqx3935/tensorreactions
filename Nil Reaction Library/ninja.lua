-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                        This section is only for ninja base actions and toggles                         *
-- *                                                                                                        *
-- **********************************************************************************************************



-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                                              Toggles                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************

if NilsReactionLibrary.Combat.Toggles.Ninja == nil then NilsReactionLibrary.Combat.Toggles.Ninja = {} end

function NilsReactionLibrary.Combat.Toggles.Ninja.Reset()
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then
    SallyNIN.SkillSettings.Opener.enabled = false
    SallyNIN.SkillSettings.SaveCD.enabled = false
    SallyNIN.SkillSettings.Range.enabled = true
    SallyNIN.SkillSettings.Omni.enabled = false
    SallyNIN.SkillSettings.BurnBoss.enabled = false
    -- SallyNIN.SkillSettings.Potion.enabled = true
    SallyNIN.SkillSettings.UseAOE.enabled = true
    SallyNIN.SkillSettings.TCJ.enabled = true
    SallyNIN.SkillSettings.Meisui.enabled = true
    SallyNIN.SkillSettings.TrickAttack.enabled = true
    SallyNIN.SkillSettings.Ninjutsu.enabled = true
    SallyNIN.SkillSettings.Bushin.enabled = true
    SallyNIN.SkillSettings.Ninki.enabled = true
    SallyNIN.SkillSettings.Assassinate.enabled = true
    SallyNIN.SkillSettings.DWD.enabled = true
    SallyNIN.SkillSettings.Mug.enabled = true
    SallyNIN.SkillSettings.Kassatsu.enabled = true
    SallyNIN.SkillSettings.Doton.enabled = true
    SallyNIN.SkillSettings.TrueNorth.enabled = true
    SallyNIN.SkillSettings.ACRefresh.enabled = true
    SallyNIN.SkillSettings.ShadowFang.enabled = true

    -- Hotbar
    SallyNIN.HotBarConfig.Armslength.enabled = true
    SallyNIN.HotBarConfig.TrueNorth.enabled = true
    SallyNIN.HotBarConfig.Feint.enabled = true
    SallyNIN.HotBarConfig.Bloodbath.enabled = true
    SallyNIN.HotBarConfig.SecondWind.enabled = true
    SallyNIN.HotBarConfig.ShadeShift.enabled = true
    SallyNIN.HotBarConfig.Kassatsu.enabled = true
    SallyNIN.HotBarConfig.TCJ.enabled = true
    SallyNIN.HotBarConfig.Meisui.enabled = true
    SallyNIN.HotBarConfig.Huton.enabled = true
    SallyNIN.HotBarConfig.Doton.enabled = true
    SallyNIN.HotBarConfig.Suiton.enabled = true
    SallyNIN.HotBarConfig.Raiton.enabled = true
    SallyNIN.HotBarConfig.Katon.enabled = true
    SallyNIN.HotBarConfig.Sprint.enabled = true
    SallyNIN.HotBarConfig.ArmorCrush.enabled = true
    SallyNIN.HotBarConfig.LegSweep.enabled = true
    SallyNIN.HotBarConfig.LB.enabled = true

    NilsReactionLibrary.Combat.Toggles.Handler.Reset()

  end
  return true
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Opener(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Opener.enabled = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.CD(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.TimelineActive = byTimeline and toggleOn == false
  end

    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.SaveCD.enabled = toggleOn return true end

  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Range(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Range.enabled = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Omni(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.OmniWhiteList.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.OmniWhiteList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Omni.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.BurnBoss(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.TimelineActive = byTimeline and toggleOn == false
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.LastMoved = Now()
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.BurnBoss.enabled = toggleOn return true end

  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Potion(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Potion.enabled = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.AOE(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.AOEBlackList.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.AOEBlackList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.UseAOE.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.TCJ(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.TCJMove.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.TCJMove.TimelineActive = byTimeline and toggleOn == false
    NilsReactionLibrary.Combat.Toggles.Control.TCJMove.LastMoved = Now()
  end

    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.TCJ.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Meisui(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Meisui.enabled = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.TrickAttack(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.TrickAttack.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.TrickAttack.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.TrickAttack.enabled = toggleOn return true end
 
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Ninjutsu(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Ninjutsu.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Ninjutsu.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Ninjutsu.enabled = toggleOn return true end

  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Bunshin(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Bunshin.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Bunshin.TimelineActive = byTimeline and toggleOn == false
  end

    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Bushin.enabled = toggleOn return true end

  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Ninki(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Ninki.enabled = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Assassinate(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Assassinate.enabled = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.DWD(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.DWD.enabled = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Mug(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Mug.enabled = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Kassatsu(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Kassatsu.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Kassatsu.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Kassatsu.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Doton(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.Doton.enabled = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.TrueNorth(toggleOn)
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if Player.job == NilsReactionLibrary.jobs.Ninja.id then
    -- if tensor installed
    if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.TrueNorth.enabled = toggleOn return true end
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.ACRefresh(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end
  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.ACRefresh.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.ShadowFang(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.DOT.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.DOT.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then SallyNIN.SkillSettings.ShadowFang.enabled = toggleOn return true end

  return false
end

if NilsReactionLibrary.Combat.Toggles.Ninja.Helpers == nil then NilsReactionLibrary.Combat.Toggles.Ninja.Helpers = {} end

function NilsReactionLibrary.Combat.Toggles.Ninja.Helpers.TurnOffTrickAttackWindow(byTimeline, allowShadowfang)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  -- set defaults in case they are not passed in
  if NilsReactionLibrary.isempty(allowShadowfang) then allowShadowfang = false end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- set Toggle control
  NilsReactionLibrary.Combat.Toggles.Control.TrickAttackWindow.IsActive = true
  NilsReactionLibrary.Combat.Toggles.Control.TrickAttackWindow.TimelineActive = byTimeline
  NilsReactionLibrary.Combat.Toggles.Control.TrickAttackWindow.LastCheck = Now()

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then
    NilsReactionLibrary.Combat.Toggles.Ninja.CD(true, byTimeline)
    NilsReactionLibrary.Combat.Toggles.Ninja.TrickAttack(false, byTimeline)
    NilsReactionLibrary.Combat.Toggles.Ninja.Kassatsu(false, byTimeline)

    if allowShadowfang == false then NilsReactionLibrary.Combat.Toggles.Ninja.ShadowFang(false, byTimeline) end
  end
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Helpers.TurnOnTrickAttackWindow(byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

    -- set defaults in case they are not passed in
    if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  NilsReactionLibrary.Combat.Toggles.Control.TrickAttackWindow.IsActive = false
  NilsReactionLibrary.Combat.Toggles.Control.TrickAttackWindow.TimelineActive = byTimeline

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyNIN then
    NilsReactionLibrary.Combat.Toggles.Ninja.CD(false, byTimeline)
    NilsReactionLibrary.Combat.Toggles.Ninja.TrickAttack(true, byTimeline)
    NilsReactionLibrary.Combat.Toggles.Ninja.ShadowFang(true, byTimeline)
    NilsReactionLibrary.Combat.Toggles.Ninja.Bunshin(true, byTimeline)
    NilsReactionLibrary.Combat.Toggles.Ninja.Ninjutsu(true, byTimeline)
    NilsReactionLibrary.Combat.Toggles.Ninja.Kassatsu(true, byTimeline)
  end
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Helpers.TCJMoveDetection()
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id or Player.incombat == false then return false end

  -- always want this on for openers
  if NilsReactionLibrary.Combat.inOpener() then return NilsReactionLibrary.Combat.Toggles.Ninja.TCJ(true, false) end

  -- if set by timeline reaction, ignore
  if NilsReactionLibrary.Combat.Toggles.Control.TCJMove.IsActive == true and NilsReactionLibrary.Combat.Toggles.Control.TCJMove.TimelineActive == true then return false end

  if Player:IsMoving() then
    NilsReactionLibrary.Combat.Toggles.Control.TCJMove.IsActive = true
    NilsReactionLibrary.Combat.Toggles.Control.TCJMove.LastMoved = Now()
    NilsReactionLibrary.Combat.Toggles.Ninja.TCJ(false, false)
    return true
  end

  if NilsReactionLibrary.Combat.Toggles.Control.TCJMove.LastMoved ~= nil and TimeSince(NilsReactionLibrary.Combat.Toggles.Control.TCJMove.LastMoved) > 1200 then
    NilsReactionLibrary.Combat.Toggles.Control.TCJMove.IsActive = false
    NilsReactionLibrary.Combat.Toggles.Ninja.TCJ(true, false)
    return true
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Ninja.Helpers.AssassinateMoveDetection()
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id or Player.incombat == false then return false end

  -- always want this on for openers
  if NilsReactionLibrary.Combat.inOpener() then return NilsReactionLibrary.Combat.Toggles.Ninja.Assassinate(true) end

  if Player:IsMoving() then
    NilsReactionLibrary.Combat.Toggles.Control.AssassinateMove.IsActive = true
    NilsReactionLibrary.Combat.Toggles.Control.AssassinateMove.LastMoved = Now()
    NilsReactionLibrary.Combat.Toggles.Ninja.Assassinate(false)
    return true
  end

  if NilsReactionLibrary.Combat.Toggles.Control.AssassinateMove.LastMoved ~= nil and TimeSince(NilsReactionLibrary.Combat.Toggles.Control.AssassinateMove.LastMoved) > 1200 then
    NilsReactionLibrary.Combat.Toggles.Control.AssassinateMove.IsActive = false
    NilsReactionLibrary.Combat.Toggles.Ninja.Assassinate(true)
    return true
  end
  return false
end

-- Attempt to keep DWD in alignment with Trick Window
function NilsReactionLibrary.Combat.Toggles.Ninja.Helpers.DwDAlignment()
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id or NilsReactionLibrary.Buffs.Ninja.IsDoingMudra() then return false end

  -- always want this on for openers
  if NilsReactionLibrary.Combat.inOpener() then NilsReactionLibrary.Combat.Toggles.Ninja.DWD(true) return false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then NilsReactionLibrary.Combat.Toggles.Ninja.DWD(false) return false end

  -- hold dwd until own vulnerability is on target
  if HasBuff(target.id, 638, 0, 0, Player.id) then
    NilsReactionLibrary.Combat.Toggles.Ninja.DWD(true)
  else
    NilsReactionLibrary.Combat.Toggles.Ninja.DWD(false)
  end
  return true
end

-- Attempt to keep Kassatsu in alignment with Trick Window
function NilsReactionLibrary.Combat.Toggles.Ninja.Helpers.KassatsuAlignment()

  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id or NilsReactionLibrary.Buffs.Ninja.IsDoingMudra() then return false end

  -- always want this on for openers
  if NilsReactionLibrary.Combat.inOpener() then NilsReactionLibrary.Combat.Toggles.Ninja.Kassatsu(true) return false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 2258)
  if actionskill.cdmax - actionskill.cd <= 15 then
    NilsReactionLibrary.Combat.Toggles.Ninja.Kassatsu(true)
  else
    NilsReactionLibrary.Combat.Toggles.Ninja.Kassatsu(false)
  end

  return true
end

-- Attempt to keep Kassatsu in alignment with Trick Window
function NilsReactionLibrary.Combat.Toggles.Ninja.Helpers.ACRefreshAlignment()
  if Player.job ~= NilsReactionLibrary.jobs.Ninja.id then return false end

  -- always want this on for openers
  if NilsReactionLibrary.Combat.inOpener() then return NilsReactionLibrary.Combat.Toggles.Ninja.ACRefresh(true) end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then NilsReactionLibrary.Combat.Toggles.Ninja.ACRefresh(true) return true end

  -- if under trick and huton is high enough
  if HasBuff(target.id, 638, 0, 0, Player.id) and NilsReactionLibrary.data.gauges.huton >= 15000 then NilsReactionLibrary.Combat.Toggles.Ninja.ACRefresh(false) return true end

  -- default to stay on
  NilsReactionLibrary.Combat.Toggles.Ninja.ACRefresh(true)
  return true
end