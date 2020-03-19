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
  SallyDRK = "SallyDRK" -- xSalice
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
  self.ResetToggles()
end

function self.ResetToggles()
  self.Toggles = {
    TCJMove = {IsActive = false, LastMoved = 0, TimelineActive = false}, -- Ninja
    AssassinateMove = {IsActive = false, LastMoved = 0, TimelineActive = false}, -- Ninja
    DreamWithinDream = {IsActive = false, LastCheck = 0, TimelineActive = false}, -- Ninja
    Kassatsu = {IsActive = false, LastCheck = 0, TimelineActive = false}, -- Ninja
    Meisui = {IsActive = false, LastCheck = 0, TimelineActive = false}, -- Ninja
    Ninjutsu = {IsActive = false, LastCheck = 0, TimelineActive = false}, -- Ninja
    ACRefresh = {IsActive = false, LastCheck = 0, TimelineActive = false}, -- Ninja
    TrickAttackWindow = {IsActive = false, LastCheck = 0, TimelineActive = false}, -- Ninja
    BurnBoss = {IsActive = false, LastCheck = 0, TimelineActive = false}, -- xSalice arcs
    AOEBlackList = {IsActive = false, LastCheck = 0, TimelineActive = false},
    CDBlackList = {IsActive = false, LastCheck = 0, TimelineActive = false},
    OmniWhiteList = {IsActive = false, LastCheck = 0, TimelineActive = false}
  }
end

function self.ResetSallyNIN()
  -- reset quick toggles to default
  SallyNIN.SkillSettings.Opener.enabled = false
  SallyNIN.SkillSettings.SaveCD.enabled = false
  SallyNIN.SkillSettings.Range.enabled = false
  SallyNIN.SkillSettings.Omni.enabled = false
  SallyNIN.SkillSettings.BurnBoss.enabled = false
  -- SallyNIN.SkillSettings.Potion.enabled = true -- currently disable, alot of folks like this off for prog
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

  -- reset hotbar
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
  SallyNIN.HotBarConfig.Huton.enabled = true
end

-- ** Functions for ninja arcs only **
if self.Ninja == nil then self.Ninja = {} end

function self.Ninja.TurnOffTrickAttackWindow(byTimeline, allowShadowfang)
  if self.Settings.EnableDebug then self.Log("turn off trick attack") end
  -- set defaults in case they are not passed in
  byTimeline = byTimeline or false
  allowShadowfang = allowShadowfang or false

  -- set Toggle control
  self.Toggles.TrickAttackWindow.IsActive = true
  self.Toggles.TrickAttackWindow.TimelineActive = byTimeline
  self.Toggles.TrickAttackWindow.LastCheck = Now()

  if SallyNIN ~= nil and Player.job == self.jobs.Ninja.id and self.WhichArc() == self.arcs.SallyNIN then
    SallyNIN.SkillSettings.SaveCD.enabled = true
    SallyNIN.SkillSettings.TrickAttack.enabled = false
    SallyNIN.SkillSettings.Bushin.enabled = false
    if allowShadowfang == false then SallyNIN.SkillSettings.ShadowFang.enabled = false end
  end
end

function self.Ninja.TurnOnTrickAttackWindow()
  if self.Settings.EnableDebug then self.Log("turn on trick attack") end
  self.Toggles.TrickAttackWindow.IsActive = false
  self.TrickAttackWindow.TimelineActive = false

  if SallyNIN ~= nil and Player.job == self.jobs.Ninja.id and self.WhichArc() == self.arcs.SallyNIN then
    SallyNIN.SkillSettings.SaveCD.enabled = false
    SallyNIN.SkillSettings.TrickAttack.enabled = true
    SallyNIN.SkillSettings.ShadowFang.enabled = true
    SallyNIN.SkillSettings.Bushin.enabled = true
    SallyNIN.SkillSettings.Ninjutsu.enabled = true
  end
end

