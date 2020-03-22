NilsReactionLibrary = {}
local self = NilsReactionLibrary
local selfs = "NilsReactionLibrary"
local selfslong = "Nils Reaction Library"
local selfshort = "NilsLibrary"

self.Info = {
  Creator = "Nil",
  Version = "1.0.0",
  StartDate = "03/19/2020",
  LastUpdate = "03/xx/2020",
  ChangeLog = {
    ["1.0.0"] = "Initial release"
  }
}

-- Settings will be reset on every reload or issued reload command.
-- Create a general onload reaction that sets these.
-- Would like to do a UI for this, just need to figure it out.
self.Settings = {
  IssueACTResetOnWipe = true,
  EnableDebug = false, -- need a ui for this, for now `NilsReactionLibrary.Settings.EnableDebug = true`
  EnableMCRSupport = false -- TODO: not supported yet, waiting on madao to add support to MCR for exteral applications
}

function self.Log(string)
  d("[Nil's Reactions] " .. string)
end

-- ******* References *******
self.jobs = {
  Paladin = {id = 19, role = "tank"},
  Monk = {id = 20, role = "dps"},
  Warrior = {id = 21, role = "tank"},
  Dragoon = {id = 22, role = "dps"},
  Bard = {id = 23, role = "dps"},
  WhiteMage = {id = 24, role = "healer"},
  BlackMage = {id = 25, role = "dps"},
  Arcanist = {id = 26, role = "dps"},
  Summoner = {id = 27, role = "dps"},
  Scholar = {id = 28, role = "healer"},
  Rogue = {id = 29, role = "dps"},
  Ninja = {id = 30, role = "dps"},
  Machinist = {id = 31, role = "dps"},
  DarkKnight = {id = 32, role = "tank"},
  Astrologian = {id = 33, role = "healer"},
  Samurai = {id = 34, role = "dps"},
  RedMage = {id = 35, role = "dps"},
  Gunbreaker = {id = 37, role = "tank"},
  Dancer = {id = 38, role = "dps"}
}

self.arcs = {
  SallyDNC = "SallyDNC", -- xSalice
  SallyNIN = "SallyNIN", -- xSalice
  SallyRDM = "SallyRDM", -- xSalice
  SallySAM = "SallySAM", -- xSalice
  SallyWAR = "SallyWAR", -- xSalice
  SallyDRK = "SallyDRK", -- xSalice
  TensorRuin = "TensorRuin", -- Riku
  TensorRequiem = "TensorRequiem", -- Riku
  TensorMagnum = "TensorMagnum" -- Riku
}

self.BurnBossList = {
  -- [541] = 1, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
  [11347] = 1, -- Alexander Prime
  [11340] = 1, -- Brute Justice
  [11342] = 2, -- Cruise Chaser
  [11335] = 2, -- Living Liquid
  [6358] = 1, -- Alexander
  [9365] = 2, -- Eden Prime savage
  [9366] = 4, -- Guardian of Paradise savage
  [10511] = 2, -- voidwalker savage
  [10604] = 2, -- Leviathan savage
  [8486] = 2, -- Leviathan savage
  [8350] = 2, -- Titan savage
  [11361] = 1, -- Serial-jointed Command Model
  [9020] = 1, -- 9s-operated walking fortress
  [9143] = 1, -- Hobbes
  [9144] = 1, -- Hobbes
  [9145] = 1, -- Hobbes
  [9147] = 1, -- Engels
  [8353] = 1, -- Innocence
  [9281] = 1, -- Ramuh --> E5S
  [9289] = 1, -- Raktapaksa --> E6S
  [9298] = 1, -- The Idol of Darkness --> E7S
  [9353] = 1 -- Shiva --> E8S
}

self.AOEBlackList = {
  --	[541] = true, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
  [7097] = true, -- Demon Chadarnook
  [7646] = true, -- Immortal Key
  [7662] = true, -- Tokkapchi
  [7663] = true, -- Mud Slime
  [7665] = true, -- Muddy Dorpokkur
  [7672] = true, -- Mist Dragon
  [7673] = true, -- Draconic Regard
  [7702] = true, -- Suzaku
  [7703] = true, -- Scarlet Plume
  [7704] = true, -- Scarlet Tail Feather
  [7725] = true, -- Scarlet Lady
  [8262] = true, -- Forgiven Obscenity
  [9181] = true, -- Lahabrea's shade
  [9182] = true, --	Igeyorhm's shade
  [9287] = true, -- Garuda
  [9288] = true -- Ifrit -->
}

