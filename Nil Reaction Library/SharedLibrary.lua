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
}

self.v = table.valid
function self.valid(...)
    local tbl = {...}
    local size = #tbl
    if size > 0 then
        local count = tbl[1]
        if type(count) == "number" then
            if size == (count + 1) then
                for i = 2, size do
                    if not self.v(tbl[i]) then return false end
                end
                return true
            end
        else
            for i = 1, size do
                if not self.v(tbl[i]) then return false end
            end
            return true
        end
    end
    return false
end

-- Settings will be reset on every reload or issued reload command.
-- Create a general onload reaction that sets these.
-- Would like to do a UI for this, just need to figure it out.
self.Settings = {
  CurrentMapID = "", -- map id for the player
  IssueACTResetOnWipe = true,
  EnableDebug = false, -- need a ui for this, for now `NilsReactionLibrary.Settings.EnableDebug = true`
  EnableMCRSupport = false, -- TODO: not supported yet, waiting on madao to add support to MCR for exteral applications
  TargetDOTLimit = 25 -- turn off dots once targets get x number
}

function self.Log(string)
  d("[Nil's Reactions] " .. string)
end

function self.isempty(s)
  return s == nil or s == ''
end

function self.tablelength(T)
  local count = 0
  for _ in pairs(T) do
      count = count + 1
  end
  return count
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
  SallyDRG = "SallyDRG", -- xSalice
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
 -- [541] = true, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
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
 -- [541] = true, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
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
--  [541] = true, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
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
  if Player.job == self.jobs.Ninja.id then self.Combat.Toggles.Ninja.Reset() end
  if Player.job == self.jobs.Samurai.id then self.Combat.Toggles.Samurai.Reset() end
  if Player.job == self.jobs.Dragoon.id then self.Combat.Toggles.Dragoon.Reset() end

  -- reset shared toggles
  self.Combat.Toggles.Handler.Reset()
end

-- ******************************************* Helper functions by job **************************************
-- *                                                                                                        *
-- *                                    Functions specific for helping a job                                *
-- *                                                                                                        *
-- **********************************************************************************************************

-- ** Functions around buff checks **
if self.Buffs == nil then self.Buffs = {} end

function self.Buffs.Duration(buffID, target)
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
    if self.WhichArc() == self.arcs.SallyWAR and SallyWAR.SkillSettings.Opener.enabled == true then return true end
    if Goliath ~= nil and Goliath_Toggle(1, 2) == true then return true end
    return false
  elseif Player.job == self.jobs.DarkKnight.id then
    if xivopeners_drk ~= nil and xivopeners_drk.openerStarted == true then return true end
    if self.WhichArc() == self.arcs.SallyDRK and SallyDRK.SkillSettings.Opener.enabled == true then return true end
    if Goliath ~= nil and Goliath_Toggle(1, 2) == true then return true end
    return false
  elseif Player.job == self.jobs.Gunbreaker.id then
    if xivopeners_gnb ~= nil and xivopeners_gnb.openerStarted == true then return true end
    if Goliath ~= nil and Goliath_Toggle(1, 2) == true then return true end
    return false
  -- Melee
  elseif Player.job == self.jobs.Ninja.id then
    if xivopeners_nin ~= nil and xivopeners_nin.openerStarted == true then return true end
    if self.WhichArc() == self.arcs.SallyNIN and SallyNIN.SkillSettings.Opener.enabled == true then return true end
    return false
  elseif Player.job == self.jobs.Samurai.id then
    if xivopeners_sam ~= nil and xivopeners_sam.openerStarted == true then return true end
    if self.WhichArc() == self.arcs.SallySAM and SallySAM.SkillSettings.Opener.enabled == true then return true end
    return false
  elseif Player.job == self.jobs.Dragoon.id then
    if xivopeners_drg ~= nil and xivopeners_drg.openerStarted == true then return true end
    if self.WhichArc() == self.arcs.SallyDRG and SallyDRG.SkillSettings.Opener.enabled == true then return true end
    return false
  elseif Player.job == self.jobs.Monk.id then
    if xivopeners_mnk ~= nil and xivopeners_mnk.openerStarted == true then return true end
    return false
  end

  self.Log("no opener to job supported : " ..tostring(Player.job))
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