function self.Ninja.TurnOffTCJ(byTimeline)
  -- set defaults in case they are not passed in
  byTimeline = byTimeline or false

  if self.Settings.EnableDebug then self.Log("turn off tcj by timeline=" ..tostring(byTimeline)) end

  -- set Toggle control
  self.Toggles.TCJMove.IsActive = true
  self.Toggles.TCJMove.TimelineActive = byTimeline
  self.Toggles.TCJMove.LastMoved = Now()

  if SallyNIN ~= nil and Player.job == self.jobs.Ninja.id and self.WhichArc() == self.arcs.SallyNIN then
    SallyNIN.SkillSettings.TCJ.enabled = false
  end
end

function self.Ninja.TurnOnTCJ()
  if self.Settings.EnableDebug then self.Log("turn on tcj") end
  -- set toggle control
  self.Toggles.TCJMove.IsActive = false
  self.Toggles.TCJMove.TimelineActive = false

  if SallyNIN ~= nil and Player.job == self.jobs.Ninja.id and self.WhichArc() == self.arcs.SallyNIN then
    SallyNIN.SkillSettings.TCJ.enabled = true
  end
end

function self.Ninja.IsDoingMudra()
  if self.Settings.EnableDebug then self.Log("mudra check") end
  -- 496 Mudra, 1186 TCJ
  return HasBuff(Player.id, 496) or HasBuff(Player.id, 1186)
end

-- ** Functions around buff checks **
if self.Buffs == nil then self.Buffs = {} end

function self.Buffs.Duraction(buffID, target)
  target = target or Player
  if (table.valid(target.buffs)) then
    for _, buff in pairs(target.buffs) do if buff.id == buffID then return buff.duration end end
  end
  return 0
end

-- ** Functions around combat checks **
if self.Combat == nil then self.Combat = {} end

function self.Combat.oGCDSafe()
  -- Tanks
  if Player.job == self.jobs.Paladin.id then
    local actionskill = ActionList:Get(1, 9)
    if actionskill.cdmax - actionskill.cd > .8 then return true else return false end
  elseif Player.job == self.jobs.Warrior.id then
    local actionskill = ActionList:Get(1, 31)
    if actionskill.cdmax - actionskill.cd > .8 then return true else return false end
  elseif Player.job == self.jobs.DarkKnight.id then
    local actionskill = ActionList:Get(1, 3617)
    if actionskill.cdmax - actionskill.cd > .8 then return true else return false end
  elseif Player.job == self.jobs.Gunbreaker.id then
    local actionskill = ActionList:Get(1, 16137)
    if actionskill.cdmax - actionskill.cd > .8 then return true else return false end
  -- Melee
  elseif Player.job == self.jobs.Monk.id then
    local actionskill = ActionList:Get(1, 53)
    if actionskill.cdmax - actionskill.cd > .8 then return true else return false end
  elseif Player.job == self.jobs.Dragoon.id then
    local actionskill = ActionList:Get(1, 75)
    if actionskill.cdmax - actionskill.cd > .8 then return true else return false end
  elseif Player.job == self.jobs.Ninja.id then
    local actionskill = ActionList:Get(1, 2240)
    if actionskill.cdmax - actionskill.cd > .8 then return true else return false end
  elseif Player.job == self.jobs.Samurai.id then
    local actionskill = ActionList:Get(1, 7477)
    if actionskill.cdmax - actionskill.cd > .8 then return true else return false end
  end

  -- TODO: add other jobs
  return true
end

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

-- ** Functions around combat actions checks **
if self.Combat.Actions == nil then self.Combat.Actions = {} end

-- ** Ninja Only Actions ************************************************************************************
function self.Combat.Actions.ShadeShift()
  -- check cooldown
  local actionskill = ActionList:Get(1, 2241)
  if actionskill:IsReady(Player.id) == false then return false end
  -- check sch buff and HP
  -- ignore if have scholar shield or HP is above 75%
  if HasBuff(Player.id, 297) or Player.hp.percent > 75 then return false end

  if not Player.job == self.jobs.Ninja.id then return false end
  if self.Ninja.IsDoingMudra() or self.Combat.inOpener() or self.Combat.oGCDSafe == false then return false end
  if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.HotBarConfig.ShadeShift.enabled = false else actionskill:Cast(Player.id) end
  return true
end
-- **********************************************************************************************************

