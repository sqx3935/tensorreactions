-- Persistent Data
local multiRefObjects = {
{},{},
} -- multiRefObjects
local obj1 = {
	[2] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- checks and loads dependancy functions in the event that you do not have my general dependancies loaded.\
\
if data.nilsPlayground == nil then\
  data.nilsPlayground = {}\
\
  -- TODO: for later use, returns if arc is enabled and which arc is selected\
  if gACREnabled then\
    data.nilsPlayground.whicharc = gACRSelectedProfiles[Player.job] -- returns which arc is being used\
  end\
\
  if data.nilsPlayground.Log == nil then\
    function data.nilsPlayground.Log(string)\
      d(\"[Nil's Ninja Reactions] \" .. string)\
    end\
  end\
\
  function data.nilsPlayground.ResetSallyNIN()\
    -- issues command to let ACT know to rest\
    SendTextCommand(\"/echo end\")\
\
    -- reset quick toggles to default\
    if SallyNIN ~= nil then\
      SallyNIN.SkillSettings.Opener.enabled = false\
      SallyNIN.SkillSettings.SaveCD.enabled = false\
      SallyNIN.SkillSettings.Range.enabled = false\
      SallyNIN.SkillSettings.Omni.enabled = false\
      SallyNIN.SkillSettings.BurnBoss.enabled = false\
\
      -- SallyNIN.SkillSettings.Potion.enabled = true\
      SallyNIN.SkillSettings.UseAOE.enabled = true\
      SallyNIN.SkillSettings.TCJ.enabled = true\
      SallyNIN.SkillSettings.Meisui.enabled = true\
      SallyNIN.SkillSettings.TrickAttack.enabled = true\
      SallyNIN.SkillSettings.Ninjutsu.enabled = true\
      SallyNIN.SkillSettings.Bushin.enabled = true\
      SallyNIN.SkillSettings.Ninki.enabled = true\
      SallyNIN.SkillSettings.Assassinate.enabled = true\
      SallyNIN.SkillSettings.DWD.enabled = false\
      SallyNIN.SkillSettings.Mug.enabled = true\
      SallyNIN.SkillSettings.Kassatsu.enabled = true\
      SallyNIN.SkillSettings.Doton.enabled = true\
      SallyNIN.SkillSettings.TrueNorth.enabled = true\
      SallyNIN.SkillSettings.ACRefresh.enabled = true\
      SallyNIN.SkillSettings.ShadowFang.enabled = true\
\
      SallyNIN.HotBarConfig.ShadeShift.enabled = true\
      SallyNIN.HotBarConfig.SecondWind.enabled = true\
      SallyNIN.HotBarConfig.Bloodbath.enabled = true\
      SallyNIN.HotBarConfig.Armslength.enabled = true\
      SallyNIN.HotBarConfig.Feint.enabled = true\
    end\
\
    data.nilsPlayground.ResetToggles()\
  end\
\
  function data.nilsPlayground.TurnOffNinjitsu(byTimeline)\
    data.nilsPlayground.Toggles.Ninjutsu.IsActive = true\
    data.nilsPlayground.Toggles.Ninjutsu.TimelineActive = byTimeline\
    data.nilsPlayground.Toggles.Ninjutsu.LastMoved = Now()\
\
    if SallyNIN ~= nil then\
      SallyNIN.SkillSettings.Ninjutsu.enabled = false\
      SallyNIN.SkillSettings.SaveCD.enabled = true\
    end\
  end\
\
  function data.nilsPlayground.TurnOnNinjitsu()\
    data.nilsPlayground.Toggles.Ninjutsu.IsActive = false\
    data.nilsPlayground.Toggles.Ninjutsu.TimelineActive = false\
\
    if SallyNIN ~= nil then\
      SallyNIN.SkillSettings.Ninjutsu.enabled = true\
      SallyNIN.SkillSettings.SaveCD.enabled = false\
    end\
  end\
\
  function data.nilsPlayground.TurnOffTrickAttackWindow(byTimeline)\
    data.nilsPlayground.Toggles.TrickAttackWindow.IsActive = true\
    data.nilsPlayground.Toggles.TrickAttackWindow.TimelineActive = byTimeline\
    data.nilsPlayground.Toggles.TrickAttackWindow.LastMoved = Now()\
\
    if SallyNIN ~= nil then\
      SallyNIN.SkillSettings.SaveCD.enabled = true\
      SallyNIN.SkillSettings.TrickAttack.enabled = false\
      SallyNIN.SkillSettings.ShadowFang.enabled = false\
      SallyNIN.SkillSettings.Bushin.enabled = false\
    end\
  end\
\
  function data.nilsPlayground.TurnOnTrickAttackWindow()\
    data.nilsPlayground.Toggles.TrickAttackWindow.IsActive = false\
    data.nilsPlayground.Toggles.TrickAttackWindow.TimelineActive = false\
\
    if SallyNIN ~= nil then\
      SallyNIN.SkillSettings.SaveCD.enabled = false\
      SallyNIN.SkillSettings.TrickAttack.enabled = true\
      SallyNIN.SkillSettings.ShadowFang.enabled = true\
      SallyNIN.SkillSettings.Bushin.enabled = true\
      SallyNIN.SkillSettings.Ninjutsu.enabled = true\
    end\
  end\
\
  function data.nilsPlayground.TurnOffTCJ(byTimeline)\
    data.nilsPlayground.Toggles.TCJMove.IsActive = true\
    data.nilsPlayground.Toggles.TCJMove.TimelineActive = byTimeline\
    data.nilsPlayground.Toggles.TCJMove.LastMoved = Now()\
\
    if SallyNIN ~= nil then\
      SallyNIN.SkillSettings.TCJ.enabled = false\
    end\
  end\
\
  function data.nilsPlayground.TurnOnTCJ()\
    data.nilsPlayground.Toggles.TCJMove.IsActive = false\
    data.nilsPlayground.Toggles.TCJMove.TimelineActive = false\
\
    if SallyNIN ~= nil then\
      SallyNIN.SkillSettings.TCJ.enabled = true\
    end\
  end\
\
  function data.nilsPlayground.ResetToggles()\
    data.nilsPlayground.Toggles = {\
      TCJMove = {IsActive = false, LastMoved = 0, TimelineActive = false},\
      AssassinateMove = {IsActive = false, LastMoved = 0, TimelineActive = false},\
      BurnBoss = {IsActive = false, TimelineActive = false},\
      AOEBlackList = {IsActive = false, TimelineActive = false},\
      CDBlackList = {IsActive = false, TimelineActive = false},\
      OmniWhiteList = {IsActive = false, TimelineActive = false},\
      DreamWithinDream = {IsActive = false, TimelineActive = false},\
      Kassatsu = {IsActive = false, TimelineActive = false},\
      Meisui = {IsActive = false, LastMoved = 0, TimelineActive = false},\
      Ninjutsu = {IsActive = false, LastMoved = 0, TimelineActive = false},\
      ACRefresh = {IsActive = false, LastMoved = 0, TimelineActive = false},\
      TrickAttackWindow = {IsActive = false, LastMoved = 0, TimelineActive = false}\
    }\
  end\
\
  if data.nilsPlayground.CustomConditionChecks == nil then\
    data.nilsPlayground.CustomConditionChecks = {}\
  end\
\
  function data.nilsPlayground.CustomConditionChecks.IsDoingMudra()\
    -- 496 Mudra, 1186 TCJ\
    return HasBuff(Player.id, 496) or HasBuff(Player.id, 1186)\
  end\
\
  -- REMOVING THIS FUNCTION SOON, use inopener() instead\
  function data.nilsPlayground.CustomConditionChecks.NoOpener()\
    -- try not to execute while opener is running\
    if xivopeners_nin ~= nil and xivopeners_nin.openerStarted == true then\
      return false\
    end\
\
    -- checks to see if sally dancer is installed and if its opener is running\
    if SallyNIN ~= nil and SallyNIN.SkillSettings.Opener.enabled == true then\
      return false\
    end\
\
    -- if xivopener is not running nor sally sam opener, then return true that it is safe to execute.\
    return true\
  end\
\
  function data.nilsPlayground.CustomConditionChecks.inOpener()\
    -- try not to execute while opener is running\
    if xivopeners_nin ~= nil and xivopeners_nin.openerStarted == true then\
      return true\
    end\
\
    -- checks to see if sally dancer is installed and if its opener is running\
    if SallyNIN ~= nil and SallyNIN.SkillSettings.Opener.enabled == true then\
      return true\
    end\
\
    -- if xivopener is not running nor sally sam opener, then return false that it is safe to execute.\
    return false\
  end\
\
  function data.nilsPlayground.CustomConditionChecks.CanNinjutsuBeTurnedOff()\
    if data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true then\
      return false\
    end\
    return data.nilsPlayground.Toggles.Ninjutsu.IsActive == false\
  end\
\
  -- REMOVING THIS FUNCTION SOON, calculate as needed in scripts\
  function data.nilsPlayground.skillCooldownDifference(cd, cdmax)\
    if cd == 0 and cdmax == 0 then\
      return 0\
    end\
    return tonumber(cdmax - cd) or 0\
  end\
\
  function data.nilsPlayground.getPlayerBuffDuration(buffID)\
    if (table.valid(Player.buffs)) then\
      for _, buff in pairs(Player.buffs) do\
        if buff.id == buffID then\
          return buff.duration\
        end\
      end\
    end\
    return 0\
  end\
\
  data.nilsPlayground.BurnBossList = {\
    -- [541] = 1, -- striking dummy\
    [11347] = 1, -- Alexander Prime\
    [11340] = 1, -- Brute Justice\
    [11342] = 2, -- Cruise Chaser\
    [11335] = 2, -- Living Liquid\
    [6358] = 1, -- Alexander\
    [9365] = 2, -- Eden Prime savage\
    [9366] = 4, -- Guardian of Paradise savage\
    [10511] = 2, -- voidwalker savage\
    [10604] = 2, -- Leviathan savage\
    [8486] = 2, -- Leviathan savage\
    [8350] = 2, -- Titan savage\
    [11361] = 1, -- Serial-jointed Command Model\
    [9020] = 1, -- 9s-operated walking fortress\
    [9143] = 1, -- Hobbes\
    [9144] = 1, -- Hobbes\
    [9145] = 1, -- Hobbes\
    [9147] = 1, -- Engels\
    [8353] = 1, -- Innocence\
    [9281] = 1, -- Ramuh --> E5S\
    [9289] = 1, -- Raktapaksa --> E6S\
    [9298] = 1, -- The Idol of Darkness --> E7S\
    [9353] = 1 -- Shiva --> E8S\
  }\
\
  data.nilsPlayground.AOEBlackList = {\
    --	[541] = true, -- striking dummy\
    [7097] = true, -- Demon Chadarnook\
    [7646] = true, -- Immortal Key\
    [7662] = true, -- Tokkapchi\
    [7663] = true, -- Mud Slime\
    [7665] = true, -- Muddy Dorpokkur\
    [7672] = true, -- Mist Dragon\
    [7673] = true, -- Draconic Regard\
    [7702] = true, -- Suzaku\
    [7703] = true, -- Scarlet Plume\
    [7704] = true, -- Scarlet Tail Feather\
    [7725] = true, -- Scarlet Lady\
    [8262] = true, -- Forgiven Obscenity\
    [9181] = true, -- Lahabrea's shade\
    [9182] = true, --	Igeyorhm's shade\
    [9287] = true, -- Garuda\
    [9288] = true -- Ifrit -->\
  }\
\
  data.nilsPlayground.CDBlackList = {\
    --[541] = true, -- striking dummy\
    [7129] = true, -- Doom Chimney\
    [7125] = true, -- Putrid Passenger\
    [7233] = true, -- Specter of the Homeland\
    [7234] = true, -- Specter of the Empire\
    [7646] = true, -- Immortal Key\
    [7673] = true, -- Draconic Regard\
    [7703] = true, -- Scarlet Plume\
    [7725] = true, -- Scarlet Lady\
    [8826] = true, -- Shadow of the Ancients\
    [8346] = true, -- Granite Gaol\
    [8342] = true, -- Arcane Sphere\
    [9319] = true, -- electric aether\
    -- [9320] = true, -- aqueous aether\
    [9321] = true -- earthen aether\
  }\
\
  data.nilsPlayground.OmniList = {\
    -- [541] = true, -- striking dummy\
    [3069] = true, -- Sand Sphere\
    [4815] = true, -- Arcane Sphere\
    [5640] = true, -- Shinryu\
    [5789] = true, -- Tail\
    [6055] = true, -- Neo Exdeath\
    [6257] = true, -- Magitek Pod\
    [6928] = true, -- Shard of Emptiness\
    [6933] = true, -- Aqua Sphere\
    [6934] = true, -- Blizzard III\
    [6950] = true, -- Command Tower\
    [7097] = true, -- Demon Chadarnook\
    [7122] = true, -- Malice\
    [7126] = true, -- Ghost\
    [7127] = true, -- Phantom Train\
    [7202] = true, -- Daidarabotchi\
    [7537] = true, -- Specter of Zenos\
    [7575] = true, -- Iron Chain\
    [7637] = true, -- Left Arm Unit\
    [7638] = true, -- Right Arm Unit\
    [7646] = true, -- Immortal Key\
    [7657] = true, -- Ultima, the High Seraph\
    [7694] = true, -- Dark Crystal\
    [7699] = true, -- Level Checker\
    [7700] = true, -- Level Checker\
    [7899] = true, -- The Thunder God\
    [7901] = true, -- Icewolf\
    [7908] = true, -- Ruination\
    [8145] = true, -- Painted Root\
    [8261] = true, -- Forgiven Whimsy\
    [8267] = true, -- Forgiven Apathy\
    [8270] = true, -- Forgiven Revelry\
    [8342] = true, -- Arcane Sphere\
    [8346] = true, -- Granite Gaol\
    [10643] = true, -- Granite Gaol\
    [8351] = true, -- Aetherial Gaol\
    [8570] = true, -- Iron Chain\
    [8958] = true, -- Liar's Lyre\
    [9143] = true, -- Hobbes\
    [9144] = true, -- Hobbes\
    [9145] = true, -- Hobbes\
    [9147] = true, -- Engels\
    [9020] = true, -- Engels\
    [8486] = true, -- Leviathan savage\
    [10604] = true, -- Leviathan savage\
    [8349] = true, -- Titan Maximum savage\
    [9298] = true, -- The Idol of Darkness\
    [9300] = true, -- Blasphemy\
    [9301] = true, -- Idolatry\
    [9322] = true, -- shiva add Luminous Aether\
    [9320] = true, -- shiva add aqueous\
    [9321] = true, -- shiva add Earthen Aether\
    [9319] = true, -- shiva add electric\
    [9358] = true -- Ice Veil\
  }\
\
-- ** Abilities activation **\
\
if data.nilsPlayground.ExecuteShadeShift == nil then\
  function data.nilsPlayground.ExecuteShadeShift()\
    if data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true or data.nilsPlayground.CustomConditionChecks.inOpener() == true or data.nilsPlayground.oGCDSafe() == false then return false end\
\
    -- ignore if have scholar shield\
    if HasBuff(Player.id,297) or Player.hp.percent > 75 then return false end\
\
    local actionskill = ActionList:Get(1, 2241)\
    if actionskill.cdmax - actionskill.cd > .5 then return false end\
\
    -- if sally installed, use hotbar, otherwise use base\
    if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast(Player.id) end\
    return true\
    end\
end\
\
if data.nilsPlayground.ExecuteFeint == nil then\
  function data.nilsPlayground.ExecuteFeint()\
    if data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true or data.nilsPlayground.CustomConditionChecks.inOpener() == true or data.nilsPlayground.oGCDSafe() == false then return false end\
\
    local target = Player:GetTarget()\
    if target == nil or not table.valid(target) or target.attackable or HasBuff(target.id, 1195) then return false end\
\
    local actionskill = ActionList:Get(1, 7549)\
    if actionskill.cdmax - actionskill.cd > .5 then return false end\
\
    -- if sally installed, use hotbar, otherwise use base\
    if SallyNIN ~= nil then SallyNIN.HotBarConfig.Feint.enabled = false else	actionskill:Cast(target.id) end\
    return true\
  end\
end\
\
if data.nilsPlayground.ExecuteArmsLength == nil then\
  function data.nilsPlayground.ExecuteArmsLength()\
    if data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true or data.nilsPlayground.CustomConditionChecks.inOpener() == true or data.nilsPlayground.oGCDSafe() == false then return false end\
\
    local actionskill = ActionList:Get(1, 7548)\
    if actionskill.cdmax - actionskill.cd > .5 then return false end\
    -- if sally installed, use hotbar, otherwise use base\
    if SallyNIN ~= nil then SallyNIN.HotBarConfig.Armslength.enabled = false else	actionskill:Cast(Player.id) end\
    if MoogleTTS ~= nil then MoogleTTS.Speak(\"knockback\") end\
  end\
end\
\
if data.nilsPlayground.ExecuteSprint == nil then\
  function data.nilsPlayground.ExecuteSprint()\
    if data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true or data.nilsPlayground.CustomConditionChecks.inOpener() == true or data.nilsPlayground.oGCDSafe() == false then return false end\
\
    local actionskill = ActionList:Get(1, 3)\
    if actionskill.cdmax - actionskill.cd > .5 then return false end\
    -- if sally installed, use hotbar, otherwise use base\
    if SallyNIN ~= nil then SallyNIN.HotBarConfig.Sprint.enabled = false else	actionskill:Cast(Player.id) end\
  end\
end\
\
if data.nilsPlayground.ExecuteTrueNorth == nil then\
  function data.nilsPlayground.ExecuteTrueNorth()\
    if HasBuff(Player.id, 1250) or data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true or data.nilsPlayground.CustomConditionChecks.inOpener() == true or data.nilsPlayground.oGCDSafe() == false then return false end\
\
    local actionskill = ActionList:Get(1, 7546)\
    if actionskill.cdmax - actionskill.cd > .5 then return false end\
    -- if sally installed, use hotbar, otherwise use base\
    if SallyNIN ~= nil then SallyNIN.HotBarConfig.TrueNorth.enabled = false else	actionskill:Cast(Player.id) end\
  end\
end\
\
if data.nilsPlayground.oGCDSafe == nil then\
  function data.nilsPlayground.oGCDSafe()\
    local actionskill = ActionList:Get(1, 2240)\
    if actionskill.cdmax - actionskill.cd > .8 then return true else return false end\
  end\
end\
\
-- ***************************\
\
  data.nilsPlayground.lastBurnBossCheck = 0\
\
  data.nilsPlayground.ResetToggles()\
\
  data.nilsPlayground.Log(\"dependencies loaded\")\
\
  data.nilsPlayground.version = 2.1\
\
  data.nilDataLoaded = true\
  NILS_PLAYGROUND = true\
end\
\
d(\"timeline dependancy loaded\")\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dependancies",
			["throttleTime"] = 0,
			["time"] = 14.5,
			["timeRange"] = true,
			["timelineIndex"] = 2,
			["timerEndOffset"] = 14,
			["timerOffset"] = 0,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "d6651d50-00a5-c7f0-bd04-b6c8ae59a84a",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Handler.Reset()\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reset Toggle Controls",
			["throttleTime"] = 0,
			["time"] = 14.5,
			["timeRange"] = false,
			["timelineIndex"] = 2,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "26e4c108-2f0c-43d3-aed7-5b890cc84588",
		},
	},
	[14] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteFeint() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 72.6,
			["timeRange"] = true,
			["timelineIndex"] = 14,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "c25dfdfb-6051-171e-9d5d-74a8e2e223cf",
		},
	},
	[24] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 134.7,
			["timeRange"] = true,
			["timelineIndex"] = 24,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "eeb40cda-de2a-1570-837d-daae48349d28",
		},
	},
	[27] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "SallyNIN.SkillSettings.TrueNorth.enabled = false\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "True North off",
			["throttleTime"] = 0,
			["time"] = 157.6,
			["timeRange"] = true,
			["timelineIndex"] = 27,
			["timerEndOffset"] = 0,
			["timerOffset"] = -3,
			["timerStartOffset"] = -8,
			["used"] = false,
			["uuid"] = "e958ecbe-a8e6-fd47-9829-c1c0c8eff282",
		},
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 3,
					["actionID"] = -1,
					["actionLua"] = "",
					["allowInterrupt"] = false,
					["conditions"] = {
						[1] = 1,
					},
					["endIfUsed"] = false,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = true,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = 1,
					["targetType"] = 5,
					["untarget"] = false,
					["useForWeaving"] = false,
					["usePot"] = false,
					["used"] = false,
					["variableTogglesType"] = 1,
				},
			},
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0,
					["actionID"] = -1,
					["buffCheckType"] = 1,
					["buffDuration"] = 0,
					["buffID"] = -1,
					["buffIDList"] = multiRefObjects[1],
					["category"] = 4,
					["comparator"] = 1,
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[2],
					["contentid"] = -1,
					["enmityValue"] = 0,
					["gaugeIndex"] = 1,
					["gaugeValue"] = 0,
					["hpType"] = 1,
					["hpValue"] = 0,
					["inCombatType"] = 1,
					["inRangeValue"] = 0,
					["lastSkillID"] = -1,
					["localmapid"] = -1,
					["matchAnyBuff"] = false,
					["mpType"] = 1,
					["mpValue"] = 0,
					["name"] = "",
					["partyHpType"] = 1,
					["partyHpValue"] = 0,
					["partyMpType"] = 1,
					["partyMpValue"] = 0,
					["partyTargetContentID"] = -1,
					["partyTargetName"] = "",
					["partyTargetNumber"] = 1,
					["partyTargetSubType"] = 1,
					["partyTargetType"] = 1,
					["rangeCheckSourceSubType"] = 1,
					["rangeCheckSourceType"] = 1,
					["rangeSourceContentID"] = -1,
					["rangeSourceName"] = "",
					["setEventTargetSubtype"] = 1,
					["setFirstMatch"] = false,
				},
			},
			["enabled"] = true,
			["execute"] = "",
			["executeType"] = 1,
			["lastUse"] = 0,
			["loop"] = true,
			["luaReturnsAction"] = false,
			["name"] = "target boss",
			["throttleTime"] = 0,
			["time"] = 157.6,
			["timeRange"] = true,
			["timelineIndex"] = 27,
			["timerEndOffset"] = 5,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "5f9ee68d-0b8b-f1bc-be30-81e0b5af2507",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local actionskill =  ActionList:Get(1, 7546)\