-- ** Tank jobs ONLY ***************************************************************************************
function self.Combat.Actions.LowBlow(entityID, actionID)

  -- return if in opener or outside ogcd
  if NilsReactionLibrary.Combat.inOpener()  then return false, nil, nil, false, false end

  if NilsReactionLibrary.isempty(entityID) then entityID = 0 end
  if NilsReactionLibrary.isempty(actionID) then actionID = 0 end

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
      if SallyDRK.HotBarConfig.LowBlow.enabled ~= nil then
        SallyDRK.HotBarConfig.LowBlow.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, target.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, target.id, true, false
    end
  elseif Player.job == self.jobs.Warrior.id then
    if self.WhichArc() == self.arcs.SallyWAR then
      if SallyWAR.HotBarConfig.LowBlow.enabled ~= nil then
        SallyWAR.HotBarConfig.LowBlow.enabled = false
        return true, nil, nil, false, false
      else
        return true, actionskill, target.id, true, false
      end
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
  if self.isempty(spellid) then spellid = 0 end
  if self.isempty(remaining) then remaining = 4 end
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
      -- if remaining is < .5, emergency cast.
      if remainder < .5 then
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
      if SallyNIN.HotBarConfig.Armslength.enabled ~= nil then
        SallyNIN.HotBarConfig.Armslength.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, interruptCast
    end
  elseif Player.job == self.jobs.Samurai.id then
    if self.WhichArc() == self.arcs.SallySAM then
      if SallySAM.HotBarConfig.Armslength.enabled ~= nil then
        SallySAM.HotBarConfig.Armslength.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, interruptCast
    end
  elseif Player.job == self.jobs.Dragoon.id then
    if self.WhichArc() == self.arcs.SallyDRG then
      if SallyDRG.HotBarConfig.Armslength.enabled ~= nil then
        SallyDRG.HotBarConfig.Armslength.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, interruptCast
    end
  elseif Player.job == self.jobs.Monk.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.DarkKnight.id then
    return true, actionskill, Player.id, true, interruptCast
  elseif Player.job == self.jobs.Warrior.id then
    if self.WhichArc() == self.arcs.SallyWAR then
      if SallyWAR.HotBarConfig.Armslength.enabled ~= nil then
        SallyWAR.HotBarConfig.Armslength.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end
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
      if SallyDNC.HotBarConfig.Armslength.enabled ~= nil then
        SallyDNC.HotBarConfig.Armslength.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end

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
function self.Combat.Actions.SureCast(entityID, remaining, spellid)
  if self.isempty(spellid) then spellid = 0 end
  if self.isempty(remaining) then remaining = 4 end
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
      -- if remaining is < .5, emergency cast.
      if remainder < .5 then
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
    if self.WhichArc() == self.arcs.TensorRuin then
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
      if SallyRDM.HotBarConfig.SureCast.enabled ~= nil then
        SallyRDM.HotBarConfig.SureCast.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end

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
    if self.WhichArc() == self.arcs.TensorRuin then
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
      if SallyRDM.HotBarConfig.Addle.enabled ~= nil then
        SallyRDM.HotBarConfig.Addle.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, target.id, true, false
      end

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
      if SallyNIN.HotBarConfig.Sprint.enabled ~= nil then
        SallyNIN.HotBarConfig.Sprint.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end

      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == self.jobs.Samurai.id then
    if self.WhichArc() == self.arcs.SallySAM then
      if SallySAM.HotBarConfig.Sprint.enabled ~= nil then
        SallySAM.HotBarConfig.Sprint.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end

      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == self.jobs.Dragoon.id then
    if self.WhichArc() == self.arcs.SallyDRG then
      if SallyDRG.HotBarConfig.Sprint.enabled ~= nil then
        SallyDRG.HotBarConfig.Sprint.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end

      return true, nil, nil, false, false
    else
      return true, actionskill, Player.id, true, false
    end
  elseif Player.job == self.jobs.Monk.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.DarkKnight.id then
    return true, actionskill, Player.id, true, false
  elseif Player.job == self.jobs.Warrior.id then
    if self.WhichArc() == self.arcs.SallyWAR then
      if SallyWAR.HotBarConfig.Sprint.enabled ~= nil then
        SallyWAR.HotBarConfig.Sprint.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end

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
      if SallyDNC.HotBarConfig.Sprint.enabled ~= nil then
        SallyDNC.HotBarConfig.Sprint.enabled= false
        return true, nil, nil, false, false
      else
        return true, actionskill, Player.id, true, false
      end

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