self.CDBlackList = {
  --[541] = true, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
  [7129] = true, -- Doom Chimney
  [7125] = true, -- Putrid Passenger
  [7233] = true, -- Specter of the Homeland
  [7234] = true, -- Specter of the Empire
  [7646] = true, -- Immortal Key
  [7673] = true, -- Draconic Regard
  [7703] = true, -- Scarlet Plume
  [7725] = true, -- Scarlet Lady
  [8826] = true, -- Shadow of the Ancients
  [8346] = true, -- Granite Gaol
  [8342] = true, -- Arcane Sphere
  [9319] = true, -- electric aether
  -- [9320] = true, -- aqueous aether
  [9321] = true -- earthen aether
}

self.OmniList = {
  -- [541] = true, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
  [3069] = true, -- Sand Sphere
  [4815] = true, -- Arcane Sphere
  [5640] = true, -- Shinryu
  [5789] = true, -- Tail
  [6055] = true, -- Neo Exdeath
  [6257] = true, -- Magitek Pod
  [6928] = true, -- Shard of Emptiness
  [6933] = true, -- Aqua Sphere
  [6934] = true, -- Blizzard III
  [6950] = true, -- Command Tower
  [7097] = true, -- Demon Chadarnook
  [7122] = true, -- Malice
  [7126] = true, -- Ghost
  [7127] = true, -- Phantom Train
  [7202] = true, -- Daidarabotchi
  [7537] = true, -- Specter of Zenos
  [7575] = true, -- Iron Chain
  [7637] = true, -- Left Arm Unit
  [7638] = true, -- Right Arm Unit
  [7646] = true, -- Immortal Key
  [7657] = true, -- Ultima, the High Seraph
  [7694] = true, -- Dark Crystal
  [7699] = true, -- Level Checker
  [7700] = true, -- Level Checker
  [7899] = true, -- The Thunder God
  [7901] = true, -- Icewolf
  [7908] = true, -- Ruination
  [8145] = true, -- Painted Root
  [8261] = true, -- Forgiven Whimsy
  [8267] = true, -- Forgiven Apathy
  [8270] = true, -- Forgiven Revelry
  [8342] = true, -- Arcane Sphere
  [8346] = true, -- Granite Gaol
  [10643] = true, -- Granite Gaol
  [8351] = true, -- Aetherial Gaol
  [8570] = true, -- Iron Chain
  [8958] = true, -- Liar's Lyre
  [9143] = true, -- Hobbes
  [9144] = true, -- Hobbes
  [9145] = true, -- Hobbes
  [9147] = true, -- Engels
  [9020] = true, -- Engels
  [8486] = true, -- Leviathan savage
  [10604] = true, -- Leviathan savage
  [8349] = true, -- Titan Maximum savage
  [9298] = true, -- The Idol of Darkness
  [9300] = true, -- Blasphemy
  [9301] = true, -- Idolatry
  [9322] = true, -- shiva add Luminous Aether
  [9320] = true, -- shiva add aqueous
  [9321] = true, -- shiva add Earthen Aether
  [9319] = true, -- shiva add electric
  [9358] = true -- Ice Veil
}

-- **************************

-- ***** Function calls *****
function self.WhichArc()
  if gACREnabled then
    if self.Settings.EnableDebug then self.Log("which arc " ..tostring(gACRSelectedProfiles[Player.job])) end
    return gACRSelectedProfiles[Player.job] else return "" end
end

function self.Reset()
  if self.Settings.EnableDebug then self.Log("reset") end
  -- check if setting is true to issue ACT reset
  if self.Settings.IssueACTResetOnWipe then
    SendTextCommand("/echo end")
  end

  -- reset correct arc
  if Player.job == self.jobs.Ninja.id and self.WhichArc() == self.arcs.SallyNIN then
    self.ResetSallyNIN()
  end

  -- reset shared toggles
  self.Combat.Toggles.Control.Reset()
end

-- ******************************************* Helper functions by job **************************************
-- *                                                                                                        *
-- *                                    Functions specific for helping a job                                *
-- *                                                                                                        *
-- **********************************************************************************************************

-- ** Functions around buff checks **
if self.Buffs == nil then self.Buffs = {} end

function self.Buffs.Duraction(buffID, target)
  target = target or Player
  if (table.valid(target.buffs)) then
    for _, buff in pairs(target.buffs) do if buff.id == buffID then return buff.duration end end
  end
  return 0
end

