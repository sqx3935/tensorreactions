-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "-- README for Nil's general Ninja Reactions\
-- \
-- Most of reactions fit my game play, I will do my best to disable them before sharing.\
-- \
-- If you would like to see something improved or something else added, please please please reach out.\
--\
-- NOTE: supported combat systems will be in brackets\
-- \
-- \
-- What do they do:\
-- * Dependencies (keep enabled)\
--						** this is the mac daddy, this will set on load, it is a library of functions that other reactions can utilizes, should cut down on copy paste errors.\
--						** you might see an error in console when it first starts, it is just due to the setup.\
-- \
-- * TEA: swap to hand/living liquid when doll is 22%\
--						** Only in TEA, once your doll reaches less then or equal to 22%, which one you need to enable varies by group.\
-- \
-- * TEA: limit cut number\
--						** Copy of Riku's bard one\
--\
-- * [xSalice] Reset: toggles on wipe\
--						** On wipe it will reset the all quick toggles to the default.\
-- \
-- * [xSalice] Reset: on map change\
--						** On map change it will reset toggles.\
--\
-- * [xSalice] Cast: Knockback\
--						** Allows for arms length reactions for maps without a timeline\
-- * [xSalice] Move: Toggle TCJ on Move\
--						** If movement is detected it will disable TCJ for 1 second. this can be helpful for when a mechanic is about to come up and you want to avoid using tcj.\
--						** If you want to hold it for longer then 1 second you can wiggle to keep resetting the timer.\
--\
-- * [xSalice] Move: Toggle Assassinate on Move\
--						** If movement is detected it will disable assassinate for 500ms. this can be helpful for when a mechanic is about to come up and you want to avoid animation lock.\
--\
-- * [xSalice] Burn Boss Low HP\
--						** Burn boss will dump all mudra's when the boss < 1% instead of holding them for trick window\
--						** Note: being improved to add map support so that specific maps can have a different percentage then the default.\
-- \
-- * [xSalice] AOE blacklist\
--						** disables aoe toggle when the target is on the aoe blacklist\
-- \
-- * [xSalice] CD blacklist\
--						** disables CD/Trick Attack toggle when the target is on the cd blacklist\
-- \
-- * [xSalice] Omni Whitelist\
--						** enables omni toggle when the target is an omni target (will need to be updated as new content is released).\
--\
-- * [xSalice] Turn on Ninjutsu\
--						** to improve the success of arms length being used, timeline action can turn off ninjutsu before arms length is used, if this happens, it will turn ninjutus back on.\
\
-- * [xSalice] Toggle DwD\
--						** Deaths, cutscense, mechanics can sometimes cause DWD to fall out of sync with trick attack, this attempt to keep them in sync by only enabling it when your vulnerability is active.\
--\
-- * [xSalice] Toggle Kassatsu\
--						** Save as DwD, Kassatsu can fall out of sync, it will disable it when it is not optimal to use\
--\
-- * [xSalice] Toggle Meisui\
--						** I like to hold meisui to only be used with TCJ\
--\
-- * [xSalice] Cast: Bloodbath\
--						** Uses bloodbath when hp gets low (default 20)\
--\
-- * [xSalice] Cast:  Second Wind\
--						** Uses secondwind when hp gets low (default 40)\
--\
-- * [xSalice] Cast: Shade Shift\
--						** Allows for shade shift reactions for maps without a timeline\
--\
-- * [xSalice] Cast: Feint\
--						** Allows for feint reactions for maps without a timeline\
\
\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "README";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "b8f57a0f-55d8-15c7-b8a8-3fcf1bf126c1";
	};
	[2] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "-- ** Contributors **\
--[[\
		* Nil (maintainer)\
		* Dani\
]]\
\
-- *************************************************************************************\
\
--[[ ** Verson 4 **\
* filter added to `onentitychanneling` to ignore friendly targets\
* cleaned up code to make it more readable and simplify fall through\
* added on death monitor and updated general reactions to check the time\
* fix for CD blacklist, was missing the timeline override\
* fix dwd QT, in rewrite it was missing the option to turn it off after ta window\
* added 2 second delay between heals, this should improve and space out the heals more effectively\
* removed rubyex feint and knockback\
]]\
\
--[[ ** Version 3 **\
* added E8S adds to omni list\
* added E8S electric to cd blacklist\
* tweaked the checks for all `Cast` and `Move` actions, should help to stop them from activating when out of combat and or dead (timeline ones still need tweaked for this)\
]]\
\
\
--[[ ** Verson 2 **\
* massive refactor, removes the need to have sally vs other reactions\
* Updated burn boss for lower level burn targets\
* added an `experimental` time to kill reactions (needs a ton of testing, enable only if you like to live on the edge)\
** on none burn targets it will attempt to use TTK to determine if trick window should be enabled. as a fall back it will also use the target current hp.\
* Added shive to burn boss list\
* fixed id for ramuh\
* added an `experimental` reaction that if huton is above 15k and in trick window, it will toggle off AC Refresh (needs a ton of testing)\
]]\
\
--[[ ** Verson 1 **\
* Updated Feint: Included new dungeon, eden normal, ruby normal\
* Updated Shadeshift: Included new dungeon, eden normal, ruby normal\
* Updated aoe whitelist\
* Updated cd blacklist\
* updates to dependencies\
* added more base skills reactions for non sally-nin users\
]]";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "ninja-general-changes";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "b337c238-bc63-9611-9bd8-59962c0bf012";
	};
	[3] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["luaReturnsAction"] = false;
		["name"] = "---- Tea ----";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "839e23a6-0887-5720-b782-c0b4d9120876";
	};
	[4] = {
		["actions"] = {
			[1] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
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
				["targetContentID"] = 9212;
				["targetName"] = "";
				["targetSubType"] = 1;
				["targetType"] = 3;
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
				["contentid"] = 9214;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = -1;
				["eventEntityID"] = -1;
				["eventEntityName"] = "";
				["eventMarkerID"] = -1;
				["eventOwnerContentID"] = -1;
				["eventOwnerID"] = -1;
				["eventOwnerName"] = "";
				["eventSpellID"] = -1;
				["eventSpellName"] = -1;
				["eventTargetContentID"] = -1;
				["eventTargetID"] = -1;
				["eventTargetName"] = "";
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
				["comparator"] = 2;
				["conditionLua"] = "";
				["conditionType"] = 3;
				["contentid"] = -1;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = -1;
				["eventEntityID"] = -1;
				["eventEntityName"] = "";
				["eventMarkerID"] = -1;
				["eventOwnerContentID"] = -1;
				["eventOwnerID"] = -1;
				["eventOwnerName"] = "";
				["eventSpellID"] = -1;
				["eventSpellName"] = -1;
				["eventTargetContentID"] = -1;
				["eventTargetID"] = -1;
				["eventTargetName"] = "";
				["gaugeIndex"] = 1;
				["gaugeValue"] = 0;
				["hpType"] = 1;
				["hpValue"] = 22;
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
				["conditionType"] = 8;
				["contentid"] = -1;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = -1;
				["eventEntityID"] = -1;
				["eventEntityName"] = "";
				["eventMarkerID"] = -1;
				["eventOwnerContentID"] = -1;
				["eventOwnerID"] = -1;
				["eventOwnerName"] = "";
				["eventSpellID"] = -1;
				["eventSpellName"] = -1;
				["eventTargetContentID"] = -1;
				["eventTargetID"] = -1;
				["eventTargetName"] = "";
				["gaugeIndex"] = 1;
				["gaugeValue"] = 0;
				["hpType"] = 1;
				["hpValue"] = 0;
				["inCombatType"] = 1;
				["lastSkillID"] = -1;
				["localmapid"] = 887;
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
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["luaReturnsAction"] = false;
		["name"] = "TEA: swap to hand when doll is 22%";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 3;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "79a0f4a6-a683-9fc5-8e61-052d4f28d9fe";
	};
	[5] = {
		["actions"] = {
			[1] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
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
				["targetContentID"] = 9211;
				["targetName"] = "";
				["targetSubType"] = 1;
				["targetType"] = 3;
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
				["contentid"] = 9214;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = -1;
				["eventEntityID"] = -1;
				["eventEntityName"] = "";
				["eventMarkerID"] = -1;
				["eventOwnerContentID"] = -1;
				["eventOwnerID"] = -1;
				["eventOwnerName"] = "";
				["eventSpellID"] = -1;
				["eventSpellName"] = -1;
				["eventTargetContentID"] = -1;
				["eventTargetID"] = -1;
				["eventTargetName"] = "";
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
				["comparator"] = 2;
				["conditionLua"] = "";
				["conditionType"] = 3;
				["contentid"] = -1;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = -1;
				["eventEntityID"] = -1;
				["eventEntityName"] = "";
				["eventMarkerID"] = -1;
				["eventOwnerContentID"] = -1;
				["eventOwnerID"] = -1;
				["eventOwnerName"] = "";
				["eventSpellID"] = -1;
				["eventSpellName"] = -1;
				["eventTargetContentID"] = -1;
				["eventTargetID"] = -1;
				["eventTargetName"] = "";
				["gaugeIndex"] = 1;
				["gaugeValue"] = 0;
				["hpType"] = 1;
				["hpValue"] = 22;
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
				["conditionType"] = 8;
				["contentid"] = -1;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = -1;
				["eventEntityID"] = -1;
				["eventEntityName"] = "";
				["eventMarkerID"] = -1;
				["eventOwnerContentID"] = -1;
				["eventOwnerID"] = -1;
				["eventOwnerName"] = "";
				["eventSpellID"] = -1;
				["eventSpellName"] = -1;
				["eventTargetContentID"] = -1;
				["eventTargetID"] = -1;
				["eventTargetName"] = "";
				["gaugeIndex"] = 1;
				["gaugeValue"] = 0;
				["hpType"] = 1;
				["hpValue"] = 0;
				["inCombatType"] = 1;
				["lastSkillID"] = -1;
				["localmapid"] = 887;
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
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["luaReturnsAction"] = false;
		["name"] = "TEA: swap to living liquid when doll is 22%";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 3;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "6e2809ba-b7ad-8d01-82d9-8bd7d74d2144";
	};
	[6] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["luaReturnsAction"] = false;
		["name"] = "------------";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "ad749314-568a-0152-918d-8defe426f58e";
	};
	[7] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["luaReturnsAction"] = false;
		["name"] = "--- Keep Disabled for now ---";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "f58f0144-df21-b3b5-9473-74887b63aca2";
	};
	[8] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 30 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or data.nilDataLoaded == nil or Player.incombat == false or Player.alive == false or data.nilsPlayground.CustomConditionChecks.NoOpener() == false or data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip entities that are not attackable\
