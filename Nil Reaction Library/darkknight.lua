-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                        This section is only for Darkknight base actions and toggles                       *
-- *                                                                                                        *
-- **********************************************************************************************************

-- *************************************** Functions around actions  ****************************************
-- *                                                                                                        *
-- *                                              Actions                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************
if NilsReactionLibrary.Combat.Actions.Darkknight == nil then NilsReactionLibrary.Combat.Actions.Darkknight = {} end

function NilsReactionLibrary.Combat.Actions.Darkknight.Armslength()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7548)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.Armslength ~= nil then
      SallyDRK.HotBarConfig.Armslength.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.BloodWeapon()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3625)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.BloodWeapon ~= nil then
      SallyDRK.HotBarConfig.BloodWeapon.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.DarkMind()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3634)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.DarkMind ~= nil then
      SallyDRK.HotBarConfig.DarkMind.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.DarkMissionary()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16471)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.DarkMissionary ~= nil then
      SallyDRK.HotBarConfig.DarkMissionary.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.Delirium()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7390)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.Delirium ~= nil then
      SallyDRK.HotBarConfig.Delirium.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.EdgeOfShadow()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16470)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.EdgeOfShadow ~= nil then
      SallyDRK.HotBarConfig.EdgeOfShadow.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.FloodOfShadow()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16469)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.FloodOfShadow ~= nil then
      SallyDRK.HotBarConfig.FloodOfShadow.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.Interject()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7538)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.Interject ~= nil then
      SallyDRK.HotBarConfig.Interject.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.LivingDead()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3638)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.LivingDead ~= nil then
      SallyDRK.HotBarConfig.LivingDead.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.LivingShadow()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16472)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.LivingShadow ~= nil then
      SallyDRK.HotBarConfig.LivingShadow.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.LowBlow()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7540)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.LowBlow ~= nil then
      SallyDRK.HotBarConfig.LowBlow.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.Plunge()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3640)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.Plunge ~= nil then
      SallyDRK.HotBarConfig.Plunge.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.Provoke()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7533)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.Provoke ~= nil then
      SallyDRK.HotBarConfig.Provoke.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.Rampart()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7531)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.Rampart ~= nil then
      SallyDRK.HotBarConfig.Rampart.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.Reprisal()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7535)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.Reprisal ~= nil then
      SallyDRK.HotBarConfig.Reprisal.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.SaltedEarth()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3639)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.SaltedEarth ~= nil then
      SallyDRK.HotBarConfig.SaltedEarth.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  else
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.ShadowWall()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3636)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.ShadowWall ~= nil then
      SallyDRK.HotBarConfig.ShadowWall.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.Shirks()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7537)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.Shirks ~= nil then
      SallyDRK.HotBarConfig.Shirks.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.Sprint()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.Sprint ~= nil then
      SallyDRK.HotBarConfig.Sprint.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function NilsReactionLibrary.Combat.Actions.Darkknight.TBN()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7393)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.TBN ~= nil then
      SallyDRK.HotBarConfig.TBN.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

-- TODO : find off tank and pass back the correct target id
function NilsReactionLibrary.Combat.Actions.Darkknight.TBN_OT()
  if not Player.job == NilsReactionLibrary.jobs.Darkknight.id then return false, nil, nil, false, false end

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7393)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then
    -- use hotbar only if bot is running, otherwise use actionskill
    if SallyDRK.HotBarConfig.TBN_OT ~= nil then
      SallyDRK.HotBarConfig.TBN_OT.enabled = false
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

if NilsReactionLibrary.Combat.Toggles.Darkknight == nil then NilsReactionLibrary.Combat.Toggles.Darkknight = {} end