if self.Buffs.Ninja == nil then self.Buffs.Ninja = {} end
function self.Buffs.Ninja.IsDoingMudra()
  if self.Settings.EnableDebug then self.Log("mudra check") end
  -- 496 Mudra, 1186 TCJ
  return HasBuff(Player.id, 496) or HasBuff(Player.id, 1186)
end

-- ** Functions around combat checks **
if self.Combat == nil then self.Combat = {} end

function self.Combat.inOpener()
  -- Tanks
  if Player.job == self.jobs.Paladin.id then
    if xivopeners_pld ~= nil and xivopeners_pld.openerStarted == true then return true end
    if Goliath ~= nil and Goliath_Toggle(1, 2) == true then return true end
    return false
  elseif Player.job == self.jobs.Warrior.id then
    if xivopeners_war ~= nil and xivopeners_war.openerStarted == true then return true end
    if self.WhichArc == self.arcs.SallyWAR and SallyWAR.SkillSettings.Opener.enabled == true then return true end
    if Goliath ~= nil and Goliath_Toggle(1, 2) == true then return true end
    return false
  elseif Player.job == self.jobs.DarkKnight.id then
    if xivopeners_drk ~= nil and xivopeners_drk.openerStarted == true then return true end
    if self.WhichArc == self.arcs.SallyDRK and SallyDRK.SkillSettings.Opener.enabled == true then return true end
    if Goliath ~= nil and Goliath_Toggle(1, 2) == true then return true end
    return false
  elseif Player.job == self.jobs.Gunbreaker.id then
    if xivopeners_gnb ~= nil and xivopeners_gnb.openerStarted == true then return true end
    if Goliath ~= nil and Goliath_Toggle(1, 2) == true then return true end
    return false
  -- Melee
  elseif Player.job == self.jobs.Ninja.id then
    if xivopeners_nin ~= nil and xivopeners_nin.openerStarted == true then return true end
    if self.WhichArc == self.arcs.SallyNIN and SallyNIN.SkillSettings.Opener.enabled == true then return true end
    return false
  elseif Player.job == self.jobs.Samurai.id then
    if xivopeners_sam ~= nil and xivopeners_sam.openerStarted == true then return true end
    if self.WhichArc == self.arcs.SallySAM and SallySAM.SkillSettings.Opener.enabled == true then return true end
    return false
  elseif Player.job == self.jobs.Dragoon.id then
    if xivopeners_drg ~= nil and xivopeners_drg.openerStarted == true then return true end
    return false
  elseif Player.job == self.jobs.Monk.id then
    if xivopeners_mnk ~= nil and xivopeners_mnk.openerStarted == true then return true end
    return false
  end

  -- TODO: add other jobs
  return false
end

-- ************************************ Functions around combat actions checks ******************************
-- *                                                                                                        *
-- *      This section is only for ability execution, actual logic will be added else where.                *
-- *                                                                                                        *
-- **********************************************************************************************************
if self.Combat.Actions == nil then self.Combat.Actions = {} end

-- ** Astrologian Only Actions ******************************************************************************
function self.Combat.Actions.CelestialIntersection()

  -- return if in opener or outside ogcd
  if self.Combat.inOpener() then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 16556)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if not Player.job == self.jobs.Astrologian.id then return false, nil, nil, false, false end
  return true, actionskill, Player.id, true, false
end
-- **********************************************************************************************************

-- ** Ninja Only Actions ************************************************************************************
function self.Combat.Actions.ShadeShift()

  -- return if in opener or outside ogcd
  if self.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 2241)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end
  -- check sch buff and HP
  -- ignore if have scholar shield or HP is above 75%
  if HasBuff(Player.id, 297) or Player.hp.percent > 75 then return false, nil, nil, false, false end

  if not Player.job == self.jobs.Ninja.id then return false, nil, nil, false, false end
  if self.Buffs.Ninja.IsDoingMudra() then return false, nil, nil, false, false end
  if self.WhichArc() == self.arcs.SallyNIN then
    SallyNIN.HotBarConfig.ShadeShift.enabled = false
    return true, nil, nil, false, false
  else
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end
-- **********************************************************************************************************

-- ** Samurai Only Actions **********************************************************************************
-- entityID can be passed in, so that the cast time can be checked.
function self.Combat.Actions.ThirdEye(entityID)
  -- return if in opener
  if self.Combat.inOpener() then return false, nil, nil, false, false end

  local target = Player:GetTarget()
  if entityID ~= nil then target = EntityList:Get(entityID) end
  if target == nil or not table.valid(target) or not target.attackable then return false, nil, nil, false, false end

  -- protection incase the timeline is to early. 
  if target.castinginfo == nil or target.castinginfo.casttime - target.castinginfo.channeltime > 2 then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7498)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if not Player.job == self.jobs.Samurai.id then return false, nil, nil, false, false end
  if self.WhichArc() == self.arcs.SallySAM then
    SallySAM.HotBarConfig.ThirdEye.enabled = false
    return true, nil, nil, false, false
  else
    return true, actionskill, Player.id, true, true
  end