-- Gap closer defaults to current target, optionally entityid can be passed in.
function self.Combat.Actions.GapClosers(entityID)
  if Player.job == self.jobs.Ninja.id then return self.Combat.Actions.Shukuchi(entityID) end
  if Player.job == self.jobs.Samurai.id then return self.Combat.Actions.Gyoten() end
  if Player.job == self.jobs.Dragoon.id then return  self.Combat.Actions.ElusiveJump(entityID) end

  return true, nil, nil, true, false
end

function self.Combat.Actions.SelfHeal()
  -- ignore if not in combat
  if Player.incombat == false then return false, nil, nil, true, false end

  -- if player just died, hold self healing
  if TimeSince(self.Combat.Toggles.Control.DeathWatch.TimeOfDeath) < 5000 then return false, nil, nil, true, false end

  -- 84 bloodbath buff
  -- check regen buffs
  local hasRegen = false
  if  HasBuff(Player.id, 158) or HasBuff(Player.id, 150) or HasBuff(Player.id, 839) or HasBuff(Player.id, 84) then
		hasRegen = true
  end

  -- if has regen, can hold self healing until 20%
  if hasRegen then
    if Player.hp.percent <= 20 then
      local wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.SecondWind()
      if wasSuccessful == true then
        return wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt
      else
        return NilsReactionLibrary.Combat.Actions.Bloodbath()
      end
      return false, nil, nil, true, false
    end
  else
  -- if no regen , use a self heal at 40%
    if Player.hp.percent <= 40 then
      local wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.SecondWind()
      if wasSuccessful == true then
        return wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt
      else
        return NilsReactionLibrary.Combat.Actions.Bloodbath()
      end
      return false, nil, nil, true, false
    end
  end

  return false, nil, nil, true, false
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
  DOT = { IsActive = false, TimelineActive = false},
  Jumps = { IsActive = false, TimelineActive = false},
  OmniWhiteList = { IsActive = false, TimelineActive = false},
  DreamWithinDream = { IsActive = false, TimelineActive = false},
  Kassatsu = { IsActive = false, TimelineActive = false},
  Meisui = { IsActive = false, LastMoved = 0, TimelineActive = false },
  Ninjutsu = { IsActive = false, TimelineActive = false },
  Bunshin = { IsActive = false, TimelineActive = false },
  ACRefresh = { IsActive = false, LastMoved = 0, TimelineActive = false },
  --ShadowFang = { IsActive = false, TimelineActive = false },
  TrickAttack = { IsActive = false, TimelineActive = false },
  TrickAttackWindow = { IsActive = false, LastMoved = 0, TimelineActive = false },
  DeathWatch = { TimeOfDeath = 0 },
  GapClosers = { LastUsed = 0 },
}

if self.Combat.Toggles.Handler == nil then self.Combat.Toggles.Handler = {} end

function self.Combat.Toggles.Handler.Reset()
  self.Combat.Toggles.Control = {
    TCJMove = { IsActive = false, LastMoved = 0, TimelineActive = false },
    AssassinateMove = { IsActive = false, LastMoved = 0, TimelineActive = false },
    BurnBoss = { IsActive = false, TimelineActive = false},
    AOEBlackList = { IsActive = false, TimelineActive = false},
    CDBlackList = { IsActive = false, TimelineActive = false},
    DOT = { IsActive = false, TimelineActive = false},
    Jumps = { IsActive = false, TimelineActive = false},
    OmniWhiteList = { IsActive = false, TimelineActive = false},
    DreamWithinDream = { IsActive = false, TimelineActive = false},
    Kassatsu = { IsActive = false, TimelineActive = false},
    Meisui = { IsActive = false, LastMoved = 0, TimelineActive = false },
    Ninjutsu = { IsActive = false, TimelineActive = false },
    Bunshin = { IsActive = false, TimelineActive = false },
    ACRefresh = { IsActive = false, LastMoved = 0, TimelineActive = false },
    --ShadowFang = { IsActive = false, TimelineActive = false },
    TrickAttack = { IsActive = false, TimelineActive = false },
    TrickAttackWindow = { IsActive = false, LastMoved = 0, TimelineActive = false },
    DeathWatch = { TimeOfDeath = 0 },
    GapClosers = { LastUsed = 0 },
  }