local ent = EntityList:Get(eventArgs.entityID)\
if ent == nil or ent.attackable == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 7548)\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- Map, spell id, timer\
local contentTable = {\
    -- The Royal City of Rabanastre\
    [734] = {\
        [9660] = 4, -- Command Tower\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11344] = 4, -- Tsunami\
        [11369] = 4, -- Ventilate\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15520] = 4, -- Heaving Breath\
    },\
    -- Malikah's Well\
    [836] = {\
        [15596] = 4, -- High Pressure\
    },\
    -- The Halo\
    [850] = {\
        [15941] = 4, -- Empty Hate\
    },\
    -- The Nereus Trench\
    [851] = {\
        [16339] = 4, -- Tidal Wave\
    },\
    -- Atlas Peak\
    [852] = {\
        [16630] = 4, -- Geocrush\
    },\
    -- The Halo\
    [854] = {\
        [15962] = 4, -- Empty Hate\
    },\
    -- The Nereus Trench\
    [855] = {\
        [16370] = 4, -- Tidal Wave\
    },\
    -- Atlas Peak\
    [856] = {\
        [16659] = 4, -- Geocrush\
        [16694] = 4, -- Dual Earthen Fists\
    },\
    -- The Copied Factory\
    [882] = {\
        [18627] = 4, -- Shockwave\
    },\
    -- The Gandof Thunder Plains\
    [906] = {\
        [19404] = 3.5, -- Levinforce\
    },\
    -- Cinder Drift (use timeline)\
}\
\
local localmapid = Player.localmapid\
\
-- skip if wrong map\
if not contentTable[localmapid] then \
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if wrong spell\
if not contentTable[localmapid][eventArgs.spellID] then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- keep in queue if event time does not match, otherwise complete the reation\
if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then \
		-- if sally installed, use hotbar, otherwise use base\
		if SallyNIN ~= nil then SallyNIN.HotBarConfig.Armslength.enabled = false else	actionskill:Cast() end\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Knockback";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 20;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "4ee9e7d1-b233-493d-a089-9ee3bb4c824a";
	};
	[9] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "if data.nilDataLoaded ~= nil and data.nilDataLoaded == true and NILS_PLAYGROUND ~= nil and NILS_PLAYGROUND == true then\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
