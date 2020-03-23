-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[2] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "-- ** Contributors **\
--[[\
		* Nil (maintainer)\
		* Dani\
]]\
\
-- *************************************************************************************\
\
--[[ ** Verson 2 **\
* removed unneeded events up to adds (still working to clear past that... sorry)\
* added sprint during heavenly strike if you get heavy\
* added sallynin huton cast to execute as soon as add phase transition starts\
* adds for aqueous use leg sweep on cooldown (WIP)\
* turn off ninjutsu and cds if target is electric\
* converted reactions to full lua (no need anymore to disable if you do not have sallynin)\
* added new dependancy system, timeline and general will not use the same\
* added extra checks to shadeshift\
* added an oGCD safe check\
]]\
\
-- ** Verson 1 **\
-- added all the stuff";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "ninja-timeline-e8s-changes";
			["time"] = 16;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "b808c58a-831c-abd4-8f28-acdbf5e1f8bd";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
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
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Dependancies";
			["time"] = 16;
			["timeRange"] = true;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 14;
			["timerOffset"] = 0;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "781b68e4-690b-416e-adb2-6d7f516f5540";
		};
	};
	[8] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 63.7;
			["timeRange"] = true;
			["timelineIndex"] = 8;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "8ca85b27-cca1-f2a5-b3c0-f0b7a95525de";
		};
	};
	[11] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 76.9;
			["timeRange"] = true;
			["timelineIndex"] = 11;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "011aebf6-6729-0249-be98-c4d9cf9657f7";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 1;
					["actionID"] = 3;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
						[2] = 2;
						[3] = 3;
						[4] = 4;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = true;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = 240;
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 496;
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[3] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1186;
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[4] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 8;
					["buffID"] = 240;
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Sprint";
			["time"] = 76.9;
			["timeRange"] = true;
			["timelineIndex"] = 11;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "4c23832e-915f-c423-a051-36d458130c98";
		};
	};
	[12] = {
	};
	[16] = {
	};
	[20] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if data.nilsPlayground.ExecuteFeint() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Feint";
			["time"] = 101.7;
			["timeRange"] = true;
			["timelineIndex"] = 20;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "4deb6413-56bb-de6a-8599-07eee4a47cc4";
		};
	};
	[21] = {
	};
	[24] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 137.4;
			["timeRange"] = true;
			["timelineIndex"] = 24;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "30b5c64a-2f52-4f50-b508-7c2d31aeb7ec";
		};
	};
	[33] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 193.3;
			["timeRange"] = true;
			["timelineIndex"] = 33;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "10738133-e3f6-ce55-8791-6bd3e3d21894";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.nilsPlayground.TurnOffTrickAttackWindow(true)\
self.used = true\
";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Trick window off";
			["time"] = 193.3;
			["timeRange"] = true;
			["timelineIndex"] = 33;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = -15;
			["used"] = false;
			["uuid"] = "6652f95b-49a3-b36a-babf-9e2ce51966cd";
		};
	};
	[34] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.nilsPlayground.TurnOffTrickAttackWindow(true)\
self.used = true\
";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Trick window off";
			["time"] = 201.5;
			["timeRange"] = true;
			["timelineIndex"] = 34;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "e4fb4e3a-c035-cd1f-aaa6-bb459aebacbf";
		};
	};
	[36] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.nilsPlayground.TurnOnTrickAttackWindow()\
\
SallyNIN.HotBarConfig.Huton.enabled = false\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 2;
					["buffID"] = 1963;
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Refresh Huton and Trick window on";
			["time"] = 213;
			["timeRange"] = true;
			["timelineIndex"] = 36;
			["timerEndOffset"] = 14;
			["timerOffset"] = 8;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "70e298e3-dba4-0df0-a875-12ca442edea4";
		};
	};
	[37] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = 9320;
					["targetName"] = "Aqueous Aether";
					["targetSubType"] = 1;
					["targetType"] = 3;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target aqueous aether";
			["time"] = 229.2;
			["timeRange"] = true;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "efdd78b8-48e3-c656-85ed-851860708933";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 2;
						[2] = 1;
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "Aqueous Aether";
					["targetSubType"] = 2;
					["targetType"] = 5;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "local target = Player:GetTarget()\
return target == nil or target.hp.current == 0";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "target others";
			["time"] = 229.2;
			["timeRange"] = true;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 65;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "33cdcaef-bf2a-fc50-a403-2a896b886fd9";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == false and data.nilsPlayground.CustomConditionChecks.inOpener() == false then\
  local target = Player:GetTarget()\
		-- 2 is leg sweep stun\
  if target ~= nil and table.valid(target) and target.attackable and target.contentid == 9320 and not HasBuff(target.id, 2) and target.action == 50 then\
    local actionskill = ActionList:Get(1, 7863)\
    if actionskill:IsReady(target.id) then actionskill:Cast(target.id) end\
    self.used = true\
  end\