end
-- *********************************************************************************************************

-- ** Monk Only Actions ************************************************************************************
function self.Combat.Actions.RiddleOfEarth()

  -- return if in opener or outside ogcd
  if self.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7394)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if not Player.job == self.jobs.Monk.id then return false, nil, nil, false, false end
  return true, actionskill, Player.id, false, false
end

function self.Combat.Actions.Mantra()

  -- return if in opener or outside ogcd
  if self.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 65)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if not Player.job == self.jobs.Monk.id then return false, nil, nil, false, false end
  return true, actionskill, Player.id, false, false
end
-- **********************************************************************************************************

-- ** Melee jobs ONLY ***************************************************************************************
function self.Combat.Actions.Feint(entityID)

  -- return if in opener or outside ogcd
  if self.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check that target does not already have fient
  local target = Player:GetTarget()
  if entityID ~= nil then target = EntityList:Get(entityID) end
  if target == nil or not table.valid(target) or not target.attackable or HasBuff(target.id, 1195) then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7549)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end
    if Player.job == self.jobs.Ninja.id then
      if self.Buffs.Ninja.IsDoingMudra() then return false, nil, nil, false, false end
    -- if sally installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.SallyNIN then
      SallyNIN.HotBarConfig.Feint.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == self.jobs.Samurai.id then
    if self.WhichArc() == self.arcs.SallySAM then
      SallySAM.HotBarConfig.Feint.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == self.jobs.Dragoon.id then
    return true, actionskill, target.id, true, false
  elseif Player.job == self.jobs.Monk.id then
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end

function self.Combat.Actions.TrueNorth()

  -- return if in opener or outside ogcd
  if self.Combat.inOpener() or HasBuff(Player.id, 1250) then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7546)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if Player.job == self.jobs.Ninja.id then
    if self.Buffs.Ninja.IsDoingMudra() then return false, nil, nil, false, false end
    -- if sally installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.SallyNIN then
      SallyNIN.HotBarConfig.TrueNorth.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == self.jobs.Samurai.id then
    if self.WhichArc() == self.arcs.SallySAM then
      SallySAM.HotBarConfig.TrueNorth.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == self.jobs.Dragoon.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Monk.id then
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end

function self.Combat.Actions.LegSweep(entityID)

  -- return if in opener or outside ogcd
  if self.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check that target does not already have stun
  local target = Player:GetTarget()
  if entityID ~= nil then target = EntityList:Get(entityID) end
  if target == nil or not table.valid(target) or not target.attackable or HasBuff(target.id, 2) then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7863)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if Player.job == self.jobs.Ninja.id then
    if self.Buffs.Ninja.IsDoingMudra() then return false, nil, nil, false, false end
    -- if sally installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.SallyNIN then
      SallyNIN.HotBarConfig.LegSweep.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == self.jobs.Samurai.id then
    if self.WhichArc() == self.arcs.SallySAM then
      SallySAM.HotBarConfig.LegSweep.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == self.jobs.Dragoon.id then
    return true, actionskill, target.id, true, false
  elseif Player.job == self.jobs.Monk.id then
    return true, actionskill, target.id, true, false
  end
  return false
end
-- *********************************************************************************************************

-- ** Tank jobs ONLY ***************************************************************************************
function self.Combat.Actions.LowBlow(entityID)

  -- return if in opener or outside ogcd
  if self.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check that target does not already have stun
  local target = Player:GetTarget()
  if entityID ~= nil then target = EntityList:Get(entityID) end
  if target == nil or not table.valid(target) or not target.attackable or HasBuff(target.id, 2) then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7540)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if Player.job == self.jobs.DarkKnight.id then
    -- if sally installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.SallyDRK then
      SallyDRK.HotBarConfig.LowBlow.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == self.jobs.Warrior.id then
    if self.WhichArc() == self.arcs.SallyWAR then
      SallyWAR.HotBarConfig.LowBlow.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == self.jobs.Paladin.id then
    return true, actionskill, target.id, true, false
  elseif Player.job == self.jobs.Gunbreaker.id then
    return true, actionskill, target.id, true, false
  end
  return false, nil, nil, false, false
end
-- **********************************************************************************************************