\
if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
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
 -- data.nilsPlayground.Toggles.Ninjutsu.IsActive = true\
 -- data.nilsPlayground.Toggles.Ninjutsu.TimelineActive = byTimeline\
--  data.nilsPlayground.Toggles.Ninjutsu.LastMoved =  Now()\
\
--  if SallyNIN ~= nil then\
--    SallyNIN.SkillSettings.Ninjutsu.enabled = false\
--    SallyNIN.SkillSettings.SaveCD.enabled = true\
--  end\
return true\
end\
\
function data.nilsPlayground.TurnOnNinjitsu()\
 -- data.nilsPlayground.Toggles.Ninjutsu.IsActive = false\
--  data.nilsPlayground.Toggles.Ninjutsu.TimelineActive = false\
\
--  if SallyNIN ~= nil then\
--    SallyNIN.SkillSettings.Ninjutsu.enabled = true\
--    SallyNIN.SkillSettings.SaveCD.enabled = false\
--  end\
return true\
end\
\
function data.nilsPlayground.TurnOffTrickAttackWindow(byTimeline)\
  data.nilsPlayground.Toggles.TrickAttackWindow.IsActive = true\
  data.nilsPlayground.Toggles.TrickAttackWindow.TimelineActive = byTimeline\
  data.nilsPlayground.Toggles.TrickAttackWindow.LastMoved =  Now()\
\
  if SallyNIN ~= nil then\
    SallyNIN.SkillSettings.SaveCD.enabled = true\
    SallyNIN.SkillSettings.TrickAttack.enabled = false\
    SallyNIN.SkillSettings.ShadowFang.enabled = false\
    SallyNIN.SkillSettings.Bushin.enabled = false\
  end\
end\
\
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
  data.nilsPlayground.Toggles.TCJMove.LastMoved =  Now()\
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
function data.nilsPlayground.oGCDSafe()\
  local actionskill = ActionList:Get(1, 2240)\
  if actionskill.cdmax - actionskill.cd > .8 then return true else return false end\
end\
\
function data.nilsPlayground.ResetToggles()\
  data.nilsPlayground.Toggles = {\
    TCJMove = { IsActive = false, LastMoved = 0, TimelineActive = false },\
    AssassinateMove = { IsActive = false, LastMoved = 0, TimelineActive = false },\
    BurnBoss = { IsActive = false, TimelineActive = false},\
    AOEBlackList = { IsActive = false, TimelineActive = false},\
    CDBlackList = { IsActive = false, TimelineActive = false},\
    OmniWhiteList = { IsActive = false, TimelineActive = false},\
    DreamWithinDream = { IsActive = false, TimelineActive = false},\
    Kassatsu = { IsActive = false, TimelineActive = false},\
    Meisui = { IsActive = false, LastMoved = 0, TimelineActive = false },\
    Ninjutsu = { IsActive = false, LastMoved = 0, TimelineActive = false },\
    ACRefresh = { IsActive = false, LastMoved = 0, TimelineActive = false },\
    TrickAttackWindow = { IsActive = false, LastMoved = 0, TimelineActive = false },\
  }\
end\
\
if data.nilsPlayground.CustomConditionChecks == nil then data.nilsPlayground.CustomConditionChecks = {} end\
\
function data.nilsPlayground.CustomConditionChecks.IsDoingMudra()\
  -- 496 Mudra, 1186 TCJ\
  return HasBuff(Player.id, 496) or HasBuff(Player.id, 1186)\
end\
\
-- REMOVING THIS FUNCTION SOON, use inopener() instead\
function data.nilsPlayground.CustomConditionChecks.NoOpener()\
  -- try not to execute while opener is running\
  if xivopeners_nin ~= nil and xivopeners_nin.openerStarted == true then return false end\
\
  -- checks to see if sally dancer is installed and if its opener is running\
  if SallyNIN ~= nil and SallyNIN.SkillSettings.Opener.enabled == true then return false end\
\
  -- if xivopener is not running nor sally sam opener, then return true that it is safe to execute.\
  return true\
end\
\
function data.nilsPlayground.CustomConditionChecks.inOpener()\
  -- try not to execute while opener is running\
  if xivopeners_nin ~= nil and xivopeners_nin.openerStarted == true then return true end\
\
  -- checks to see if sally dancer is installed and if its opener is running\
  if SallyNIN ~= nil and SallyNIN.SkillSettings.Opener.enabled == true then return true end\
\
  -- if xivopener is not running nor sally sam opener, then return false that it is safe to execute.\
  return false\
end\
\
function data.nilsPlayground.CustomConditionChecks.CanNinjutsuBeTurnedOff()\
  if data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true then return false end\
  return data.nilsPlayground.Toggles.Ninjutsu.IsActive == false\
end\
\
-- REMOVING THIS FUNCTION SOON, calculate as needed in scripts\
function data.nilsPlayground.skillCooldownDifference(cd, cdmax)\
  if cd == 0 and cdmax == 0 then return 0 end\
  return tonumber(cdmax - cd) or 0\
end\
\
function data.nilsPlayground.getPlayerBuffDuration(buffID)\
  if (table.valid(Player.buffs)) then for _, buff in pairs(Player.buffs) do if buff.id == buffID then return buff.duration end end end return 0\
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
  [9353] = 1, -- Shiva --> E8S\
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
  [9288] = true, -- Ifrit -->\
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
  [9321] = true, -- earthen aether\
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
  [9358] = true, -- Ice Veil\
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
self.used = true";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Dependencies2 (keep enabled)";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "5ebbca48-a7f7-3860-a0dc-d3612fc5eec7";
	};
	[10] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.limitCutNumber = eventArgs.markerID - 78\