end

  -- if set by timeline reaction, ignore
function self.Combat.Toggles.Handler.CD()
  local target = Player:GetTarget()
  local contentID = 0
  if target ~= nil and table.valid(target) and target.attackable then contentID = target.contentid end

  if self.CDBlackList[contentID] then
    if Player.job == self.jobs.Ninja.id and self.Combat.Toggles.Control.TrickAttackWindow.TimelineActive == false then self.Combat.Toggles.Ninja.Helpers.TurnOffTrickAttackWindow(false, false) return true end
    if Player.job == self.jobs.Samurai.id and self.Combat.Toggles.Control.CDBlackList.TimelineActive == false then self.Combat.Toggles.Samurai.CD(true, false) return true end
    if Player.job == self.jobs.Summoner.id and self.Combat.Toggles.Control.CDBlackList.TimelineActive == false then self.Combat.Toggles.Summoner.CD(false, false) return true end
    if Player.job == self.jobs.Dragoon.id and self.Combat.Toggles.Control.CDBlackList.TimelineActive == false then self.Combat.Toggles.Dragoon.CD(true, false) return true end
  else
    if Player.job == self.jobs.Ninja.id and self.Combat.Toggles.Control.TrickAttackWindow.TimelineActive == false then self.Combat.Toggles.Ninja.Helpers.TurnOnTrickAttackWindow() return true end
    if Player.job == self.jobs.Samurai.id and self.Combat.Toggles.Control.CDBlackList.TimelineActive == false then self.Combat.Toggles.Samurai.CD(false, false) return true end
    if Player.job == self.jobs.Summoner.id and self.Combat.Toggles.Control.CDBlackList.TimelineActive == false then self.Combat.Toggles.Summoner.CD(true, false) return true end
    if Player.job == self.jobs.Dragoon.id and self.Combat.Toggles.Control.CDBlackList.TimelineActive == false then self.Combat.Toggles.Dragoon.CD(false, false) return true end
  end

  return false
end

function self.Combat.Toggles.Handler.AOE()
  -- if set by timeline reaction, ignore
  if self.Combat.Toggles.Control.AOEBlackList.IsActive == true and self.Combat.Toggles.Control.AOEBlackList.TimelineActive == true then return false end

  local target = Player:GetTarget()
  local contentID = 0
  if target ~= nil and table.valid(target) and target.attackable then contentID = target.contentid end

  if self.AOEBlackList[contentID] then
    self.Combat.Toggles.Ninja.AOE(false, false)
    self.Combat.Toggles.Samurai.AOE(false, false)
    self.Combat.Toggles.Summoner.AOE(false, false)
    self.Combat.Toggles.Dragoon.AOE(false, false)
  else
    self.Combat.Toggles.Ninja.AOE(true, false)
    self.Combat.Toggles.Samurai.AOE(true, false)
    self.Combat.Toggles.Summoner.AOE(true, false)
    self.Combat.Toggles.Dragoon.AOE(true, false)
  end

  return true
end

function self.Combat.Toggles.Handler.DOT()
  -- if set by timeline reaction, ignore
  if self.Combat.Toggles.Control.DOT.IsActive == true and self.Combat.Toggles.Control.DOT.TimelineActive == true then return false end

  local target = Player:GetTarget()
  local contentID = 0
  local targetBuffCount = 0
  if target ~= nil and table.valid(target) and target.attackable then
    contentID = target.contentid
    targetBuffCount = self.tablelength(target.buffs)
  end

  -- turn off dots if on blacklist or if target has to many dots and about to cap out
  if self.data.dotBlacklist[contentID] or targetBuffCount >= self.Settings.TargetDOTLimit then
    self.Combat.Toggles.Ninja.ShadowFang(false, false)
    self.Combat.Toggles.Samurai.Higanbana(false, false)
    self.Combat.Toggles.Summoner.DoTs(false, false)
    self.Combat.Toggles.Dragoon.DoTs(false, false)
  else
    self.Combat.Toggles.Ninja.ShadowFang(true, false)
    self.Combat.Toggles.Samurai.Higanbana(true, false)
    self.Combat.Toggles.Summoner.DoTs(true, false)
    self.Combat.Toggles.Dragoon.DoTs(true, false)
  end

  return true
end