-- ** Melee tanks physical range ****************************************************************************
-- entityID, remaining, spellid can be passed in, if so, it will hold using arms length until that time.
-- assumes if you passing entity you also passin remaining
function self.Combat.Actions.ArmsLength(entityID, remaining, spellid)
  remaining = remaining or 4
  spellid = spellid or 0
  local interruptCast = false

  -- return if in opener or outside ogcd
  if self.Combat.inOpener()  then return false, nil, nil, false, false end

  if entityID ~= nil then
    local target = EntityList:Get(entityID)
    if target ~= nil and table.valid(target) and target.attackable and target.castinginfo ~= nil then
      -- if spellid is passed in, limit knockback to that id
      if spellid ~= 0 and target.castinginfo.castingid ~= spellid then return false, nil, nil, false, false end

      -- check if cast is x percent completed
      local remainder = target.castinginfo.casttime - target.castinginfo.channeltime
      -- if remaining is < 1.4, emergency cast.
      if remainder < 1.4 then
        interruptCast = true
      else
        if remainder > remaining then return false, nil, nil, false, false end
      end
    end
  end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7548)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if Player.job == self.jobs.Ninja.id then
    if self.Buffs.Ninja.IsDoingMudra() then return false, nil, nil, false, false end
    -- if sally installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.SallyNIN then
      SallyNIN.HotBarConfig.ArmsLength.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, interruptCast
    end
  elseif Player.job == self.jobs.Samurai.id then
    if self.WhichArc() == self.arcs.SallySAM then
      --self.Log(tostring(self.WhichArc()))
      --self.Log(tostring(SallySAM.HotBarConfig))
      SallySAM.HotBarConfig.Armslength.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, interruptCast
    end
  elseif Player.job == self.jobs.Dragoon.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.Monk.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.DarkKnight.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.Warrior.id then
    if self.WhichArc() == self.arcs.SallyWAR then
      SallyWAR.HotBarConfig.ArmsLength.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, interruptCast
    end
  elseif Player.job == self.jobs.Paladin.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.Gunbreaker.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.Bard.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.Machinist.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.Dancer.id then
    if self.WhichArc() == self.arcs.SallyDNC then
      SallyDNC.HotBarConfig.ArmsLength.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, interruptCast
    end
  end
  return false, nil, nil, false, false
end
-- **********************************************************************************************************

-- ** Healers and Casters ***********************************************************************************
-- entityID and remaining can be passed in, if so, it will hold using arms length until that time.
-- assumes if you passing entity you also passin remaining
function self.Combat.Actions.SureCast(entityID, remaining)
  remaining = remaining or 4
  local interruptCast = false

  -- return if in opener or outside ogcd
  if self.Combat.inOpener()  then return false, nil, nil, false, false end

  if entityID ~= nil then
    local target = EntityList:Get(entityID)
    if target ~= nil and table.valid(target) and target.attackable and target.castinginfo ~= nil then
      -- check if cast is x percent completed
      local remainder = target.castinginfo.casttime - target.castinginfo.channeltime
      -- if remaining is < 1.3, emergency cast.
      if remainder < 1.3 then
        interruptCast = true
      else
        if remainder > remaining then return false, nil, nil, false, false end
      end
    end
  end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7559)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if Player.job == self.jobs.WhiteMage.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.BlackMage.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.Summoner.id then
    -- if tensor installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.TensorRequiem then
      ACR_TensorRuin_Hotbar_Surecast = true
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, interruptCast
    end
  elseif Player.job == self.jobs.Scholar.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.Astrologian.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.RedMage.id then
    if self.WhichArc() == self.arcs.SallyRDM then
      SallyRDM.HotBarConfig.SureCast.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, interruptCast
    end
  elseif Player.job == self.jobs.Machinist.id then
    return true, actionskill, Player.id, true, interruptCast
  end
  return false, nil, nil, false, false
end
-- **********************************************************************************************************

-- ** Caster Actions ****************************************************************************************
function self.Combat.Actions.Addle(entityID)

  -- return if in opener or outside ogcd
  if self.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check that target does not already have de/buff
  local target = Player:GetTarget()
  if entityID ~= nil then target = EntityList:Get(entityID) end
  if target == nil or not table.valid(target) or not target.attackable or HasBuff(target.id, 1230) then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7560)
  if actionskill:IsReady(target.id) == false then return false, nil, nil, false, false end

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.TensorRequiem then
      ACR_TensorRuin_Hotbar_Addle = true
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == self.jobs.BlackMage.id then
    return true, actionskill, target.id, true, false
  elseif Player.job == self.jobs.RedMage.id then
    -- if sally installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.SallyRDM then
      SallyRDM.HotBarConfig.Addle.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  end
  return false, nil, nil, false, false