data.limitCutTime = Now()\
self.used = true";
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
				["actionLua"] = "if not table.valid(data.partyLimitCutNumbers) then\
				data.partyLimitCutNumbers = {}\
end\
local limitCutNumber = eventArgs.markerID - 78\
data.partyLimitCutNumbers[limitCutNumber] = eventArgs.entityID\
self.used = true";
				["allowInterrupt"] = false;
				["conditions"] = {
					[1] = 3;
					[2] = 2;
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
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return eventArgs.entityID == Player.id and eventArgs.markerID - 78 >= 1 and eventArgs.markerID - 78 <= 8";
				["conditionType"] = 1;
				["contentid"] = -1;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = -1;
				["eventEntityID"] = -1;
				["eventEntityName"] = "";
				["eventMarkerID"] = -1;
				["eventOwnerContentID"] = -1;
				["eventOwnerID"] = -1;
				["eventOwnerName"] = "";
				["eventSpellID"] = -1;
				["eventSpellName"] = -1;
				["eventTargetContentID"] = -1;
				["eventTargetID"] = -1;
				["eventTargetName"] = "";
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
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["contentid"] = -1;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = -1;
				["eventEntityID"] = -1;
				["eventEntityName"] = "";
				["eventMarkerID"] = -1;
				["eventOwnerContentID"] = -1;
				["eventOwnerID"] = -1;
				["eventOwnerName"] = "";
				["eventSpellID"] = -1;
				["eventSpellName"] = -1;
				["eventTargetContentID"] = -1;
				["eventTargetID"] = -1;
				["eventTargetName"] = "";
				["gaugeIndex"] = 1;
				["gaugeValue"] = 0;
				["hpType"] = 1;
				["hpValue"] = 0;
				["inCombatType"] = 1;
				["lastSkillID"] = -1;
				["localmapid"] = 887;
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
				["conditionLua"] = "return eventArgs.markerID - 78 >= 1 and eventArgs.markerID - 78 <= 8";
				["conditionType"] = 1;
				["contentid"] = -1;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = -1;
				["eventEntityID"] = -1;
				["eventEntityName"] = "";
				["eventMarkerID"] = -1;
				["eventOwnerContentID"] = -1;
				["eventOwnerID"] = -1;
				["eventOwnerName"] = "";
				["eventSpellID"] = -1;
				["eventSpellName"] = -1;
				["eventTargetContentID"] = -1;
				["eventTargetID"] = -1;
				["eventTargetName"] = "";
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
		["eventType"] = 4;
		["execute"] = "";
		["executeType"] = 1;
		["luaReturnsAction"] = false;
		["name"] = "TEA: limit cut number";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "cdd09b89-df39-5e44-ab72-bd4d18f01eac";
	};
	[11] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 30 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or data.nilDataLoaded == nil or Player.incombat == false or Player.alive == false or data.nilsPlayground.CustomConditionChecks.NoOpener() == false or data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip entities that are not attackable\
local ent = EntityList:Get(eventArgs.entityID)\
if ent == nil or ent.attackable == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 7863)\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- Map, spell id, timer\
local contentTable = {\
    -- Dohn Mheg\
    [821] = {\
        [15788] = 4, -- Pollen Carona\
    },\
    -- Malikah's Well\
    [836] = {\
        [16266] = 3, -- Realm Shaker\
    },\
    -- Holminster Switch\
    [837] = {\
        [17203] = 4.5, -- Tail Swing\
    },\
    -- The Twinning\
    [840] = {\
        [15802] = 5, -- 128-tonze Swing\
        [15805] = 5, -- Nerve Gas\
        [15811] = 5, -- Thrown Flames\
    },\
    -- Akadaemia Anyder\
    [841] = {\
        [17164] = 5, -- Noahionto\
    },\
    -- The Grand Cosmos\
    [884] = {\
        [18722] = 3, -- Whirl of Rage\
        [18725] = 3, -- Self-destruct\
        [18726] = 3, -- Acid Mist\
        [18758] = 4, -- Unparalleled Glory\
    },\
}\
\
local localmapid = Player.localmapid\
\
-- skip if wrong map\
if not contentTable[localmapid] then \
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if wrong spell\
if not contentTable[localmapid][eventArgs.spellID] then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- keep in queue if event time does not match, otherwise complete the reation\
if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then \
		actionskill:Cast(eventArgs.entityID)\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Leg Sweep";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "4aee51ea-a3b9-0f8d-a482-b88c9c06c60f";
	};
	[12] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 30 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or data.nilDataLoaded == nil or Player.incombat == false or Player.alive == false or data.nilsPlayground.CustomConditionChecks.NoOpener() == false or HasBuff(eventArgs.entityID, 1195) or data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip entities that are not attackable\
