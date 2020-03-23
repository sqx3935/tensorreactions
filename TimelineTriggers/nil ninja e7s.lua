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
--[[ ** Verson 4 **\
* tweaked retart boss to continue looping \
* tweaked tcj on off during Threefold Grace\
* converted reactions to full lua (no need anymore to disable if you do not have sallynin)\
* added new dependancy system, timeline and general will not use the same\
* added extra checks to shadeshift\
* added an oGCD safe check\
]]\
\
-- ** Verson 3 **\
-- adjusted trick window during add phase\
-- removed presuiton at end of add phase (to much time between blas death and boss response)\
-- added tcj on/off to threefold grace (exploding orbs)\
-- added pug tts callout\
-- if you have moogle tts, callout for threefold grace\
-- ** Verson 2 **\
-- cleaned up some timers\
-- ** Verson 1 **\
-- removed `away with thee` detarget/assist off, being told left mouse + right mouse + s works perfect without the loss of uptime\
-- if you have moogle TTS, it should tell you which teleport you have\
-- added shadeshift to more events after adds\
-- with help from Dani, tweaked some of the QT's, hopefully much improved";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "ninja-timeline-e7s-changes";
			["time"] = 13;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "44fc27c1-3efb-2fbc-b8c7-56702f33bae7";
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
			["time"] = 13;
			["timeRange"] = true;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 14;
			["timerOffset"] = 0;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "ada04ce8-31e3-c47b-92da-1094808637e7";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Combat.Toggles.Control.Reset() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Reset Toggle Controls";
			["time"] = 13;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "9c1b751e-2c05-33ef-8d97-df790de0f9c4";
		};
	};
	[22] = {
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
					["endIfUsed"] = true;
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
					["buffID"] = 149;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "Retarget boss when stuned";
			["time"] = 116.7;
			["timeRange"] = true;
			["timelineIndex"] = 22;
			["timerEndOffset"] = 15;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "d1822259-7c08-6115-aa9f-d9d861b68d1c";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
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
				[2] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 2;
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
				[3] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 3;
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
				[4] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 4;
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
					["buffID"] = 2240;
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
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 2;
					["buffID"] = 2241;
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
				[3] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 2;
					["buffID"] = 2242;
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
				[4] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 2;
					["buffID"] = 2243;
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
			["enabled"] = false;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Deselect";
			["time"] = 116.7;
			["timeRange"] = true;
			["timelineIndex"] = 22;
			["timerEndOffset"] = 25;
			["timerOffset"] = 4.362;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "af6415b8-49d5-3c20-9768-1133a923499e";
		};
	};
	[27] = {
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
			["time"] = 139.9;
			["timeRange"] = true;
			["timelineIndex"] = 27;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "dc72db6d-6ac3-1555-b1fa-ac4909457d0d";
		};
	};
	[32] = {
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
			["time"] = 163.3;
			["timeRange"] = true;
			["timelineIndex"] = 32;
			["timerEndOffset"] = 2;
			["timerOffset"] = -1;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "9331848c-8dd1-871c-a764-3612eb377772";
		};
	};
	[38] = {
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
					["endIfUsed"] = true;
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
					["buffID"] = 149;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "Retarget boss when stuned";
			["time"] = 177.5;
			["timeRange"] = true;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 15;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "67c28b68-b825-5786-9c37-9d4a22df1e69";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
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
				[2] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 2;
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
				[3] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 3;
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
				[4] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 4;
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
					["buffID"] = 2240;
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
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 2;
					["buffID"] = 2241;
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
				[3] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 2;
					["buffID"] = 2242;
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
				[4] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 2;
					["buffID"] = 2243;
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
			["enabled"] = false;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Deselect";
			["time"] = 177.5;
			["timeRange"] = true;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 25;
			["timerOffset"] = 4.362;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "1925faca-3d96-f8c4-b94e-11fe176959d2";
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
					["endIfUsed"] = true;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["time"] = 179.5;
			["timeRange"] = true;
			["timelineIndex"] = 39;
			["timerEndOffset"] = 5;
			["timerOffset"] = -0.025000000000006;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "725fa52f-f3f1-c035-9c44-d01606e45566";
		};
	};
	[43] = {
		[1] = {
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
			["name"] = "Trick Window on";
			["time"] = 191.7;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 10;
			["timerOffset"] = 7.5;
			["timerStartOffset"] = 7.5;
			["used"] = false;
			["uuid"] = "24fa094b-ecea-c5b4-92a9-3218760e174a";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyNIN.HotBarConfig.Suiton.enabled = false\
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
					["actionCDValue"] = 1;
					["actionID"] = 2258;
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
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 507;
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
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "return data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == false";
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
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Suiton";
			["time"] = 191.7;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "9b58756c-259c-658b-ba82-6613a679348c";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyNIN.HotBarConfig.ACRefresh.enabled = false\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
						[2] = 2;
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
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 6;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 2;
					["gaugeValue"] = 40000;
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
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "return data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == false";
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
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Huton Check";
			["time"] = 191.7;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 6;
			["timerOffset"] = -2.5999999046326;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "c9549c9e-b2c3-3fa6-b585-a05345e5ed82";
		};
	};
	[52] = {
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
			["time"] = 224.9;
			["timeRange"] = true;
			["timelineIndex"] = 52;
			["timerEndOffset"] = 0;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -23;
			["used"] = false;
			["uuid"] = "170d21d3-eeb3-7710-a9a5-f17b8184da59";
		};
	};
	[55] = {
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
			["time"] = 243.6;
			["timeRange"] = true;
			["timelineIndex"] = 55;
			["timerEndOffset"] = 2;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "13b63bbb-f5d5-4ebf-b412-1507dc1c3dbd";
		};
	};
	[56] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyNIN.HotBarConfig.Suiton.enabled = false\
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
					["actionCDValue"] = 1;
					["actionID"] = 2258;
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
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 507;
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
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "return data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == false";
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
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Suiton";
			["time"] = 253.7;
			["timeRange"] = true;
			["timelineIndex"] = 56;
			["timerEndOffset"] = 1;
			["timerOffset"] = -3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "34add591-e1d8-efda-a3a9-e969ef7d2e8e";
		};
	};
	[57] = {
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
			["time"] = 254.5;
			["timeRange"] = false;
			["timelineIndex"] = 57;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "6c3a1f7d-040a-82cf-9dc1-c2193cecfba6";
		};
	};
	[58] = {
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
					["buffID"] = 149;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "Retarget boss when stuned";
			["time"] = 264.3;
			["timeRange"] = true;
			["timelineIndex"] = 58;
			["timerEndOffset"] = 25;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "9ba55239-9e6e-d300-9355-9ea2b50c134a";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
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
				[2] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 2;
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
				[3] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 3;
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
				[4] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Player:ClearTarget()\
self.used = true ";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 4;
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
					["buffID"] = 2240;
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
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 2;
					["buffID"] = 2241;
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
				[3] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 2;
					["buffID"] = 2242;
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
				[4] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 2;
					["buffID"] = 2243;
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
			["enabled"] = false;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Deselect";
			["time"] = 264.3;
			["timeRange"] = true;
			["timelineIndex"] = 58;
			["timerEndOffset"] = 25;
			["timerOffset"] = 4.362;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "201e2fcf-aebe-8ce6-b650-4e11109f9ed2";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.nilsPlayground.TurnOnTCJ()\
self.used=true";
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
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = 149;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "TCJ On";
			["time"] = 264.3;
			["timeRange"] = false;
			["timelineIndex"] = 58;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "598f8426-767d-18c7-8e88-02f7d5e95d26";
		};
	};
	[59] = {
		[1] = {
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
			["name"] = "Trick Window on";
			["time"] = 268.1;
			["timeRange"] = true;
			["timelineIndex"] = 59;
			["timerEndOffset"] = 1;
			["timerOffset"] = 7.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "f8cedb55-172c-8f96-9249-de14a2e73f02";
		};
		[2] = {
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
			["time"] = 268.1;
			["timeRange"] = false;
			["timelineIndex"] = 59;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "45878e6c-0313-ab8b-98b1-0dfd8dad40a0";
		};
	};
	[62] = {
	};
	[64] = {
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
			["time"] = 323.4;
			["timeRange"] = true;
			["timelineIndex"] = 64;
			["timerEndOffset"] = 6;
			["timerOffset"] = -1;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "901827ff-815b-6c5e-9fbb-76b3fb5830bf";
		};
	};
	[69] = {
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
			["time"] = 333.9;
			["timeRange"] = true;
			["timelineIndex"] = 69;
			["timerEndOffset"] = 30;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "b411200b-fd28-fca4-8033-0c73ac36069c";
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
			["name"] = "Trick Window on";
			["time"] = 333.9;
			["timeRange"] = true;
			["timelineIndex"] = 69;
			["timerEndOffset"] = 1;
			["timerOffset"] = 7.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "3da60c26-dbe3-25ed-9887-b89af67483ee";
		};
	};
	[71] = {
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
			["time"] = 500;
			["timeRange"] = true;
			["timelineIndex"] = 71;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "db3e66ea-99ef-2a6d-b6db-25710a6f9b6e";
		};
	};
	[75] = {
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
			["time"] = 514.4;
			["timeRange"] = true;
			["timelineIndex"] = 75;
			["timerEndOffset"] = 17;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "cfda1c02-3c6a-d566-87ce-9b05740204d9";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyNIN.HotBarConfig.Suiton.enabled = false\
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
					["actionCDValue"] = 1;
					["actionID"] = 2258;
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
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 507;
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
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "return data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == false";
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
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Suiton";
			["time"] = 514.4;
			["timeRange"] = true;
			["timelineIndex"] = 75;
			["timerEndOffset"] = 1;
			["timerOffset"] = -3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "e3b883a8-8409-b3a5-af3d-0d0c9db15687";
		};
	};
	[87] = {
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
			["time"] = 565.5;
			["timeRange"] = true;
			["timelineIndex"] = 87;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "da7ef435-a5ca-198f-9901-35da516309ab";
		};
	};
	[101] = {
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
			["time"] = 636.2;
			["timeRange"] = true;
			["timelineIndex"] = 101;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "0f0139ac-d9b7-1e40-b063-3fc24eb1c5c2";
		};
	};
	[106] = {
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
			["time"] = 668.5;
			["timeRange"] = true;
			["timelineIndex"] = 106;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "4a758c72-b702-0e71-9b47-009c11812674";
		};
	};
	[108] = {
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
			["time"] = 677.6;
			["timeRange"] = true;
			["timelineIndex"] = 108;
			["timerEndOffset"] = 17;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "84d63b9b-579a-5a13-a8ea-a12098ce5277";
		};
	};
	[109] = {
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
			["time"] = 683.7;
			["timeRange"] = false;
			["timelineIndex"] = 109;
			["timerEndOffset"] = 0;
			["timerOffset"] = -2;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "9b108d76-3614-db05-a47f-b74d1318924c";
		};
	};
	[110] = {
	};
	[111] = {
	};
	[112] = {
	};
	[113] = {
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
			["time"] = 736.6;
			["timeRange"] = true;
			["timelineIndex"] = 113;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "73523460-bb8b-9377-97d8-7c329276549d";
		};
		[2] = {
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
			["time"] = 736.6;
			["timeRange"] = true;
			["timelineIndex"] = 113;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "b3090584-9890-5776-8af9-69a25709bb38";
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
			["time"] = 746.2;
			["timeRange"] = true;
			["timelineIndex"] = 114;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "63e8d50b-0b3e-b85a-a3af-682df689bdfc";
		};
	};
	[115] = {
	};
	[116] = {
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
			["time"] = 761.9;
			["timeRange"] = false;
			["timelineIndex"] = 116;
			["timerEndOffset"] = 0;
			["timerOffset"] = -2;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "a38f5cce-5788-5070-8643-f3a609fb0f5f";
		};
	};
	[117] = {
	};
	[118] = {
	};
	[119] = {
	};
	[120] = {
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
			["time"] = 814.8;
			["timeRange"] = true;
			["timelineIndex"] = 120;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "3721fce1-cd27-638d-95aa-cb63b964f450";
		};
		[2] = {
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
			["time"] = 814.8;
			["timeRange"] = true;
			["timelineIndex"] = 120;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "099e3773-13fe-ac37-8971-a3b74f31108c";
		};
	};
	[121] = {
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
			["time"] = 824.3;
			["timeRange"] = true;
			["timelineIndex"] = 121;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "e07c5cbf-f54a-a954-a58a-9bd92050bcf9";
		};
	};
	["mapID"] = 908;
	["version"] = 6;
}
return obj1