end
-- **********************************************************************************************************

-- ** ALL ***************************************************************************************************
function self.Combat.Actions.Knockback(entityID, remaining)
  if
    Player.job == self.jobs.Ninja.id or Player.job == self.jobs.Samurai.id or Player.job == self.jobs.Dragoon.id or Player.job == self.jobs.Monk.id or Player.job == self.jobs.DarkKnight.id or Player.job == self.jobs.Warrior.id or
      Player.job == self.jobs.Paladin.id or Player.job == self.jobs.Gunbreaker.id or Player.job == self.jobs.Bard.id or Player.job == self.jobs.Machinist.id or
      Player.job == self.jobs.Dancer.id
  then
    return self.Combat.Actions.ArmsLength(entityID, remaining)
  elseif Player.job == self.jobs.WhiteMage.id or Player.job == self.jobs.BlackMage.id or Player.job == self.jobs.Summoner.id or Player.job == self.jobs.Scholar.id or Player.job == self.jobs.Astrologian.id or Player.job == self.jobs.RedMage.id then
    return self.Combat.Actions.SureCast(entityID, remaining)
  end
  return false, nil, nil, false, false
end

function self.Combat.Actions.Sprint()

  -- return if in opener or outside ogcd
  if self.Combat.inOpener()  then return false, nil, nil, false, false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 3)
  if actionskill:IsReady(Player.id) == false then return false, nil, nil, false, false end

  if Player.job == self.jobs.Ninja.id then
    if self.Buffs.Ninja.IsDoingMudra() then return false, nil, nil, false, false end
    -- if sally installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.SallyNIN then
      SallyNIN.HotBarConfig.Sprint.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == self.jobs.Samurai.id then
    if self.WhichArc() == self.arcs.SallySAM then
      SallySAM.HotBarConfig.Sprint.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == self.jobs.Dragoon.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Monk.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.DarkKnight.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Warrior.id then
    if self.WhichArc() == self.arcs.SallyWAR then
      SallyWAR.HotBarConfig.Sprint.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == self.jobs.Paladin.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Gunbreaker.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Bard.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Machinist.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Dancer.id then
    if self.WhichArc() == self.arcs.SallyDNC then
      SallyDNC.HotBarConfig.Sprint.enabled = false
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == self.jobs.WhiteMage.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.BlackMage.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Summoner.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Scholar.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Astrologian.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.RedMage.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Machinist.id then
    return true, actionskill, Player.id, true, false
  end
  return false, nil, nil, false, false
end
-- **********************************************************************************************************

-- ************************************ Functions around toggle actions  ************************************
-- *                                                                                                        *
-- *      This section is only for quick toggle execution, actual logic will be added else where.           *
-- *                                                                                                        *
-- *                              Quick Toggles Default on                                                  *
-- **********************************************************************************************************
if self.Combat.Toggles == nil then self.Combat.Toggles = {} end

-- ** Toggle Control allows for controls to be added based on timeline vs general reactions
if self.Combat.Toggles.Control == nil then self.Combat.Toggles.Control = {} end

self.Combat.Toggles.Control = {
  TCJMove = { IsActive = false, LastMoved = 0, TimelineActive = false },
  AssassinateMove = { IsActive = false, LastMoved = 0, TimelineActive = false },
  BurnBoss = { IsActive = false, TimelineActive = false},
  AOEBlackList = { IsActive = false, TimelineActive = false},
  CDBlackList = { IsActive = false, TimelineActive = false},
  OmniWhiteList = { IsActive = false, TimelineActive = false},
  DreamWithinDream = { IsActive = false, TimelineActive = false},
  Kassatsu = { IsActive = false, TimelineActive = false},
  Meisui = { IsActive = false, LastMoved = 0, TimelineActive = false },
  Ninjutsu = { IsActive = false, LastMoved = 0, TimelineActive = false },
  ACRefresh = { IsActive = false, LastMoved = 0, TimelineActive = false },
  TrickAttackWindow = { IsActive = false, LastMoved = 0, TimelineActive = false },
}