local ent = EntityList:Get(eventArgs.entityID)\
if ent == nil or ent.attackable == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 7549)\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- Map, spell id, timer\
local contentTable = {\
				-- test , tempest, Tempest Swallow\
				[818] = {\
						[17336] = 5,\
				},\
    -- The Royal City of Rabanastre\
    [734] = {\
        [9687] = 5, -- Rock Cutter\
        [9773] = 5, -- Crippling Blow\
        [9856] = 5, -- Crush Helm\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11354] = 5, -- Destroy\
        [11377] = 5, -- Destroy\
    },\
    -- Dohn Mheg\
    [821] = {\
        [13732] = 5, -- Crippling Blow\
    },\
    -- Mt. Gulg\
    [822] = {\
        [15611] = 5, -- Rake\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15497] = 5, -- Stonefist\
        [15505] = 5, -- Ripper Fang\
        [15513] = 5, -- Rend\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14137] = 5, -- Arm Shot\
        [14162] = 5, -- Crush Helm\
    },\
    -- Malikah's Well\
    [836] = {\
        [15589] = 5, -- Stone Flail\
        [15595] = 5, -- Efface\
    },\
    -- Holminster Switch\
    [837] = {\
        [15812] = 5, -- Pillory\
        [15823] = 5, -- The Tickler\
        [15831] = 5, -- Head Crusher\
    },\
    -- The Twinning\
    [840] = {\
        [15717] = 4, -- Augurium\
    },\
    -- Akadaemia Anyder\
    [841] = {\
        [15876] = 4, -- Protolithic Puncture\
    },\
    -- The Crown of the Immaculate\
    [848] = {\
        [16073] = 5, -- Holy Sword\
    },\
    -- The Core\
    [849] = {\
        [15777] = 5, -- Spear of Paradise\
    },\
    -- Atlas Peak\
    [852] = {\
        [16633] = 5, -- Stonecrusher\
    },\
    -- The Core\
    [853] = {\
        [15752] = 5, -- Spear of Paradise\
    },\
    -- The Dancing Plague\
    [858] = {\
        [15670] = 5, -- Hard Swipe\
        [15671] = 5, -- Pummel\
    },\
    -- The Copied Factory\
    [882] = {\
        [18639] = 5, -- Forceful Impact\
        [18672] = 5, -- Clanging Blow\
    },\
    -- The Grand Cosmos\
    [884] = {\
        [18276] = 5, -- Captive Bolt\
        [18757] = 4, -- Peerless Valor\
    },\
    -- Cinder Drift (use timeline)\
				-- Anamnesis Anyder\
    [898] = {\
        [19305] = 4, -- Fetid Fang\
        [19314] = 4, -- Fetid Fang\
								[19340] = 4, -- Bonebreaker\
    },\
}\
\
local localmapid = Player.localmapid\
\
-- skip if wrong map\
if not contentTable[localmapid] then \
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if wrong spell\
if not contentTable[localmapid][eventArgs.spellID] then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- keep in queue if event time does not match, otherwise complete the reation\
if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then \
		\
		-- if sallynin installed, use hotbar, otherwise use base\
		if SallyNIN ~= nil then SallyNIN.HotBarConfig.Feint.enabled = false else	actionskill:Cast(eventArgs.entityID) end \
\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Feint";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "bcff37d3-3606-71fe-8b5f-e7226f904e63";
	};
	[13] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
if data.nilsPlayground.timeOfLastHeal == nil then data.nilsPlayground.timeOfLastHeal = 0 end\
\
if Player.job ~= 30 or Player.hp.percent > 50 or Player.hp.percent < 1 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfLastHeal ~= nil and TimeSince(data.nilsPlayground.timeOfLastHeal) < 2000) or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or data.nilDataLoaded == nil or Player.incombat == false or Player.alive == false or Player.incombat == false or Player.alive == false or data.nilsPlayground.CustomConditionChecks.NoOpener() == false or data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionSecondWind = ActionList:Get(1, 7541)\
local availableSecondWind = actionSecondWind.cdmax - actionSecondWind.cd <= 1\
\
local actionBloodbath = ActionList:Get(1, 7542)\
local availableBloodbath = actionBloodbath.cdmax - actionBloodbath.cd <= 1\
\
if availableSecondWind == false and availableBloodbath == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- 84 bloodbath buff\
-- check regen buffs\
local hasRegen = false\
if  HasBuff(Player.id, 158) or HasBuff(Player.id, 150) or HasBuff(Player.id, 839) or HasBuff(Player.id, 84) then\
		hasRegen = true\
end\
\
if hasRegen and Player.hp.percent < 20 and availableSecondWind then\
		-- if sallynin installed, use hotbar, otherwise use base\
		if SallyNIN ~= nil then SallyNIN.HotBarConfig.SecondWind.enabled = false else	actionSecondWind:Cast() end \
\
		data.nilsPlayground.timeOfLastHeal = Now()\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if hasRegen and Player.hp.percent < 20 and availableSecondWind == false and availableBloodbath then\
		if SallyNIN ~= nil then SallyNIN.HotBarConfig.Bloodbath.enabled = false else	actionBloodbath:Cast() end \
\
		data.nilsPlayground.timeOfLastHeal = Now()\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if hasRegen == false and Player.hp.percent < 40 and availableSecondWind then\
		-- if sallynin installed, use hotbar, otherwise use base\
		if SallyNIN ~= nil then SallyNIN.HotBarConfig.SecondWind.enabled = false else	actionSecondWind:Cast() end \
\
		data.nilsPlayground.timeOfLastHeal = Now()\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if hasRegen == false and Player.hp.percent < 40 and availableSecondWind == false and availableBloodbath then\
		if SallyNIN ~= nil then SallyNIN.HotBarConfig.Bloodbath.enabled = false else	actionBloodbath:Cast() end \
		data.nilsPlayground.timeOfLastHeal = Now()\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Self Heal";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "8cc72509-4543-356d-982c-252eceba8c8f";
	};
	[14] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 30 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or data.nilDataLoaded == nil or Player.incombat == false or Player.alive == false or data.nilsPlayground.CustomConditionChecks.NoOpener() == false or data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip entities that are not attackable\