if actionskill.cdmax - actionskill.cd < 1 then \
  if SallyNIN ~= nil then SallyNIN.HotBarConfig.TrueNorth.enabled = true = false else	actionskill:Get(1, 7546):Cast(Player.id) end\
  SallyNIN.SkillSettings.TrueNorth.enabled = true\
  self.used = true\
end		\
\
\
\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "True North and back on",
			["throttleTime"] = 0,
			["time"] = 157.6,
			["timeRange"] = true,
			["timelineIndex"] = 27,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "a417c075-0474-9ec9-8439-d1b1985477b7",
		},
	},
	[31] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 196.9,
			["timeRange"] = true,
			["timelineIndex"] = 31,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "8f00f6f9-395c-d3fe-8ebb-ca7d5036a595",
		},
	},
	[32] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteFeint() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 205.2,
			["timeRange"] = true,
			["timelineIndex"] = 32,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "b9a963e3-0d3f-6625-8d79-50aab4a82754",
		},
	},
	[35] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 221.4,
			["timeRange"] = true,
			["timelineIndex"] = 35,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "8385af3a-daa4-b214-adca-2b1eafe4f152",
		},
	},
	[38] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 237.1,
			["timeRange"] = true,
			["timelineIndex"] = 38,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "cbfc3162-a142-037f-8642-771193fe45c1",
		},
	},
	[40] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 253.3,
			["timeRange"] = true,
			["timelineIndex"] = 40,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "88d47f81-ee92-dfea-a18c-582d48f45652",
		},
	},
	[50] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 314.3,
			["timeRange"] = true,
			["timelineIndex"] = 50,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "64ab0d3f-8ebd-73bb-955a-a23d72b6661b",
		},
	},
	[53] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "SallySAM.SkillSettings.TrueNorth.enabled = false\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "True North off",
			["throttleTime"] = 0,
			["time"] = 337.2,
			["timeRange"] = true,
			["timelineIndex"] = 53,
			["timerEndOffset"] = 0,
			["timerOffset"] = -3,
			["timerStartOffset"] = -8,
			["used"] = false,
			["uuid"] = "9aec3630-c44b-7b5e-beea-80c819c0deb4",
		},
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 3,
					["actionID"] = -1,
					["actionLua"] = "",
					["allowInterrupt"] = false,
					["conditions"] = {
						[1] = 1,
					},
					["endIfUsed"] = false,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = true,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = 1,
					["targetType"] = 5,
					["untarget"] = false,
					["useForWeaving"] = false,
					["usePot"] = false,
					["used"] = false,
					["variableTogglesType"] = 1,
				},
			},
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0,
					["actionID"] = -1,
					["buffCheckType"] = 1,
					["buffDuration"] = 0,
					["buffID"] = -1,
					["buffIDList"] = multiRefObjects[1],
					["category"] = 4,
					["comparator"] = 1,
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[2],
					["contentid"] = -1,
					["enmityValue"] = 0,
					["gaugeIndex"] = 1,
					["gaugeValue"] = 0,
					["hpType"] = 1,
					["hpValue"] = 0,
					["inCombatType"] = 1,
					["inRangeValue"] = 0,
					["lastSkillID"] = -1,
					["localmapid"] = -1,
					["matchAnyBuff"] = false,
					["mpType"] = 1,
					["mpValue"] = 0,
					["name"] = "",
					["partyHpType"] = 1,
					["partyHpValue"] = 0,
					["partyMpType"] = 1,
					["partyMpValue"] = 0,
					["partyTargetContentID"] = -1,
					["partyTargetName"] = "",
					["partyTargetNumber"] = 1,
					["partyTargetSubType"] = 1,
					["partyTargetType"] = 1,
					["rangeCheckSourceSubType"] = 1,
					["rangeCheckSourceType"] = 1,
					["rangeSourceContentID"] = -1,
					["rangeSourceName"] = "",
					["setEventTargetSubtype"] = 1,
					["setFirstMatch"] = false,
				},
			},
			["enabled"] = true,
			["execute"] = "",
			["executeType"] = 1,
			["lastUse"] = 0,
			["loop"] = true,
			["luaReturnsAction"] = false,
			["name"] = "target boss",
			["throttleTime"] = 0,
			["time"] = 337.2,
			["timeRange"] = true,
			["timelineIndex"] = 53,
			["timerEndOffset"] = 5,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "93334d97-d2c4-eb96-b6ca-247e878901e0",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local actionskill =  ActionList:Get(1, 7546)\
