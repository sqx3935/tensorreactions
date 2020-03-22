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
		["execute"] = "-- ** Contributors **\
--[[\
		* Nil (maintainer)\
		* \
]]\
\
-- *************************************************************************************\
\
--[[ ** Verson 4 **\
* filter added to `onentitychanneling` to ignore friendly targets\
* cleaned up code to make it more readable and simplify fall through\
* added on wipe reset (thanks anyone for the suggestion)\
* added on death monitor and updated general reactions to check the time\
* removed rubyex feint and knockback\
* added 2 second delay between heals, this should improve and space out the heals more effectively\
]]\
\
--[[ ** Verson 3 **\
* added reactions for Anamnesis Anyder\
* fixed target for addle\
* remove alive check (will add back if it is not overkill)\
]]\
\
--[[ ** Verson 2 **\
* massive refactor, removes the need to have sally vs other reactions\
* added support for Anamnesis Anyder\
]]\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "samurai-general-changes";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "662a7bbf-a29c-c6bf-89fe-7d824ca975ae";
	};
	[2] = {
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
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["luaReturnsAction"] = false;
		["name"] = "TEA: swap to hand when doll is 22%";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "de58c6c4-f9fa-fe75-ac9b-c8a39db9344e";
	};
	[3] = {
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
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "391a7129-66fa-c1e5-b4f1-c085f6f50ffb";
	};
	[4] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["luaReturnsAction"] = false;
		["name"] = "-- Actions --";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "2bc3d293-fb93-66e6-8a4e-d66eceb7a262";
	};
	[5] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 34 or Player.incombat == false or Player.alive == false or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sam ~= nil and xivopeners_sam.openerStarted == true) or (SallySAM ~= nil and SallySAM.SkillSettings.Opener.enabled == true) then\
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
		actionskill:Cast(Player.id)\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Knockback";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "2657b322-6d2a-2ca3-aa50-08507357e411";
	};
	[6] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 34 or Player.incombat == false or Player.alive == false or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sam ~= nil and xivopeners_sam.openerStarted == true) or (SallySAM ~= nil and SallySAM.SkillSettings.Opener.enabled == true) then\
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
		["uuid"] = "46072472-af6e-0885-9a3b-23f57361e01c";
	};
	[7] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 34 or Player.level < 32 or Player.incombat == false or Player.alive == false or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sam ~= nil and xivopeners_sam.openerStarted == true) or (SallySAM ~= nil and SallySAM.SkillSettings.Opener.enabled == true) or HasBuff(eventArgs.entityID, 1195) then\
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
		-- if sally installed, use hotbar, otherwise use base\
		if SallySAM ~= nil then SallySAM.HotBarConfig.Feint.enabled = false else	actionskill:Cast(eventArgs.entityID) end \
\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end";
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
		["uuid"] = "2d550a3a-bee2-7a3f-a60e-ef82eba7c474";
	};
	[8] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 34 or Player.incombat == false or Player.alive == false or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sam ~= nil and xivopeners_sam.openerStarted == true) or (SallySAM ~= nil and SallySAM.SkillSettings.Opener.enabled == true) then\
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
		["uuid"] = "4c1522f3-fac6-a9e5-9e60-f7d2e3b15a74";
	};
	[9] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
if data.nilsPlayground.timeOfLastHeal == nil then data.nilsPlayground.timeOfLastHeal = 0 end\
\
if Player.job ~= 34 or Player.hp.percent > 50 or Player.hp.percent < 1 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfLastHeal ~= nil and TimeSince(data.nilsPlayground.timeOfLastHeal) < 2000) or Player.incombat == false or Player.alive == false or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sam ~= nil and xivopeners_sam.openerStarted == true) or (SallySAM ~= nil and SallySAM.SkillSettings.Opener.enabled == true) then\
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
		-- if sally installed, use hotbar, otherwise use base\
		if SallySAM ~= nil then SallySAM.HotBarConfig.SecondWind.enabled = false else	actionSecondWind:Cast() end \
\
		data.nilsPlayground.timeOfLastHeal = Now()\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if hasRegen and Player.hp.percent < 20 and availableSecondWind == false and availableBloodbath then\
		if SallySAM ~= nil then SallySAM.HotBarConfig.Bloodbath.enabled = false else	actionBloodbath:Cast() end \