local ent = EntityList:Get(eventArgs.entityID)\
if ent == nil or ent.attackable == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 2241)\
if data.nilsPlayground.skillCooldownDifference(actionskill.cd, actionskill.cdmax) > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- Map, spell id, timer\
local contentTable = {\
    -- The Royal City of Rabanastre\
    [734] = {\
        [9670] = 5, -- Landwaster\
        [9688] = 5, -- Quake IV\
        [9869] = 5, -- Pomp and Circumstance\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11308] = 5, -- Solar Storm\
        [11325] = 5, -- Water IV\
        [11364] = 5, -- Incinerate\
        [11612] = 5, -- Incinerate\
        [11613] = 5, -- Incinerate\
    },\
    -- The Rak'tika Greatwood\
    [817] = {\
        [17859] = 5, -- Chest Thump\
    },\
    -- Dohn Mheg\
    [821] = {\
        [7822] = 5, -- Landsblood\
        [8915] = 5, -- Tiiimbeeer\
        [13708] = 5, -- Virtuosic Capriccio\
    },\
    -- Mt. Gulg\
    [822] = {\
        [15612] = 5, -- Cyclone Wing\
        [15627] = 5, -- Sacrament of Penance\
        [15636] = 5, -- Orison Fortissimo\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15499] = 5, -- Lozatl's Scorn\
        [15506] = 5, -- Soundwave\
        [15515] = 5, -- Glossolalia\
        [15520] = 5, -- Heaving Breath\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14139] = 5, -- Energy Burst\
        [14439] = 5, -- Divine Light\
    },\
    -- Malikah's Well\
    [836] = {\
        [15590] = 5, -- Head Toss\
        [15596] = 5, -- High Pressure\
        [15601] = 5, -- Intestinal Crank\
    },\
    -- Holminster Switch\
    [837] = {\
        [15813] = 5, -- The Path of Light\
        [15824] = 5, -- Scold's Bridle\
        [15832] = 5, -- Scavenger's Daughter\
    },\
    -- Amaurot\
    [838] = {\
        [15559] = 5, -- the Burning Sky\
        [15578] = 5, -- Therion Charge\
    },\
    -- The Twinning\
    [840] = {\
        [15716] = 5, -- Beastly Roar\
        [15868] = 5, -- High-tension Discharger\
    },\
    -- Akadaemia Anyder\
    [841] = {\
        [15878] = 5, -- Marine Mayhem\
        [15895] = 5, -- Arbor Storm\
        [15908] = 5, -- Thunderbolt\
    },\
    -- The Crown of the Immaculate\
    [848] = {\
        [16072] = 5, -- Scold's Bridle\
        [16106] = 5, -- Shadowreaver\
        [16190] = 5, -- Light Pillar\
    },\
    -- The Core\
    [849] = {\
        [15764] = 5, -- Eden's Gravity\
        [15772] = 5, -- Dimensional Shift\
        [15780] = 5, -- Frago Maximum\
        [15783] = 5, -- Mana Burst\
    },\
    -- The Halo\
    [850] = {\
        [15982] = 5, -- Entropy\
    },\
    -- The Nereus Trench\
    [851] = {\
        [16324] = 5, -- Tidal Roar\
        [17435] = 5, -- Tsunami\
    },\
    -- Atlas Peak\
    [852] = {\
        [16631] = 5, -- Voice of the Land\
        [17382] = 5, -- Earthen Fury\
    },\
    -- The Core\
    [853] = {\
        [15728] = 5, -- Eden's Gravity\
        [15743] = 5, -- Dimensional Shift\
        [15755] = 5, -- Frago Maximus\
        [15759] = 5, -- Mana Burst\
        [17657] = 5, -- Regained Fire III\
    },\
    -- The Halo\
    [854] = {\
        [15971] = 5, -- Doomvoid Cleaver\
        [15984] = 5, -- Entropy\
        [15986] = 5, -- Quietus\
    },\
    -- The Nereus Trench\
    [855] = {\
        [16348] = 5, -- Tidal Roar\
        [16350] = 5, -- Tidal Rage\
        [16396] = 5, -- Tidal Rage\
        [17436] = 5, -- Tsunami\
    },\
    -- Atlas Peak\
    [856] = {\
        [16660] = 5, -- Voice of the Land\
        [16682] = 5, -- Tumult\
        [16699] = 5, -- Earthen Fury\
        [17384] = 5, -- Earthen Fury\
    },\
    -- The Dancing Plague\
    [858] = {\
        [15667] = 5, -- Being Mortal\
        [15674] = 5, -- Puck's Caprice\
        [15681] = 5, -- Puck's Breath\
        [15691] = 5, -- Bright Sabbath\
        [16926] = 5, -- Uplift\
    },\
    -- The Copied Factory\
    [882] = {\
        [18261] = 5, -- Diffuse Laser\
        [18437] = 5, -- Laser-resistance Test\
        [18675] = 5, -- Shrapnel Impact\
        [18678] = 5, -- Laser Saturation\
        [18753] = 5, -- 360-degree Bombing Maneuver\
    },\
    -- The Grand Cosmos\
    [884] = {\
        [18204] = 5, -- Ode to Lost Love\
        [18277] = 5, -- Culling Blade\
        [18851] = 5, -- Immortal Anathema\
    },\
    -- The Dying Gasp\
    [885] = {\
        [18360] = 5, -- Quake III\
        [18367] = 5, -- Annihilation\
        [18380] = 5, -- Blight\
        [18419] = 5, -- Giganomachy\
        [18420] = 5, -- Quadastrike\
    },\
    -- Liminal Space\
    [887] = {\
        [18470] = 4, -- Cascade\
    },\
    -- Cinder Drift\
    [897] = {\
        [19112] = 4, -- Optimized Ultima\
        [19139] = 4, -- Homing Lasers\
								[19141] = 4, -- High-powered Homing\
								[19144] = 4, -- Outrage\
    },\
				-- Anamnesis Anyder\
    [898] = {\
        [19288] = 4, -- The Final Verse\
        [19295] = 4, -- Wanderer's Pyre\
								[19306] = 4, -- Inscrutability\
								[19315] = 4, -- Inscrutability\
								[19321] = 4, -- Ectoplasmic Ray\
								[19322] = 4, -- Ectoplasmic Ray\
								[19324] = 4, -- Seabed Ceremony\
								[19328] = 4, -- Flying Fount\
    },\
				-- Eden's Verse: Fulmination\
				[902] ={\
								[19353] = 4, -- Judgement Volts\
								[19354] = 4, -- Divine Judgement Volts\
				},\
				-- Eden's Verse: Furor\
				[903] ={\
								[19415] = 4, -- Superstorm\
								[19441] = 4, -- Inferno Howl\
				},\
				-- Eden's Verse: Iconoclasm\
				[904] ={\
								[19517] = 4, -- Dark's Course\
								[19521] = 4, -- Dark's Course\
								[19538] = 4, -- Empty Wave\
				},\
				-- Eden's Verse: REfulgence\
				[905] ={\
								[19927] = 4, -- Absolute Zero\
								[19928] = 4, -- Heavenly Strike\
								[19937] = 4, -- Diamond Frost\
								[19944] = 4, -- Light Rampant\
								[19948] = 4, -- Holy\
								[19949] = 4, -- Holy\
				},\
}\
\
local localmapid = Player.localmapid\
\
-- skip if wrong map\
if not contentTable[localmapid] then \
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if wrong spell\
if not contentTable[localmapid][eventArgs.spellID] then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- keep in queue if event time does not match, otherwise complete the reation\
if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then \
		-- if sally installed, use hotbar, otherwise use base\
		if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: ShadeShift";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "71c51206-ea6b-dccc-a91b-e07cc44cbc40";
	};
	[15] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 30 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or data.nilDataLoaded == nil or Player.incombat == false or Player.alive == false or data.nilsPlayground.CustomConditionChecks.NoOpener() == false or data.nilsPlayground.CustomConditionChecks.IsDoingMudra() == true then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip entities that are not attackable\