function self.Combat.Toggles.Control.Reset()
  self.Combat.Toggles.Control = {
    TCJMove = { IsActive = false, LastMoved = 0, TimelineActive = false },
    AssassinateMove = { IsActive = false, LastMoved = 0, TimelineActive = false },
    BurnBoss = { IsActive = false, TimelineActive = false},
    AOEBlackList = { IsActive = false, TimelineActive = false},
    CDBlackList = { IsActive = false, TimelineActive = false},
    OmniWhiteList = { IsActive = false, TimelineActive = false},
    DreamWithinDream = { IsActive = false, TimelineActive = false},
    Kassatsu = { IsActive = false, TimelineActive = false},
    Meisui = { IsActive = false, LastMoved = 0, TimelineActive = false },
    Ninjutsu = { IsActive = false, LastMoved = 0, TimelineActive = false },
    ACRefresh = { IsActive = false, LastMoved = 0, TimelineActive = false },
    TrickAttackWindow = { IsActive = false, LastMoved = 0, TimelineActive = false },
  }
end

function self.Combat.Toggles.Control.BurnBoss()
  if Player.job == self.jobs.Ninja.id then
    return self.Combat.Toggles.Ninja.BurnBoss(true)
  elseif Player.job == self.jobs.Samurai.id then
    return true
  elseif Player.job == self.jobs.Dragoon.id then
    return true
  elseif Player.job == self.jobs.Monk.id then
    return true
  elseif Player.job == self.jobs.DarkKnight.id then
    return true
  elseif Player.job == self.jobs.Warrior.id then
    return true
  elseif Player.job == self.jobs.Paladin.id then
    return true
  elseif Player.job == self.jobs.Gunbreaker.id then
    return true
  elseif Player.job == self.jobs.Bard.id then
    return true
  elseif Player.job == self.jobs.Machinist.id then
    return true
  elseif Player.job == self.jobs.Dancer.id then
    if self.WhichArc() == self.arcs.SallyDNC then SallyDNC.SkillSettings.BurnBoss.enabled = true end
    return true
  elseif Player.job == self.jobs.WhiteMage.id then
    return true
  elseif Player.job == self.jobs.BlackMage.id then
    return true
  elseif Player.job == self.jobs.Summoner.id then
    return self.Combat.Toggles.Summoner.BurnR4(true)
  elseif Player.job == self.jobs.Scholar.id then
    return true
  elseif Player.job == self.jobs.Astrologian.id then
    return true
  elseif Player.job == self.jobs.RedMage.id then
    return true
  elseif Player.job == self.jobs.Machinist.id then
    return true
  end
  return false
end

-- ** Summoner ***********************************************************************************************
if self.Combat.Toggles.Summoner == nil then self.Combat.Toggles.Summoner = {} end

function self.Combat.Toggles.Summoner.Reset()
  if self.WhichArc() == self.arcs.TensorRuin then
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

    self.Combat.Toggles.Control.Reset()
  end

  return true
end