if actionskill.cdmax - actionskill.cd < 1 then \
  if SallyNIN ~= nil then SallyNIN.HotBarConfig.TrueNorth.enabled = true = false else	actionskill:Get(1, 7546):Cast(Player.id) end\
  SallyNIN.SkillSettings.TrueNorth.enabled = true\
  self.used = true\
end		\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "True North and back on",
			["throttleTime"] = 0,
			["time"] = 337.2,
			["timeRange"] = true,
			["timelineIndex"] = 53,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "0e0c4fa8-7453-328e-b4cf-a515f7835a88",
		},
	},
	[57] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 375.5,
			["timeRange"] = true,
			["timelineIndex"] = 57,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "3610d1d5-8cae-9c8a-857b-306149cad46e",
		},
	},
	[58] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteFeint() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 383.8,
			["timeRange"] = true,
			["timelineIndex"] = 58,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "be00d80a-cfd4-4e04-83d3-a2f3444c0503",
		},
	},
	[61] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 399.9,
			["timeRange"] = true,
			["timelineIndex"] = 61,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "c448788d-722f-9af2-ab46-6e50fba0852b",
		},
	},
	[65] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 415.4,
			["timeRange"] = true,
			["timelineIndex"] = 65,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "c913a97e-a976-3181-8cd2-07fec63628cb",
		},
	},
	[67] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 431.7,
			["timeRange"] = true,
			["timelineIndex"] = 67,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "c9474345-356c-8f54-b860-a1ce2dccf33f",
		},
	},
	[72] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- putting this on a loop becuase it can mess up if the group wipe resets.\