local ent = EntityList:Get(eventArgs.entityID)\
if ent == nil or ent.attackable == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- Map, spell id, timer\
local contentTable = {\
    -- The Rak'tika Greatwood\
    [817] = {\
        [17856] = 1.5, -- Petro Eyes\
    },\
    -- Dohn Mheg\
    [821] = {\
        [13552] = 1.5, -- Imp Choir\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14200] = 1.5, -- Devitalize\
        [14423] = 1.5, -- Judgment Blade\
        [14430] = 1.5, -- Mortal Blow\
    },\
    -- Cinder Drift\
    [912] = {\
        [19198] = 1.5, -- Negative Aura\
    },\
}\
\
local localmapid = Player.localmapid\
\
-- skip if wrong map\
if not contentTable[localmapid] then \
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if wrong spell\
if not contentTable[localmapid][eventArgs.spellID] then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- keep in queue if event time does not match, otherwise complete the reation\
if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then \
		Player:ClearTarget()\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Stop Casting";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "47a3558d-023c-413c-8cd9-e72a7202df7e";
	};
	[16] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "if Player.job ~= 30 or data.nilDataLoaded == nil or Player.incombat == false or Player.alive == false or data.nilsPlayground.CustomConditionChecks.NoOpener() == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
local suitonBuffDuration =  data.nilsPlayground.getPlayerBuffDuration(507)\
\
if suitonBuffDuration == 0 then\
		if SallyNIN ~= nil then SallyNIN.SkillSettings.Meisui.enabled = false end\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionMeisui = ActionList:Get(1, 16489)\
local availableMeisui = data.nilsPlayground.skillCooldownDifference(actionMeisui.cd, actionMeisui.cdmax) <= 1\
\
if availableMeisui == false then\
		if SallyNIN ~= nil then SallyNIN.SkillSettings.Meisui.enabled = false end\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true\
		return nil\
end\
\
local actionTrickAttack = ActionList:Get(1, 2258)\
\
if data.nilsPlayground.skillCooldownDifference(actionTrickAttack.cd, actionTrickAttack.cdmax) > suitonBuffDuration then\
		\
		if SallyNIN ~= nil then SallyNIN.SkillSettings.Meisui.enabled = true else actionMeisui:Cast(Player.id) end\
\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true\
		return nil\
end\
\
if SallyNIN ~= nil then SallyNIN.SkillSettings.Meisui.enabled = false end\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "QT: Meisui";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "7c8e218d-2938-377f-911d-9478a4881107";
	};
	[17] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "--[[disabled trick window\
turns off trick window if TTK can be calculated and target will die in less than 90 seconds\
TBH I assume this will only really work in end game]]\
\
if Player.job ~= 30 or Player.level < 80 or data.nilDataLoaded == nil then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- because TTS can vary wildly, going to try and limit the check to 1's a second\
if TimeSince(data.nilsPlayground.lastBurnBossCheck) < 1000 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
\
local target = Player:GetTarget()\
if target == nil or not table.valid(target) or not target.attackable then\
		if SallyNIN ~= nil then SallyNIN.SkillSettings.BurnBoss.enabled = false end\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true\
		data.nilsPlayground.lastBurnBossCheck = Now()\
		return nil\
end\
\
if data.nilsPlayground.BurnBossList[target.contentid]  then\
		-- return false if it exist and the hp is below 1%\
		-- added an hp check for low level burn targets (example 70 and below striking dummies)\
\
  if target.hp.percent < data.nilsPlayground.BurnBossList[target.contentid] or TensorCore.calcTimeToKill(target.id, 1000) < 30 then\
				if SallyNIN ~= nil then SallyNIN.SkillSettings.BurnBoss.enabled = true end\
				self.eventConditionMismatch = true -- suppressing the log\
				self.used = true\
				data.nilsPlayground.lastBurnBossCheck = Now()\
				return nil\
		end\
end\
\
if SallyNIN ~= nil then SallyNIN.SkillSettings.BurnBoss.enabled = false end\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
data.nilsPlayground.lastBurnBossCheck = Now()\
return nil";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "TTK: Burn Boss Low HP";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "39d13900-5b37-8be9-962a-8a2205e70629";
	};
	[18] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "--[[disabled trick window\
turns off trick window if TTK can be calculated and target will die in less than 90 seconds\
TBH I assume this will only really work in end game]]\
\
if Player.job ~= 30 or Player.level < 80 or data.nilDataLoaded == nil then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if trick is currently being controlled by a timeline event, skip the remaining\
if data.nilsPlayground.Toggles.TrickAttackWindow.TimelineActive == true then \
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
local target = Player:GetTarget()\
if target == nil or not table.valid(target) or not target.attackable then\
		-- data.nilsPlayground.TurnOnTrickAttackWindow() -- HELP need more data if this is a good idea, it will break manually turning off quick toggles\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if burn boss target keep trick on\
if data.nilsPlayground.BurnBossList[target.contentid] then \
		data.nilsPlayground.TurnOnTrickAttackWindow()\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
--[[Turn off Trick rules\
* if target is not on the burn boss list \
* hp is less than 30% or has less than 300000 hp (attempt to prevent trick on trash)\
* time to kill is less then 90 seconds]]\
\
--[[this is cached in tensor core, so it does not need to saved locally\
default will be to keep trick window open, because of this going to do a \
greater than comparison, so teh default needs 1000]]\
\
if (target.hp.current < 300000 or target.hp.percent < 30) and TensorCore.calcTimeToKill(target.id, 1000) < 90 then\
		data.nilsPlayground.TurnOffTrickAttackWindow(false)\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