-- ** Samurai Only Actions ************************************************************************************
function self.Combat.Actions.ThirdEye()
  -- check cooldown
  local actionskill = ActionList:Get(1, 7498)
  if actionskill:IsReady(Player.id) == false then return false end

  if not Player.job == self.jobs.Samurai.id or self.Combat.oGCDSafe == false then return false end
  if self.WhichArc() == self.arcs.SallySAM then SallySAM.HotBarConfig.ShadeShift.enabled = false else actionskill:Cast(Player.id) end
  return true
end
-- **********************************************************************************************************

-- ** Monk Only Actions ************************************************************************************
function self.Combat.Actions.RiddleOfEarth()
  -- check cooldown
  local actionskill = ActionList:Get(1, 7394)
  if actionskill:IsReady(Player.id) == false then return false end

  if not Player.job == self.jobs.Monk.id or self.Combat.oGCDSafe == false then return false end
  actionskill:Cast(Player.id)
  return true
end

function self.Combat.Actions.Mantra()
  -- check cooldown
  local actionskill = ActionList:Get(1, 65)
  if actionskill:IsReady(Player.id) == false then return false end

  if not Player.job == self.jobs.Monk.id or self.Combat.oGCDSafe == false then return false end
  actionskill:Cast(Player.id)
  return true
end
-- **********************************************************************************************************

-- ** Melee jobs ********************************************************************************************
function self.Combat.Actions.Feint()
  -- check that target does not already have fient
  local target = Player:GetTarget()
  if target == nil or not table.valid(target) or target.attackable or HasBuff(target.id, 1195) then return false end

  -- check cooldown
  local actionskill = ActionList:Get(1, 7549)
  if actionskill:IsReady(target.id) == false then return false end
    if Player.job == self.jobs.Ninja.id then if self.Ninja.IsDoingMudra() or self.Combat.inOpener() or self.Combat.oGCDSafe == false then return false end
    -- if sally installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.HotBarConfig.Feint.enabled = false else actionskill:Cast(target.id) end
    return true
  elseif Player.job == self.jobs.Samurai.id then
    if self.WhichArc() == self.arcs.SallySAM then SallySAM.HotBarConfig.Feint.enabled = false else actionskill:Cast(target.id) end
    return true
  elseif Player.job == self.jobs.Dragoon.id then
    actionskill:Cast(target.id)
    return true
  elseif Player.job == self.jobs.Monk.id then
    actionskill:Cast(target.id)
    return true
  end
  return false
end

function self.Combat.Actions.TrueNorth()
  -- check cooldown
  local actionskill = ActionList:Get(1, 7546)
  if actionskill:IsReady(Player.id) == false then return false end

  if Player.job == self.jobs.Ninja.id then
    if self.Ninja.IsDoingMudra() or self.Combat.inOpener() or self.Combat.oGCDSafe == false then return false end
    -- if sally installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.HotBarConfig.TrueNorth.enabled = false else actionskill:Cast(Player.id) end
    return true
  elseif Player.job == self.jobs.Samurai.id then
    if self.WhichArc() == self.arcs.SallySAM then SallySAM.HotBarConfig.TrueNorth.enabled = false else actionskill:Cast(Player.id) end
    return true
  elseif Player.job == self.jobs.Dragoon.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Monk.id then
    actionskill:Cast(Player.id)
    return true
  end
  return false
end
-- **********************************************************************************************************

-- ** Melee tanks physical range *****************************************************************************
function self.Combat.Actions.ArmsLength()
  -- check cooldown
  local actionskill = ActionList:Get(1, 7548)
  if actionskill:IsReady(Player.id) == false then
    return false
  end

  if Player.job == self.jobs.Ninja.id then
    if self.Ninja.IsDoingMudra() or self.Combat.inOpener() or self.Combat.oGCDSafe == false then return false end
    -- if sally installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.HotBarConfig.ArmsLength.enabled = false else actionskill:Cast(Player.id) end
    return true
  elseif Player.job == self.jobs.Samurai.id then
    if self.WhichArc() == self.arcs.SallySAM then SallySAM.HotBarConfig.ArmsLength.enabled = false else actionskill:Cast(Player.id) end
    return true
  elseif Player.job == self.jobs.Dragoon.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Monk.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.DarkKnight.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Warrior.id then
    if self.WhichArc() == self.arcs.SallyWAR then SallyWAR.HotBarConfig.ArmsLength.enabled = false else actionskill:Cast(Player.id) end
    return true
  elseif Player.job == self.jobs.Paladin.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Gunbreaker.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Bard.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Machinist.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Dancer.id then
    if self.WhichArc() == self.arcs.SallyDNC then SallyDNC.HotBarConfig.ArmsLength.enabled = false else actionskill:Cast(Player.id) end
    return true
  end