\
		data.nilsPlayground.timeOfLastHeal = Now()\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if hasRegen == false and Player.hp.percent < 40 and availableSecondWind then\
		-- if sally installed, use hotbar, otherwise use base\
		if SallySAM ~= nil then SallySAM.HotBarConfig.SecondWind.enabled = false else	actionSecondWind:Cast() end \
\
		data.nilsPlayground.timeOfLastHeal = Now()\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if hasRegen == false and Player.hp.percent < 40 and availableSecondWind == false and availableBloodbath then\
		if SallySAM ~= nil then SallySAM.HotBarConfig.Bloodbath.enabled = false else	actionBloodbath:Cast() end \
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
		["uuid"] = "4a7c5903-ddf7-d9c5-a4d0-8308f8815f1d";
	};
	[10] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 34 or Player.level < 32 or Player.incombat == false or Player.alive == false or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sam ~= nil and xivopeners_sam.openerStarted == true) or (SallySAM ~= nil and SallySAM.SkillSettings.Opener.enabled == true) then\
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
local actionskill = ActionList:Get(1, 7498)\
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
						[17336] = 2,\
[7494] =2,\
				},\
    -- The Royal City of Rabanastre\
    [734] = {\
        [9660] = 2, -- Command Tower\
        [9665] = 2, -- Control Tower\
        [9670] = 2, -- Landwaster\
        [9673] = 2, -- To Dust\
        [9676] = 1, -- Hammerfall\
        [9686] = 2, -- Demolish\
        [9688] = 2, -- Quake IV\
        [9760] = 2, -- Dark Ultima\
        [9767] = 2, -- Coldblood\
        [9774] = 2, -- Fire IV\
        [9776] = 2, -- Unholy Sacrifice\
        [9790] = 2, -- Blizzard IV\
        [9837] = 2, -- Submission Tower\
        [9841] = 2, -- Choco Meteor\
        [9866] = 2, -- Heavenly Subjugation\
        [9869] = 2, -- Pomp and Circumstance\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11308] = 2, -- Solar Storm\
        [11316] = 2, -- Death Strike\
        [11318] = 2, -- Dust Storm\
        [11325] = 2, -- Water IV\
        [11344] = 3, -- Tsunami\
        [11349] = 2, -- Explosion\
        [11364] = 2, -- Incinerate\
        [11365] = 2, -- Accelerate\
        [11484] = 2, -- Fire IV\
        [11550] = 2, -- Lithobrake\
        [11612] = 2, -- Incinerate\
        [11613] = 2, -- Incinerate\
    },\
    -- Dohn Mheg\
    [821] = {\
        [7822] = 2, -- Landsblood\
        [8915] = 2, -- Tiiimbeeer\
        [13708] = 2, -- Virtuosic Capriccio\
    },\
    -- Mt. Gulg\
    [822] = {\
        [15612] = 2, -- Cyclone Wing\
        [15627] = 2, -- Sacrament of Penance\
        [15636] = 2, -- Orison Fortissimo\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15499] = 2, -- Lozatl's Scorn\
        [15506] = 2, -- Soundwave\
        [15507] = 2, -- Subsonics\
        [15515] = 2, -- Glossolalia\
        [15525] = 2, -- Confession of Faith\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14139] = 2, -- Energy Burst\
        [14172] = 2, -- Burst\
        [14177] = 2, -- Duskblade\
        [14206] = 2, -- Noahionto\
        [14439] = 2, -- Divine Light\
        [14548] = 2, -- Control Tower\
        [14552] = 2, -- Earth Hammer\
    },\
    -- Malikah's Well\
    [836] = {\
        [15590] = 2, -- Head Toss\
        [15593] = 2, -- Flail Smash\
        [15596] = 3, -- High Pressure\
        [15601] = 2, -- Intestinal Crank\
    },\
    -- Holminster Switch\
    [837] = {\
        [15813] = 2, -- The Path of Light\
        [15824] = 2, -- Scold's Bridle\
        [15826] = 2, -- Exorcise\
        [15832] = 2, -- Scavenger's Daughter\
        [16769] = 2, -- Taphephobia\
        [16777] = 2, -- Pendulum\
        [16778] = 2, -- \
    },\
    -- Amaurot\
    [838] = {\
        [15559] = 2, -- the Burning Sky\
        [15563] = 2, -- the Final Sky\
        [15567] = 2, -- Shrill Shriek\
        [15578] = 2, -- Therion Charge\
        [15587] = 2, -- Shadow Wreck\
        [17108] = 2, -- Cosmic Kiss\
    },\
    -- The Twinning\
    [840] = {\
        [15716] = 2, -- Beastly Roar\
        [15868] = 2, -- High-tension Discharger\
        [17306] = 2, -- Shattered Crystal\
    },\
    -- Akadaemia Anyder\
    [841] = {\
        [15878] = 2, -- Marine Mayhem\
        [15895] = 2, -- Arbor Storm\
        [15908] = 2, -- Thunderbolt\
    },\
    -- The Crown of the Immaculate\
    [848] = {\
        [16072] = 2, -- Scold's Bridle\
        [16106] = 2, -- Shadowreaver\
        [16190] = 2, -- Light Pillar\
    },\
    -- The Core\
    [849] = {\
        [15764] = 2, -- Eden's Gravity\
        [15772] = 2, -- Dimensional Shift\
        [15780] = 2, -- Frago Maximum\
        [15783] = 2, -- Mana Burst\
        [15785] = 2, -- Paradisal Dive\
        [17643] = 2, -- Eden's Fire III\
    },\
    -- The Halo\
    [850] = {\
        [15941] = 3, -- Empty Hate\
        [15982] = 2, -- Entropy\
    },\
    -- The Nereus Trench\
    [851] = {\
        [16324] = 2, -- Tidal Roar\
        [16332] = 2, -- Killer Wave\
        [16339] = 3, -- Tidal Wave\
        [17435] = 2, -- Tsunami\
    },\
    -- Atlas Peak\
    [852] = {\
        [16626] = 2, -- Crumbling Down\
        [16630] = 2, -- Geocrush\
        [16631] = 2, -- Voice of the Land\
        [17382] = 2, -- Earthen Fury\
    },\
    -- The Core\
    [853] = {\
        [15728] = 2, -- Eden's Gravity\
        [15736] = 2, -- Vice and Virtue\
        [15738] = 2, -- Vice and Virtue\
        [15743] = 2, -- Dimensional Shift\
        [15744] = 2, -- Pure Beam\
        [15755] = 2, -- Frago Maximus\
        [15759] = 2, -- Mana Burst\
        [15761] = 2, -- Paradisal Dive\
        [17647] = 2, -- Vice and Virtue\
        [17653] = 2, -- Eden's Fire III\
        [17657] = 2, -- Regained Fire III\
    },\
    -- The Halo\
    [854] = {\
        [15962] = 2, -- Empty Hate\
        [15971] = 2, -- Doomvoid Cleaver\
        [15984] = 2, -- Entropy\
        [15986] = 2, -- Quietus\
    },\
    -- The Nereus Trench\
    [855] = {\
        [16348] = 2, -- Tidal Roar\
        [16350] = 2, -- Tidal Rage\
        [16359] = 2, -- Killer Wave\
        [16370] = 2, -- Tidal Wave\
        [16396] = 2, -- Tidal Rage\
        [17436] = 2, -- Tsunami\
    },\
    -- Atlas Peak\
    [856] = {\
        [16655] = 2, -- Crumbling Down\
        [16659] = 3, -- Geocrush\
        [16660] = 2, -- Voice of the Land\
        [16675] = 2, -- Tectonic Uplift\
        [16682] = 2, -- Tumult\
        [16699] = 2, -- Earthen Fury\
        [17384] = 2, -- Earthen Fury\
    },\
    -- The Dancing Plague\
    [858] = {\
        [15667] = 2, -- Being Mortal\
        [15674] = 2, -- Puck's Caprice\
        [15681] = 2, -- Puck's Breath\
        [15691] = 2, -- Bright Sabbath\
        [16610] = 2, -- Whispering Wind\
        [16926] = 2, -- Uplift\
    },\
    -- The Copied Factory\
    [882] = {\
        [18245] = 2, -- Demolish Structure\
        [18261] = 2, -- Diffuse Laser\
        [18437] = 2, -- Laser-resistance Test\
        [18450] = 2, -- Impact\
        [18639] = 2, -- Forceful Impact\
        [18668] = 2, -- Total Annihilation Maneuver\
        [18675] = 2, -- Shrapnel Impact\
        [18678] = 2, -- Laser Saturation\
        [18753] = 2, -- 360-degree Bombing Maneuver\
    },\
    -- The Grand Cosmos\
    [884] = {\
        [18204] = 2, -- Ode to Lost Love\
        [18209] = 2, -- Ireful Wind\
        [18212] = 2, -- Far Wind\
        [18267] = 3, -- Otherwordly Heat\
        [18277] = 2, -- Culling Blade\
        [18282] = 2, -- Dark Pulse\
        [18285] = 2, -- Dark Well\
        [18851] = 2, -- Immortal Anathema\
    },\
    -- The Dying Gasp\
    [885] = {\
        [18344] = 2, -- Shadow Spread\
        [18360] = 2, -- Quake III\
        [18362] = 2, -- Dark II\
        [18364] = 2, -- Ancient Water III\
        [18367] = 2, -- Annihilation\
        [18380] = 2, -- Blight\
        [18381] = 2, -- Megiddo Flame\
        [18384] = 2, -- Shadow Flare\
        [18401] = 2, -- Wail of the Lost\
        [18403] = 2, -- Bident\
        [18409] = 2, -- Dark Seal\
        [18419] = 2, -- Gigantomachy\
        [18420] = 2, -- Quadrastrike\
    },\
				-- Anamnesis Anyder\
				[898] = {\
								[19288] = 2, -- The Final Verse\
								[19295] = 2, -- Wanderer's Pyre\
								[19315] = 2, -- Inscrutability\
								[19321] = 2, -- Ectoplasmic Ray\
								[19322] = 2, -- Ectoplasmic Ray\
								[19324] = 2, -- Seabed Ceremony\
								[19326] = 2, -- Falling Water \
								[19328] = 2, -- Flying Fount\
				},\
    -- Ashfall\
    [903] = {\
        [19415] = 2, -- Superstorm\
    },\
    -- Ashfall\
    [907] = {\
        [19447] = 2, -- Superstorm\
        [19456] = 2, -- Storm of Fury\
        [19465] = 2, -- Touchdown\
        [19476] = 2, -- Inferno Howl\
        [19448] = 2, -- Firestorm\
    }\
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
if NilsReactionLibrary.Combat.Actions.ThirdEye(eventArgs.entityID) == true then\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end \
\
-- keep in queue if event time does not match, otherwise complete the reation\
-- if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then \
		\
		-- if sally installed, use hotbar, otherwise use base\
		--if SallySAM ~= nil then SallySAM.HotBarConfig.ThirdEye.enabled = false else	actionskill:Cast(Player.id) end\