\
end\
\
data.nilsPlayground.TurnOnTrickAttackWindow()\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "TTK: Toggle Trick Window";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "04cf4109-bf4a-6c21-91bb-076edb2c1778";
	};
	[19] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "-- still a WIP, works until burn boss is on then something breaks, need time to debug\\\
\
if Player.job ~= 30 or Player.level < 80 or data.nilDataLoaded == nil or data.nilsPlayground.CustomConditionChecks.NoOpener() == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
local g = Player.gauge\
local hutonguage = 0\
if (table.valid(g)) then\
		for i, k in pairs(g) do\
  		if i == 2 then\
						hutonguage = k\
    end\
  end\
end\
\
local target = Player:GetTarget()\
if target == nil or not table.valid(target) or not target.attackable then\
		if SallyNIN ~= nil and SallyNIN.SkillSettings.ACRefresh.enabled == false then SallyNIN.SkillSettings.ACRefresh.enabled = true end\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if HasBuff(target.id, 638, 0, 0, Player.id) and hutonguage >= 15000 then\
		if SallyNIN ~= nil and SallyNIN.SkillSettings.ACRefresh.enabled == true then SallyNIN.SkillSettings.ACRefresh.enabled = false end\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- protect against to low of huton if burn boss is on\
if SallyNIN ~= nil and SallyNIN.SkillSettings.BurnBoss.enabled == true and hutonguage < 10000 then\
		SallyNIN.HotBarConfig.ArmorCrush.enabled = false\
	--	self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if SallyNIN ~= nil and SallyNIN.SkillSettings.ACRefresh.enabled == false then SallyNIN.SkillSettings.ACRefresh.enabled = true end\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Toggle AC Refresh";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "6a7bf182-2cdd-e597-a008-100a62ecb935";
	};
	[20] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["luaReturnsAction"] = false;
		["name"] = "---- Revamp ----";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "55ed74e6-349c-2bea-943e-dc7e4a6fe41d";
	};
	[21] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "-- NilsReactionLibrary.Combat.Toggles.Ninja.TCJ(false, true) [test timeline override]\
NilsReactionLibrary.Combat.Toggles.Ninja.Helpers.TCJMoveDetection()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
\
\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Move: Toggle TCJ";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "dab631d2-70b5-6964-be0c-364f876ea757";
	};
	[22] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "-- NilsReactionLibrary.Combat.Toggles.Ninja.Assassinate(false, true) [test timeline override]\
NilsReactionLibrary.Combat.Toggles.Ninja.Helpers.AssassinateMoveDetection()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
\
\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Move: Toggle Assassinate";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "01352b9a-9e19-cb7e-8305-fd1d95ab26dc";
	};
	[23] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "-- NilsReactionLibrary.Combat.Toggles.Ninja.AOE(false, true) [test timeline override]\
NilsReactionLibrary.Combat.Toggles.Handler.AOE()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
\
\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "QT: AOE Blacklist";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "aaaa541c-73ba-f4ea-91dd-ac0da24bdcce";
	};
	[24] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "-- NilsReactionLibrary.Combat.Toggles.Ninja.CD(false, true) [test timeline override]\
NilsReactionLibrary.Combat.Toggles.Handler.CD()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "QT: CD Blacklist";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "092a07d8-25f3-2afb-9b44-1db7a1d108fa";
	};
	[25] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "-- NilsReactionLibrary.Combat.Toggles.Ninja.Omni(false, true) [test timeline override]\
NilsReactionLibrary.Combat.Toggles.Handler.Omni()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "QT: Omni Whitelist";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "89f9825f-2837-2ac3-bb7c-134f32ed6487";
	};
	[26] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Ninja.Helpers.DwDAlignment()\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "QT: DwD";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "dba15316-f2f4-b3f3-922d-74628cc99c75";
	};
	[27] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Ninja.Helpers.KassatsuAlignment()\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "QT: Kassatsu";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "bbefeca0-9a82-8b8b-87aa-a3f759f88d84";
	};
	[28] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 9;
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Ninja.Reset()\
--self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Reset: toggles on wipe";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 6;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "d416b5ea-7b4f-2e19-aab5-200b070665a6";
	};
	[29] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 10;
		["execute"] = "if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
if data.nilsPlayground.timeOfDeath == nil then data.nilsPlayground.timeOfDeath = 0 end\
\
data.nilsPlayground.timeOfDeath = Now()\
\
if SallyNIN ~= nil then\
  -- reset hotbar\
  SallyNIN.HotBarConfig.Armslength.enabled = true\
  SallyNIN.HotBarConfig.TrueNorth.enabled = true\
		SallyNIN.HotBarConfig.Feint.enabled = true\
		SallyNIN.HotBarConfig.Bloodbath.enabled = true\
		SallyNIN.HotBarConfig.SecondWind.enabled = true\
  SallyNIN.HotBarConfig.ShadeShift.enabled = true\
  SallyNIN.HotBarConfig.Kassatsu.enabled = true\
  SallyNIN.HotBarConfig.TCJ.enabled = true\
  SallyNIN.HotBarConfig.Meisui.enabled = true\
  SallyNIN.HotBarConfig.Huton.enabled = true\
  SallyNIN.HotBarConfig.Doton.enabled = true\
  SallyNIN.HotBarConfig.Suiton.enabled = true\
  SallyNIN.HotBarConfig.Raiton.enabled = true\
  SallyNIN.HotBarConfig.Katon.enabled = true\
  SallyNIN.HotBarConfig.Sprint.enabled = true\
  SallyNIN.HotBarConfig.ArmorCrush.enabled = true\
  SallyNIN.HotBarConfig.Huton.enabled = true\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Reset: on death";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "89b42817-2e02-595b-ba1c-7ec78dd90979";
	};
	[30] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "if gReactionZoomhackSet == nil then\
  gDevHackMaxZoom = 40.0\
	 gDevHackMinZoom = 1.5\
  gReactionZoomhackSet = true\
end\
\
if gReactionSpeedhackSet == nil then\
  gDevHackWalkSpeed = 7.0\
  gReactionSpeedhackSet = true\
end\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true ";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Set Hacks";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 1;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "89cd361d-5ad3-fc1e-ace9-789fba6f1684";
	};
}
return obj1