\
data.nilsPlayground.Toggles.OmniWhiteList.TimelineActive == true\
\
if SallyNIN ~= nil then	SallyNIN.SkillSettings.Omni.enabled = true end\
\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Enable Omni",
			["throttleTime"] = 0,
			["time"] = 865.5,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 10,
			["timerOffset"] = 0,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "8f46bfd4-d192-f881-8629-9729857bfeb8",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "data.nilsPlayground.TurnOffTrickAttackWindow(true)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn off TrickAttack",
			["throttleTime"] = 0,
			["time"] = 865.5,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "668a30b0-92db-b5a9-9fc3-919e7807630e",
		},
	},
	[73] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local hasBuff = false\
if HasBuff(Player.id,2211) then \
  hasBuff = true\
  if MoogleTTS ~= nil then MoogleTTS.Speak(\"Attack Red\") end\
end\
\
if HasBuff(Player.id,2210) then \
  hasBuff = true\
  if MoogleTTS ~= nil then MoogleTTS.Speak(\"Attack Blue\") end\
end\
\
if hasBuff == true then\
  data.nilsPlayground.TurnOnTrickAttackWindow()\
  self.used = true\
end\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn on Trick when Buff",
			["throttleTime"] = 0,
			["time"] = 1000,
			["timeRange"] = true,
			["timelineIndex"] = 73,
			["timerEndOffset"] = 20,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "91272cad-4611-c09d-8339-acf1978972f2",
		},
	},
	[82] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable and not HasBuff(target.id, 1195)  then\
  local actionskill = ActionList:Get(1, 7549)\