end";
			["executeType"] = 2;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "Leg Sweep";
			["time"] = 229.2;
			["timeRange"] = true;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "c0e382e2-a448-27bb-965e-bebe0c6798b5";
		};
	};
	[39] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = 9320;
					["targetName"] = "Aqueous Aether";
					["targetSubType"] = 1;
					["targetType"] = 3;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target aqueous aether";
			["time"] = 243.3;
			["timeRange"] = true;
			["timelineIndex"] = 39;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "0676364c-635f-4f6c-886c-f06311ddd501";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 1;
					["actionID"] = 7863;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
						[2] = 2;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = true;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 4;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 1;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["contentid"] = 9320;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[2] = {
					["actionCDValue"] = 1;
					["actionID"] = 7863;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = false;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Leg Sweep";
			["time"] = 243.3;
			["timeRange"] = true;
			["timelineIndex"] = 39;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "ede49766-d60f-74d4-9b0a-c74b4799a52c";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == false and data.nilsPlayground.CustomConditionChecks.inOpener() == false then\
  local target = Player:GetTarget()\
		-- 2 is leg sweep stun\
  if target ~= nil and table.valid(target) and target.attackable and target.contentid == 9320 and not HasBuff(target.id, 2) and target.action == 50 then\
    local actionskill = ActionList:Get(1, 7863)\
    if actionskill:IsReady(target.id) then actionskill:Cast(target.id) end\
    self.used = true\
  end\
end";
			["executeType"] = 2;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "Leg Sweep";
			["time"] = 243.3;
			["timeRange"] = true;
			["timelineIndex"] = 39;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "2ec0060a-28a5-29e5-b716-3fd9e2d2049f";
		};
	};
	[40] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.nilsPlayground.TurnOffTrickAttackWindow(true)\
self.used = true\
";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Trick window off";
			["time"] = 253;
			["timeRange"] = true;
			["timelineIndex"] = 40;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = -15;
			["used"] = false;
			["uuid"] = "b9020808-76a2-9869-a0c8-fce9072e7f5f";
		};
	};
	[41] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = 9320;
					["targetName"] = "Aqueous Aether";
					["targetSubType"] = 1;
					["targetType"] = 3;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target aqueous aether";
			["time"] = 257.4;
			["timeRange"] = true;
			["timelineIndex"] = 41;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "1ddd2115-adc8-66a5-b788-76a9455eb553";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 1;
					["actionID"] = 7863;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
						[2] = 2;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = true;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 4;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 1;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["contentid"] = 9320;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[2] = {
					["actionCDValue"] = 1;
					["actionID"] = 7863;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = false;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Leg Sweep";
			["time"] = 257.4;
			["timeRange"] = true;
			["timelineIndex"] = 41;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "1f2df809-deb0-851e-93f2-33027833c9a8";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == false and data.nilsPlayground.CustomConditionChecks.inOpener() == false then\
  local target = Player:GetTarget()\
		-- 2 is leg sweep stun\
  if target ~= nil and table.valid(target) and target.attackable and target.contentid == 9320 and not HasBuff(target.id, 2) and target.action == 50 then\
    local actionskill = ActionList:Get(1, 7863)\
    if actionskill:IsReady(target.id) then actionskill:Cast(target.id) end\
    self.used = true\
  end\
end";
			["executeType"] = 2;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "Leg Sweep";
			["time"] = 257.4;
			["timeRange"] = true;
			["timelineIndex"] = 41;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "7105cd93-b376-ac6f-8060-92a7d7dab921";
		};
	};
	[43] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = 9320;
					["targetName"] = "Aqueous Aether";
					["targetSubType"] = 1;
					["targetType"] = 3;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target aqueous aether";
			["time"] = 271.5;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "48408d6a-deca-4b8c-a9f6-abd5a369871b";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 1;
					["actionID"] = 7863;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
						[2] = 2;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = true;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 4;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 1;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["contentid"] = 9320;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[2] = {
					["actionCDValue"] = 1;
					["actionID"] = 7863;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = false;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Leg Sweep";
			["time"] = 271.5;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "3eabb030-bbea-1fe8-b66e-61de7789279c";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
						[2] = 2;
					};
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorMagnum_CD";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
				[2] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if not FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 3;
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 30;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 1;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["contentid"] = 9319;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[3] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 30;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "do not suicide on electric aether";
			["time"] = 271.5;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -1;
			["used"] = false;
			["uuid"] = "9fdd1431-3666-b82d-ae2c-0f65b1200aef";
		};
		[4] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.nilsPlayground.TurnOffNinjitsu(true)\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
						[2] = 2;
						[3] = 3;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "return data.nilsPlayground.CustomConditionChecks.CanNinjutsuBeTurnedOff()";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 1;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["contentid"] = 9319;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Turn off Ninjutsu";
			["time"] = 271.5;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 0;
			["timerOffset"] = -6.285;
			["timerStartOffset"] = -15;
			["used"] = false;
			["uuid"] = "89c3b261-a5e9-301b-9058-2fc6d18d0daf";
		};
		[5] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == false and data.nilsPlayground.CustomConditionChecks.inOpener() == false then\
  local target = Player:GetTarget()\
		-- 2 is leg sweep stun\
  if target ~= nil and table.valid(target) and target.attackable and target.contentid == 9320 and not HasBuff(target.id, 2) and target.action == 50 then\
    local actionskill = ActionList:Get(1, 7863)\
    if actionskill:IsReady(target.id) then actionskill:Cast(target.id) end\
    self.used = true\
  end\