end
-- **********************************************************************************************************

-- ** Healers and Casters ************************************************************************************
function self.Combat.Actions.SureCast()
  -- check cooldown
  local actionskill = ActionList:Get(1, 7559)
  if actionskill:IsReady(Player.id) == false then return false end

  if Player.job == self.jobs.WhiteMage.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.BlackMage.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Summoner.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Scholar.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Astrologian.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.RedMage.id then
    if self.WhichArc() == self.arcs.SallyRDM then SallyRDM.HotBarConfig.SureCast.enabled = false else actionskill:Cast(Player.id) end
    return true
  elseif Player.job == self.jobs.Machinist.id then
    actionskill:Cast(Player.id)
    return true
  end
end
-- **********************************************************************************************************

-- ** ALL ***************************************************************************************************
function self.Combat.Actions.Knockback()
  if
    Player.job == self.jobs.Ninja.id or Player.job == self.jobs.Samurai.id or Player.job == self.jobs.Dragoon.id or Player.job == self.jobs.Monk.id or Player.job == self.jobs.DarkKnight.id or Player.job == self.jobs.Warrior.id or
      Player.job == self.jobs.Paladin.id or Player.job == self.jobs.Gunbreaker.id or Player.job == self.jobs.Bard.id or Player.job == self.jobs.Machinist.id or
      Player.job == self.jobs.Dancer.id
  then
    return self.Combat.Actions.ArmsLength()
  elseif Player.job == self.jobs.WhiteMage.id or Player.job == self.jobs.BlackMage.id or Player.job == self.jobs.Summoner.id or Player.job == self.jobs.Scholar.id or Player.job == self.jobs.Astrologian.id or Player.job == self.jobs.RedMage.id then
    return self.Combat.Actions.SureCast()
  end
end

function self.Combat.Actions.Sprint()
  -- check cooldown
  local actionskill = ActionList:Get(1, 3)
  if actionskill:IsReady(Player.id) == false then return false end

  if Player.job == self.jobs.Ninja.id then
    if self.Ninja.IsDoingMudra() or self.Combat.inOpener() or self.Combat.oGCDSafe == false then return false end
    -- if sally installed, use hotbar, otherwise use base
    if self.WhichArc() == self.arcs.SallyNIN then SallyNIN.HotBarConfig.Sprint.enabled = false else actionskill:Cast(Player.id) end
    return true
  elseif Player.job == self.jobs.Samurai.id then
    if self.WhichArc() == self.arcs.SallySAM then SallySAM.HotBarConfig.Sprint.enabled = false else actionskill:Cast(Player.id) end
    return true
  elseif Player.job == self.jobs.Dragoon.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Monk.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.DarkKnight.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Warrior.id then
    if self.WhichArc() == self.arcs.SallyWAR then SallyWAR.HotBarConfig.Sprint.enabled = false else actionskill:Cast(Player.id) end
    return true
  elseif Player.job == self.jobs.Paladin.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Gunbreaker.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Bard.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Machinist.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Dancer.id then
    if self.WhichArc() == self.arcs.SallyDNC then SallyDNC.HotBarConfig.Sprint.enabled = false else actionskill:Cast(Player.id) end
    return true
  elseif Player.job == self.jobs.WhiteMage.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.BlackMage.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Summoner.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Scholar.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Astrologian.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.RedMage.id then
    actionskill:Cast(Player.id)
    return true
  elseif Player.job == self.jobs.Machinist.id then
    actionskill:Cast(Player.id)
    return true
  end
end
-- **********************************************************************************************************

-- ** start addon
function self.Initialize()
  self.Log("Library Loaded")
end

-- **********************************************************************************************************

RegisterEventHandler("Module.Initalize", self.Initialize, selfslong)