\
  if actionskill.cdmax - actionskill.cd < 1 then\
    -- if sally installed, use hotbar, otherwise use base\
		  if SallyNIN ~= nil then SallyNIN.HotBarConfig.Feint.enabled = false else	actionskill:Cast(target.id) end\
  end		\
  self.used = true\
end		",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 1052,
			["timeRange"] = true,
			["timelineIndex"] = 82,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "a1e77a99-2075-96d5-91d3-12411218cdf6",
		},
	},
	[90] = {
	},
	[91] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "data.nilsPlayground.TurnOffTCJ(true)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn off TCJ",
			["throttleTime"] = 0,
			["time"] = 1143.8,
			["timeRange"] = true,
			["timelineIndex"] = 91,
			["timerEndOffset"] = 10,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "d0ae3f25-371b-298a-9a95-0912da19bf0a",
		},
	},
	[92] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteArmsLength() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Arm's Length",
			["throttleTime"] = 0,
			["time"] = 1156,
			["timeRange"] = true,
			["timelineIndex"] = 92,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "ef6aa3af-5a37-68b5-8bf0-dd082261acf5",
		},
	},
	[93] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "data.nilsPlayground.TurnOnTCJ()\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn On TCJ",
			["throttleTime"] = 0,
			["time"] = 1157,
			["timeRange"] = false,
			["timelineIndex"] = 93,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "fe2674af-b7b1-82da-972c-aa6c88d9f76f",
		},
	},
	[103] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 1235.1,
			["timeRange"] = true,
			["timelineIndex"] = 103,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "fb3ba0fe-4ce8-1bf2-8571-63c0a21a7259",
		},
	},
	[104] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadeshift",
			["throttleTime"] = 0,
			["time"] = 1245.2,
			["timeRange"] = true,
			["timelineIndex"] = 104,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "50353ffc-8751-65f1-8d26-16bf97d79ff9",
		},
	},
	["mapID"] = 912,
	["version"] = 2,
}
return obj1