end";
			["executeType"] = 2;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "Leg Sweep";
			["time"] = 271.5;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "7670ded2-d553-efa4-953a-13b50a239def";
		};
	};
	[46] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 5;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["time"] = 350.5;
			["timeRange"] = true;
			["timelineIndex"] = 46;
			["timerEndOffset"] = 10;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "75b2d3d6-7bfb-f8d1-ba68-e61b9948bb2a";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.nilsPlayground.TurnOnTrickAttackWindow()\
self.used = true\
";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Trick window on";
			["time"] = 350.5;
			["timeRange"] = true;
			["timelineIndex"] = 46;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = -15;
			["used"] = false;
			["uuid"] = "4a09fc44-094e-9781-9cf5-70859344d719";
		};
	};
	[48] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 368.6;
			["timeRange"] = true;
			["timelineIndex"] = 48;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "379c3ede-e3fa-e488-ac8c-10886a81208b";
		};
	};
	[53] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteArmsLength() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Arm's Length";
			["time"] = 403.2;
			["timeRange"] = true;
			["timelineIndex"] = 53;
			["timerEndOffset"] = 1;
			["timerOffset"] = 0;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "434aa7b4-759e-5cdb-b1ba-798c57c601c5";
		};
	};
	[58] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 427.9;
			["timeRange"] = true;
			["timelineIndex"] = 58;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "9886d449-c261-10a6-95c2-bc9e62d630d0";
		};
	};
	[66] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteFeint() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Feint";
			["time"] = 491.6;
			["timeRange"] = true;
			["timelineIndex"] = 66;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "f7e19c40-43ee-29e0-bfc0-99f737c7201d";
		};
	};
	[72] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteArmsLength() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Arm's Length";
			["time"] = 535.1;
			["timeRange"] = true;
			["timelineIndex"] = 72;
			["timerEndOffset"] = 1;
			["timerOffset"] = 0;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "25eaae50-c052-a7ad-8be8-50eb29991639";
		};
	};
	[73] = {
	};
	[74] = {
	};
	[86] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 620.4;
			["timeRange"] = true;
			["timelineIndex"] = 86;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "91a94290-acff-f864-a0a4-1442ddb0c55d";
		};
	};
	[87] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.nilsPlayground.TurnOffTCJ(true)\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Turn Off TCJ";
			["time"] = 620.7;
			["timeRange"] = true;
			["timelineIndex"] = 87;
			["timerEndOffset"] = 1;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "61ad8bbe-ab54-07cf-8c42-85d8909810d0";
		};
	};
	[88] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.nilsPlayground.TurnOnTCJ()\
self.used=true";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "TCJ On";
			["time"] = 630.8;
			["timeRange"] = true;
			["timelineIndex"] = 88;
			["timerEndOffset"] = 1;
			["timerOffset"] = -3;
			["timerStartOffset"] = -1;
			["used"] = false;
			["uuid"] = "a353454c-f88e-304e-9a8f-49383116fa0a";
		};
	};
	[97] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 676.8;
			["timeRange"] = true;
			["timelineIndex"] = 97;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "4d67ce43-7d4f-e979-83a1-04dc28bda9e8";
		};
	};
	[109] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 738.3;
			["timeRange"] = true;
			["timelineIndex"] = 109;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "1e35add4-829f-a487-bb8a-e199cf2001bf";
		};
	};
	[110] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 745.5;
			["timeRange"] = true;
			["timelineIndex"] = 110;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "b7231e82-90f9-4fd1-97e4-ba612c19c218";
		};
	};
	[112] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 764.3;
			["timeRange"] = true;
			["timelineIndex"] = 112;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "9966cdf8-e6af-5d63-af94-80381543c76b";
		};
	};
	[114] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteShadeShift() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shadeshift";
			["time"] = 784.3;
			["timeRange"] = true;
			["timelineIndex"] = 114;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "fd5ab6e3-8652-bb4e-ab75-f014f83a84b2";
		};
	};
	["mapID"] = 909;
	["version"] = 1;
}
return obj1