\
  \
--end";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Third Eye";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "2725dbc3-f93b-880d-ba65-5defae324a35";
	};
	[11] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 34 or Player.level < 32 or Player.incombat == false or Player.alive == false or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sam ~= nil and xivopeners_sam.openerStarted == true) or (SallySAM ~= nil and SallySAM.SkillSettings.Opener.enabled == true) then\
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
local actionskill = ActionList:Get(1, 7493)\
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
        [9770] = 2, -- Soulfix\
        [9869] = 2, -- Pomp and Circumstance\
    },\
    -- Malikah's Well\
    [836] = {\
        [15597] = 4, -- Wellbore\
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
		-- if sally installed, use hotbar, otherwise use base\
		if SallySAM ~= nil then SallySAM.HotBarConfig.Yaten.enabled = false else	actionskill:Cast(eventArgs.entityID) end\
\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Yaten";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "a4fbb6eb-ed5b-fe78-8477-e9aaf3169d80";
	};
	[12] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 9;
		["execute"] = "if Player.job ~= 34 or SallySAM == nil then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- reset hotbar\
SallySAM.HotBarConfig.Armslength.enabled = true\
SallySAM.HotBarConfig.Bloodbath.enabled = true\
SallySAM.HotBarConfig.Feint.enabled = true\
SallySAM.HotBarConfig.Gyoten.enabled = true\
SallySAM.HotBarConfig.Hagakure.enabled = true\
SallySAM.HotBarConfig.Kaiten.enabled = true\
SallySAM.HotBarConfig.LB.enabled = true\
SallySAM.HotBarConfig.LegSweep.enabled = true\
SallySAM.HotBarConfig.Meditate.enabled = true\
SallySAM.HotBarConfig.Meikyo.enabled = true\
SallySAM.HotBarConfig.Potion.enabled = true\
SallySAM.HotBarConfig.SecondWind.enabled = true\
SallySAM.HotBarConfig.Sprint.enabled = true\
SallySAM.HotBarConfig.ThirdEye.enabled = true\
SallySAM.HotBarConfig.TrueNorth.enabled = true\
SallySAM.HotBarConfig.Yaten.enabled = true\
\
-- reset quick toggles\
SallySAM.SkillSettings.Guren.enabled = true\
SallySAM.SkillSettings.Hagakure.enabled = true\
SallySAM.SkillSettings.Higanbana.enabled = true\
SallySAM.SkillSettings.Ikishoten.enabled = true\
SallySAM.SkillSettings.Kaiten.enabled = true\
SallySAM.SkillSettings.Kyuten.enabled = true\
SallySAM.SkillSettings.Meikyo.enabled = true\
SallySAM.SkillSettings.Opener.enabled = false -- \
\
-- SallySAM.SkillSettings.Potion.enabled = true\
\
SallySAM.SkillSettings.SaveCD.enabled = false -- \
SallySAM.SkillSettings.Senei.enabled = true\
SallySAM.SkillSettings.Shinten.enabled = true\
SallySAM.SkillSettings.Shoha.enabled = true\
SallySAM.SkillSettings.SmartTrueNorth.enabled = true\
SallySAM.SkillSettings.Tsubame.enabled = true\
SallySAM.SkillSettings.UseAOE.enabled = true\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Reset: toggles on wipe";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "fabca588-a3a1-1249-9113-0c3c759201c1";
	};
	[13] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "-- NilsReactionLibrary.\
\
if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
if data.nilsPlayground.timeOfDeath == nil then data.nilsPlayground.timeOfDeath = 0 end\
\
if Player.job ~= 34 or Player.alive == true then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
data.nilsPlayground.timeOfDeath = Now()\
\
if SallySAM ~= nil then\
  -- reset hotbar\
  SallySAM.HotBarConfig.Armslength.enabled = true\
  SallySAM.HotBarConfig.Bloodbath.enabled = true\
  SallySAM.HotBarConfig.Feint.enabled = true\
  SallySAM.HotBarConfig.Gyoten.enabled = true\
  SallySAM.HotBarConfig.Hagakure.enabled = true\
  SallySAM.HotBarConfig.Kaiten.enabled = true\
  SallySAM.HotBarConfig.LB.enabled = true\
  SallySAM.HotBarConfig.LegSweep.enabled = true\
  SallySAM.HotBarConfig.Meditate.enabled = true\
  SallySAM.HotBarConfig.Meikyo.enabled = true\
  SallySAM.HotBarConfig.Potion.enabled = true\
  SallySAM.HotBarConfig.SecondWind.enabled = true\
  SallySAM.HotBarConfig.Sprint.enabled = true\
  SallySAM.HotBarConfig.ThirdEye.enabled = true\
  SallySAM.HotBarConfig.TrueNorth.enabled = true\
  SallySAM.HotBarConfig.Yaten.enabled = true\
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
		["uuid"] = "d410fcfe-88e5-8add-b671-8468c962a41a";
	};
	[14] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["luaReturnsAction"] = false;
		["name"] = "-- Experimental --";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "cc391613-203b-dca2-bf2a-e6ac20599a6c";
	};
	[15] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "-- Setup\
if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
if data.nilsPlayground.Toggles == nil then data.nilsPlayground.Toggles = {} end\
if data.nilsPlayground.Toggles.OmniWhiteList == nil then data.nilsPlayground.Toggles.OmniWhiteList = { IsActive = false, TimelineActive = false} end\
if data.nilsPlayground.OmniList == nil then \
  data.nilsPlayground.OmniList = {\
    [541] = true, -- striking dummy\
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
    [9358] = true, -- Ice Veil    \
  }\
end\
\
-- Functional check\
if Player.job ~= 34 or Player.incombat == true or data.nilsPlayground.Toggles.OmniWhiteList.TimelineActive == true then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
local target = Player:GetTarget()\
if target == nil or not table.valid(target) or not target.attackable then\
\
		-- if target is not valid not turned off via timelines, then turn back on\
		if SallySAM ~= nil and data.nilsPlayground.Toggles.OmniWhiteList.TimelineActive == false then	SallySAM.SkillSettings.SmartTrueNorth.enabled = true end\
\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if data.nilsPlayground.OmniList[target.contentid] then\
		if SallySAM ~= nil then	SallySAM.SkillSettings.SmartTrueNorth.enabled = false end\
\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if target is not on list and not turned off via timelines, then turn back on\
if SallySAM ~= nil and data.nilsPlayground.Toggles.OmniWhiteList.TimelineActive == false then	SallySAM.SkillSettings.SmartTrueNorth.enabled = true end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
\
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
		["uuid"] = "c2815eda-a564-3946-b162-68ffca89508f";
	};
}
return obj1