-- Toggles DWT, Summon Bahamut, and FBT. Use this to hold major cooldowns before phase transitions. In the case of TensorRuin, if you turn off CDs while in DWT for example, it will auto extend dwt to maximum duration and won't summon bahamut until after.
function self.Combat.Toggles.Summoner.CD(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_CD = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.PetCD(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_PetCD = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.AOE(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_AOE = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.Fester(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_Fester = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.DWT(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_DW = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.Demi(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_Demi = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.Aetehrpact(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_Aetherpact = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.EnergyDrain(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_EnergyDrain = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.DoTs(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_DoTs = toggleOn return true end
  end
  return false
end

-- Burn Boss
function self.Combat.Toggles.Summoner.BurnR4(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_BurnR4 = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.HoldAOE(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_HoldAOE = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.SmartAOE(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_SmartAOE = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.SmartDoT(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_SmartDoT = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.SmartBane(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_SmartBane = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.Potion(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_Potion = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.HardRes(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_HardRes = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.SwiftRes(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_SwiftRes = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Summoner.SwiftR3(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Summoner.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.TensorRequiem then ACR_TensorRuin_SwiftR3 = toggleOn return true end
  end
  return false
end

-- **********************************************************************************************************

-- ** Ninja *************************************************************************************************
if self.Combat.Toggles.Ninja == nil then self.Combat.Toggles.Ninja = {} end

function self.Combat.Toggles.Ninja.Reset()
  if self.WhichArc() == self.arcs.SallyNIN then
    SallyNIN.SkillSettings.Opener.enabled = false
    SallyNIN.SkillSettings.SaveCD.enabled = false
    SallyNIN.SkillSettings.Range.enabled = false
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
    SallyNIN.SkillSettings.DWD.enabled = false
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

    self.Combat.Toggles.Control.Reset()

  end
  return true
end

function self.Combat.Toggles.Ninja.Opener(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Opener.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.SaveCD(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.SaveCD.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.Range(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Range.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.Omni(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Omni.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.BurnBoss(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.BurnBoss.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.Potion(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Potion.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.UseAOE(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.UseAOE.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.TCJ(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.TCJ.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.Meisui(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Meisui.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.TrickAttack(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.TrickAttack.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.Ninjutsu(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Ninjutsu.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.Bushin(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Bushin.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.Ninki(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Ninki.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.Assassinate(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Assassinate.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.DWD(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.DWD.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.Mug(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Mug.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.Kassatsu(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Kassatsu.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.Doton(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.Doton.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.TrueNorth(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.TrueNorth.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.ACRefresh(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.ACRefresh.enabled = toggleOn return true end
  end
  return false
end

function self.Combat.Toggles.Ninja.ShadowFang(toggleOn)
  toggleOn = toggleOn or true

  if Player.job == self.jobs.Ninja.id then
    -- if tensor installed
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.SkillSettings.ShadowFang.enabled = toggleOn return true end
  end
  return false
end

if self.Combat.Toggles.Ninja.Helpers == nil then self.Combat.Toggles.Ninja.Helpers = {} end

function self.Combat.Toggles.Ninja.Helpers.TurnOffTrickAttackWindow(byTimeline, allowShadowfang)
  if self.Settings.EnableDebug then self.Log("turn off trick attack") end
  
  -- set defaults in case they are not passed in
  byTimeline = byTimeline or false
  allowShadowfang = allowShadowfang or false

  -- set Toggle control
  self.Combat.Toggles.Control.TrickAttackWindow.IsActive = true
  self.Combat.Toggles.Control.TrickAttackWindow.TimelineActive = byTimeline
  self.Combat.Toggles.Control.TrickAttackWindow.LastCheck = Now()

  if SallyNIN ~= nil and Player.job == self.jobs.Ninja.id and self.WhichArc() == self.arcs.SallyNIN then
    SallyNIN.SkillSettings.SaveCD.enabled = true
    SallyNIN.SkillSettings.TrickAttack.enabled = false
    SallyNIN.SkillSettings.Bushin.enabled = false
    if allowShadowfang == false then SallyNIN.SkillSettings.ShadowFang.enabled = false end
  end
end

function self.Combat.Toggles.Ninja.Helpers.TurnOnTrickAttackWindow()
  if self.Settings.EnableDebug then self.Log("turn on trick attack") end
  self.Combat.Toggles.Control.TrickAttackWindow.IsActive = false
  self.Combat.Toggles.Control.TrickAttackWindow.TimelineActive = false

  if SallyNIN ~= nil and Player.job == self.jobs.Ninja.id and self.WhichArc() == self.arcs.SallyNIN then
    SallyNIN.SkillSettings.SaveCD.enabled = false
    SallyNIN.SkillSettings.TrickAttack.enabled = true
    SallyNIN.SkillSettings.ShadowFang.enabled = true
    SallyNIN.SkillSettings.Bushin.enabled = true
    SallyNIN.SkillSettings.Ninjutsu.enabled = true
  end
end

function self.Combat.Toggles.Ninja.Helpers.TurnOffTCJ(byTimeline)
  -- set defaults in case they are not passed in
  byTimeline = byTimeline or false

  if self.Settings.EnableDebug then self.Log("turn off tcj by timeline=" ..tostring(byTimeline)) end

  -- set Toggle control
  self.Combat.Toggles.Control.TCJMove.IsActive = true
  self.Combat.Toggles.Control.TimelineActive = byTimeline
  self.Combat.Toggles.Control.LastMoved = Now()

  if SallyNIN ~= nil and Player.job == self.jobs.Ninja.id and self.WhichArc() == self.arcs.SallyNIN then
    SallyNIN.SkillSettings.TCJ.enabled = false
  end
end

function self.Combat.Toggles.Ninja.Helpers.TurnOnTCJ()
  if self.Settings.EnableDebug then self.Log("turn on tcj") end
  -- set toggle control
  self.Combat.Toggles.Control.IsActive = false
  self.Combat.Toggles.Control.TimelineActive = false

  if SallyNIN ~= nil and Player.job == self.jobs.Ninja.id and self.WhichArc() == self.arcs.SallyNIN then
    SallyNIN.SkillSettings.TCJ.enabled = true
  end
end


-- **********************************************************************************************************

-- ** start addon
function self.Initialize()
  self.Log("Library Loaded")
end

-- **********************************************************************************************************

RegisterEventHandler("Module.Initalize", self.Initialize, selfslong)