function self.Combat.Toggles.Handler.Omni()
  -- if set by timeline reaction, ignore
  if self.Combat.Toggles.Control.OmniWhiteList.IsActive == true and self.Combat.Toggles.Control.OmniWhiteList.TimelineActive == true then return false end

  local target = Player:GetTarget()
  local contentID = 0
  if target ~= nil and table.valid(target) and target.attackable then contentID = target.contentid end

  if self.OmniList[contentID] then
    self.Combat.Toggles.Ninja.Omni(true, false)
    self.Combat.Toggles.Samurai.Omni(false, false) -- we want to turn QT off, which is why this is false
    self.Combat.Toggles.Dragoon.Omni(false, false) -- we want to turn QT off, which is why this is false
  else
    self.Combat.Toggles.Ninja.Omni(false, false)
    self.Combat.Toggles.Samurai.Omni(true, false)
    self.Combat.Toggles.Dragoon.Omni(true, false)
  end

  return true
end

function self.Combat.Toggles.Handler.Jumps()
  -- if set by timeline reaction, ignore
  if self.Combat.Toggles.Control.Jumps.IsActive == true and self.Combat.Toggles.Control.Jumps.TimelineActive == true then return false end

  local target = Player:GetTarget()
  local contentID = 0
  if target ~= nil and table.valid(target) and target.attackable then
    -- protection incase the timeline is to early.
    if target.castinginfo == nil and target.castinginfo.channelingid ~= nil and target.castinginfo.channelingid > 0 then contentID = target.castinginfo.channelingid end
  end

  if self.data.jumpBlacklist[contentID] then
    self.Combat.Toggles.Dragoon.Jumps(false, false) -- we want to turn QT off, which is why this is false
  else
    self.Combat.Toggles.Dragoon.Jumps(true, false)
  end

  return true
end

function self.Combat.Toggles.Handler.BurnBoss()
  if Player.job == self.jobs.Ninja.id then
    return self.Combat.Toggles.Ninja.BurnBoss(true)
  elseif Player.job == self.jobs.Samurai.id then
    return true
  elseif Player.job == self.jobs.Dragoon.id then
    return self.Combat.Toggles.Dragoon.FullThrustOnly(true, false)
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

-- ** start addon
function self.Initialize()
  self.Log("Library Loaded v4.0.2")
end

-- ** on update checks
function self.OnUpdate()

  if Player.alive == false then self.Combat.Toggles.Control.DeathWatch.TimeOfDeath = Now() end

  if Player.localmapid ~= self.Settings.CurrentMapID then
    -- mapid change, do stuff
    self.Settings.CurrentMapID = Player.localmapid
    -- reset shared toggles
    self.Combat.Toggles.Handler.Reset()
  end

  local g = Player.gauge
  if (table.valid(g)) then
    for i, k in pairs(g) do
      if Player.job == self.jobs.Ninja.id then if i == 2 then NilsReactionLibrary.data.gauges.huton = k end end
    end
  end

  -- Gap close hotkey
  if (GUI:IsKeyDown(17) and GUI:IsKeyDown(16) and GUI:IsKeyDown(190)) and TimeSince(self.Combat.Toggles.Control.GapClosers.LastUsed) > 300 then -- CTRL + Shift + .
    self.Log("gap closer hotkey : " ..tostring(TimeSince(self.Combat.Toggles.Control.GapClosers.LastUsed)))

    local target = Player:GetTarget()
    if target == nil or not table.valid(target) then return true end
    self.Log("target distance : " ..tostring(target.distance2d))

    if Player.job == self.jobs.Samurai.id then
      if target.distance2d ~= 0 and target.distance2d < 2 then
        local wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Yaten()
        self.Log("Yaten : " ..tostring(wasSuccessful))
        if wasSuccessful == true then
          self.Combat.Toggles.Control.GapClosers.LastUsed = Now()
          if action ~= nil then action:Cast(targetID) end
        end
        self.Log("Yaten : returned true")
        return true
      end
    end

    local wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.GapClosers()
    self.Log("GapClosers : " ..tostring(wasSuccessful))
    if wasSuccessful == true then
      self.Combat.Toggles.Control.GapClosers.LastUsed = Now()
      if action ~= nil then action:Cast(targetID) end
    end
  end
end

-- **********************************************************************************************************

RegisterEventHandler("Module.Initalize", self.Initialize, selfslong)
RegisterEventHandler("Gameloop.Update", self.OnUpdate, "nil OnUpdate")