function NilsReactionLibrary.Combat.Toggles.Darkknight.Reset(onwipe)
  if NilsReactionLibrary.isempty(onwipe) then onwipe = false end

  if NilsReactionLibrary.WhichArc() ~= NilsReactionLibrary.arcs.SallyDRK then return false end

  -- reset hotbar
  SallyDRK.HotBarConfig.Armslength.enabled = true
  SallyDRK.HotBarConfig.BloodWeapon.enabled = true
  SallyDRK.HotBarConfig.DarkMind.enabled = true
  SallyDRK.HotBarConfig.DarkMissionary.enabled = true
  SallyDRK.HotBarConfig.Delirium.enabled = true
  SallyDRK.HotBarConfig.EdgeOfShadow.enabled = true
  SallyDRK.HotBarConfig.FloodOfShadow.enabled = true
  SallyDRK.HotBarConfig.Interject.enabled = true
  SallyDRK.HotBarConfig.LivingDead.enabled = true
  SallyDRK.HotBarConfig.LivingShadow.enabled = true
  SallyDRK.HotBarConfig.LowBlow.enabled = true
  SallyDRK.HotBarConfig.Plunge.enabled = true
  SallyDRK.HotBarConfig.Provoke.enabled = true
  SallyDRK.HotBarConfig.Rampart.enabled = true
  SallyDRK.HotBarConfig.Reprisal.enabled = true
  SallyDRK.HotBarConfig.SaltedEarth.enabled = true
  SallyDRK.HotBarConfig.ShadowWall.enabled = true
  SallyDRK.HotBarConfig.Shirks.enabled = true
  SallyDRK.HotBarConfig.Sprint.enabled = true
  SallyDRK.HotBarConfig.TBN.enabled = true
  SallyDRK.HotBarConfig.TBN_OT.enabled = true

  -- reset quick toggles
  SallyDRK.SkillSettings.AbyssalDrain.enabled = true
  SallyDRK.SkillSettings.BloodWeapon.enabled = true
  SallyDRK.SkillSettings.BurnBoss.enabled = false
  SallyDRK.SkillSettings.CarveAndSplit.enabled = true
  SallyDRK.SkillSettings.Delirium.enabled = true
  SallyDRK.SkillSettings.LivingShadow.enabled = true
  SallyDRK.SkillSettings.Opener.enabled = false
  SallyDRK.SkillSettings.Potion.enabled = onwipe == true
  SallyDRK.SkillSettings.Plunge.enabled = true
  SallyDRK.SkillSettings.Range.enabled = true
  SallyDRK.SkillSettings.SaveCD.enabled = false
  SallyDRK.SkillSettings.SaltedEarth.enabled = true
  SallyDRK.SkillSettings.TankStance.enabled = true
  SallyDRK.SkillSettings.UseAOE.enabled = true

  NilsReactionLibrary.Combat.Toggles.Handler.Reset()
  return true
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.AbyssalDrain(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.AbyssalDrain.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.AbyssalDrain.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.AbyssalDrain.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.BloodWeapon(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.BloodWeapon.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.BloodWeapon.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.BloodWeapon.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.BurnBoss(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.BurnBoss.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.BurnBoss.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.CarveAndSplit(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.CarveAndSplit.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.CarveAndSplit.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.CarveAndSplit.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.Delirium(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Delirium.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Delirium.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.Delirium.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.LivingShadow(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.LivingShadow.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.LivingShadow.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.LivingShadow.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.Opener(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Opener.IsActive = toggleOn == false -- set active if suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Opener.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.Opener.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.Potion(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Potion.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Potion.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.Potion.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.Plunge(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Plunge.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Plunge.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.Plunge.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.Range(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.Range.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.Range.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.Range.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.CD(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.IsActive = toggleOn == false -- set active if suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.SaveCD.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.SaltedEarth(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.SaltedEarth.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.SaltedEarth.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.SaltedEarth.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.TankStance(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.TankStance.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.TankStance.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.TankStance.enabled = toggleOn return true end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Darkknight.UseAOE(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Darkknight.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.UseAOE.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.UseAOE.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.SallyDRK then SallyDRK.SkillSettings.UseAOE.enabled = toggleOn return true end
  return false
end


