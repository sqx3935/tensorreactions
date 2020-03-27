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
--[[ ** Verson 3 **\
* filter added to `onentitychanneling` to ignore friendly targets\
* cleaned up code to make it more readable and simplify fall through\
* added on death monitor and updated general reactions to check the time (Thanks to JC for the suggestion)\
* removed rubyex feint and knockback\
* added 2 second delay between heals, this should improve and space out the heals more effectively\
]]\
\
--[[ ** Verson 2 **\
* massive refactor\
* added support for Anamnesis Anyder\
]]\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "monk-general-changes";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "77228a44-34bc-1bdc-9d43-f516ab7a31cc";
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
		["uuid"] = "2a2458cc-b28e-02c5-8c78-3ef37f5728f7";
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
		["uuid"] = "1cd399d1-cf61-b88e-a225-01d6510dcd9c";
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
		["uuid"] = "58a88bb5-f02c-da9a-ac86-e6366f8ef541";
	};
	[5] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 20 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_mnk ~= nil and xivopeners_mnk.openerStarted == true) then\
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
		["uuid"] = "fe057cad-ad7f-cd80-a4f0-1f80a5af9245";
	};
	[6] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 20 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_mnk ~= nil and xivopeners_mnk.openerStarted == true) then\
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
		["uuid"] = "7566ed16-9d97-835d-b310-683766e0b0b0";
	};
	[7] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 20 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_mnk ~= nil and xivopeners_mnk.openerStarted == true) then\
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
		["uuid"] = "3e892854-78cd-2c2f-89b9-94386b0c1e9c";
	};
	[8] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 20 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_mnk ~= nil and xivopeners_mnk.openerStarted == true) then\
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
		actionskill:Cast(eventArgs.entityID)\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
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
		["uuid"] = "f36025e6-e372-9579-8475-9fa9fbb4bd06";
	};
	[9] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "-- ONLY ENABLE IF YOU UNDERSTAND WHY --\
\
if Player.job ~= 22 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_mnk ~= nil and xivopeners_mnk.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local action = ActionList:Get(1, 7396)\
if action.cdmax - action.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- open world checks, instances are regular parties (even from PF)\
local plist = EntityList.crossworldparty\
if (table.valid(plist)) then\
    for i, member in pairs(plist) do\
        if HasBuff(member.id, 141) then -- battle voice\
            return true\
        end\
    end\
else\
    plist = EntityList.myparty\
    if (table.valid(plist)) then\
        for i, member in pairs(plist) do\
            if HasBuff(member.id, 141) then  -- battle voice\
                return true\
            end\
        end\
    end\
end\
\
local target = Player:GetTarget()\
if target ~= nil and table.valid(target) then\
    -- 638 vulnability/trick attack, 1221 Chain Stratagem\
    if HasBuff(target.id, 638) or HasBuff(target.id, 1221) then\
        return true\
    end\
end\
\
-- 786 Battle litany, 1185 Brotherhood, 1822 Technical Finish, 1239 Embolden ,1213 Devotion\
if HasBuff(Player.id, 786) or HasBuff(Player.id, 1185) or HasBuff(Player.id, 1822) or HasBuff(Player.id, 1239) or HasBuff(Player.id, 1213) then action:Cast() end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Brotherhood";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "cb95c8e0-e16f-4282-866f-fbbe87086b46";
	};
	[10] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 20 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_mnk ~= nil and xivopeners_mnk.openerStarted == true) then\
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
local actionskill = ActionList:Get(1, 7394)\
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
        [9660] = 3, -- Command Tower\
        [9665] = 3, -- Control Tower\
        [9670] = 7, -- Landwaster\
        [9673] = 2, -- To Dust\
        [9676] = 1, -- Hammerfall\
        [9686] = 4, -- Demolish\
        [9688] = 4, -- Quake IV\
        [9760] = 2, -- Dark Ultima\
        [9767] = 8, -- Coldblood\
        [9774] = 4, -- Fire IV\
        [9776] = 5, -- Unholy Sacrifice\
        [9790] = 10, -- Blizzard IV\
        [9837] = 6, -- Submission Tower\
        [9841] = 4, -- Choco Meteor\
        [9866] = 3, -- Heavenly Subjugation\
        [9869] = 5, -- Pomp and Circumstance\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11308] = 5, -- Solar Storm\
        [11316] = 5, -- Death Strike\
        [11318] = 3, -- Dust Storm\
        [11325] = 4, -- Water IV\
        [11344] = 3, -- Tsunami\
        [11349] = 2, -- Explosion\
        [11364] = 5, -- Incinerate\
        [11365] = 8, -- Accelerate\
        [11484] = 5, -- Fire IV\
        [11550] = 5, -- Lithobrake\
        [11612] = 5, -- Incinerate\
        [11613] = 10, -- Incinerate\
    },\
    -- Dohn Mheg\
    [821] = {\
        [7822] = 3, -- Landsblood\
        [8915] = 6, -- Tiiimbeeer\
        [13708] = 5, -- Virtuosic Capriccio\
    },\
    -- Mt. Gulg\
    [822] = {\
        [15612] = 3, -- Cyclone Wing\
        [15627] = 4, -- Sacrament of Penance\
        [15636] = 4, -- Orison Fortissimo\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15499] = 3, -- Lozatl's Scorn\
        [15506] = 3, -- Soundwave\
        [15507] = 7, -- Subsonics\
        [15515] = 3, -- Glossolalia\
        [15525] = 5, -- Confession of Faith\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14139] = 4, -- Energy Burst\
        [14172] = 2, -- Burst\
        [14177] = 10, -- Duskblade\
        [14206] = 4, -- Noahionto\
        [14439] = 4, -- Divine Light\
        [14548] = 3, -- Control Tower\
        [14552] = 5, -- Earth Hammer\
    },\
    -- Malikah's Well\
    [836] = {\
        [15590] = 5, -- Head Toss\
        [15593] = 3, -- Flail Smash\
        [15596] = 3, -- High Pressure\
        [15601] = 4, -- Intestinal Crank\
    },\
    -- Holminster Switch\
    [837] = {\
        [15813] = 4, -- The Path of Light\
        [15824] = 4, -- Scold's Bridle\
        [15826] = 5, -- Exorcise\
        [15832] = 4, -- Scavenger's Daughter\
        [16769] = 5, -- Taphephobia\
        [16777] = 5, -- Pendulum\
        [16778] = 4, -- \
    },\
    -- Amaurot\
    [838] = {\
        [15559] = 5, -- the Burning Sky\
        [15567] = 3, -- Shrill Shriek\
        [15578] = 7, -- Therion Charge\
        [15587] = 4, -- Shadow Wreck\
        [17108] = 4, -- Cosmic Kiss\
    },\
    -- The Twinning\
    [840] = {\
        [15716] = 4, -- Beastly Roar\
        [15868] = 3, -- High-tension Discharger\
        [17306] = 6, -- Shattered Crystal\
    },\
    -- Akadaemia Anyder\
    [841] = {\
        [15878] = 3, -- Marine Mayhem\
        [15895] = 3, -- Arbor Storm\
        [15908] = 4, -- Thunderbolt\
    },\
    -- The Crown of the Immaculate\
    [848] = {\
        [16072] = 6, -- Scold's Bridle\
        [16106] = 5, -- Shadowreaver\
        [16190] = 5, -- Light Pillar\
    },\
    -- The Core\
    [849] = {\
        [15764] = 4, -- Eden's Gravity\
        [15772] = 4, -- Dimensional Shift\
        [15780] = 5, -- Frago Maximum\
        [15783] = 4, -- Mana Burst\
        [15785] = 5, -- Paradisal Dive\
        [17643] = 5, -- Eden's Fire III\
    },\
    -- The Halo\
    [850] = {\
        [15941] = 4, -- Empty Hate\
        [15982] = 6, -- Entropy\
    },\
    -- The Nereus Trench\
    [851] = {\
        [16324] = 4, -- Tidal Roar\
        [16332] = 6, -- Killer Wave\
        [16339] = 4, -- Tidal Wave\
        [17435] = 11, -- Tsunami\
    },\
    -- Atlas Peak\
    [852] = {\
        [16626] = 5, -- Crumbling Down\
        [16630] = 3, -- Geocrush\
        [16631] = 4, -- Voice of the Land\
        [17382] = 7, -- Earthen Fury\
    },\
    -- The Core\
    [853] = {\
        [15728] = 4, -- Eden's Gravity\
        [15736] = 8, -- Vice and Virtue\
        [15738] = 8, -- Vice and Virtue\
        [15743] = 4, -- Dimensional Shift\
        [15744] = 8, -- Pure Beam\
        [15759] = 4, -- Mana Burst\
        [15761] = 5, -- Paradisal Dive\
        [17647] = 8, -- Vice and Virtue\
        [17653] = 6, -- Eden's Fire III\
        [17657] = 6, -- Regained Fire III\
    },\
    -- The Halo\
    [854] = {\
        [15962] = 4, -- Empty Hate\
        [15971] = 4, -- Doomvoid Cleaver\
        [15984] = 6, -- Entropy\
        [15986] = 6, -- Quietus\
    },\
    -- The Nereus Trench\
    [855] = {\
        [16348] = 4, -- Tidal Roar\
        [16350] = 5, -- Tidal Rage\
        [16359] = 6, -- Killer Wave\
        [16370] = 4, -- Tidal Wave\
        [16396] = 5, -- Tidal Rage\
        [17436] = 11, -- Tsunami\
    },\
    -- Atlas Peak\
    [856] = {\
        [16655] = 5, -- Crumbling Down\
        [16659] = 3, -- Geocrush\
        [16660] = 4, -- Voice of the Land\
        [16675] = 7, -- Tectonic Uplift\
        [16682] = 3, -- Tumult\
        [16699] = 9, -- Earthen Fury\
        [17384] = 7, -- Earthen Fury\
    },\
    -- The Dancing Plague\
    [858] = {\
        [15667] = 12, -- Being Mortal\
        [15674] = 4, -- Puck's Caprice\
        [15681] = 5, -- Puck's Breath\
        [15691] = 4, -- Bright Sabbath\
        [16610] = 5, -- Whispering Wind\
        [16926] = 5, -- Uplift\
    },\
    -- The Copied Factory\
    [882] = {\
        [18261] = 4, -- Diffuse Laser\
        [18639] = 4, -- Forceful Impact\
        [18668] = 5, -- Total Annihilation Maneuver\
        [18675] = 5, -- Shrapnel Impact\
        [18678] = 4, -- Laser Saturation\
        [18753] = 5, -- 360-degree Bombing Maneuver\
    },\
    -- The Grand Cosmos\
    [884] = {\
        [18204] = 5, -- Ode to Lost Love\
        [18209] = 5, -- Ireful Wind\
        [18212] = 5, -- Far Wind\
        [18267] = 5, -- Otherwordly Heat\
        [18277] = 5, -- Culling Blade\
        [18282] = 5, -- Dark Pulse\
        [18285] = 5, -- Dark Well\
        [18851] = 5, -- Immortal Anathema\
    },\
    -- The Dying Gasp\
    [885] = {\
        [18344] = 5, -- Shadow Spread\
        [18362] = 5, -- Dark II\
        [18367] = 5, -- Annihilation\
        [18380] = 5, -- Blight\
    },\
    -- Ashfall\
    [903] = {\
        [19415] = 5, -- Superstorm\
    },\
    -- The Gandof Thunder Plains\
    [906] = {\
        [19381] = 5, -- Judgment Volts\
    },\
    -- Ashfall\
    [907] = {\
        [19447] = 5, -- Superstorm\
        [19456] = 5, -- Storm of Fury\
        [19465] = 5, -- Touchdown\
        [19476] = 5, -- Inferno Howl\
        [19448] = 5, -- Firestorm\
    },\
    -- Cinder Drift\
    [912] = {\
        [19134] = 5, -- Optimized Ultima\
        [20050] = 5, -- Dalamud Impact\
    },\
				-- Anamnesis Anyder\
    [898] = {\
        [19288] = 5, -- The Final Verse\
								[19295] = 5, -- Wanderer's Pyre\
								[19306] = 5, -- Inscrutability\
								[19315] = 5, -- Inscrutability\
								[19321] = 5, -- Ectoplasmic Ray\
								[19322] = 5, -- Ectoplasmic Ray\
								[19324] = 5, -- Seabed Ceremony\
								[19328] = 5, -- Flying Fount\
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
		actionskill:Cast(Player.id)\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Riddle of Earth";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "1c47a9fd-9dfb-5f63-933d-ab331601af60";
	};
	[11] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 20 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_mnk ~= nil and xivopeners_mnk.openerStarted == true) then\
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
local actionskill = ActionList:Get(1, 65)\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- Map, spell id, timer\
local contentTable = {\
    -- The Orbonne Monastery\
    [826] = {\
        [14161] = 3, -- Cleansing Strike\
    },\
    -- Ashfall\
    [903] = {\
        [19415] = 3, -- Superstorm\
    },\
    -- Ashfall\
    [907] = {\
        [19447] = 3, -- Superstorm\
        [19448] = 3, -- Firestorm\
    },\
    -- Cinder Drift\
    [912] = {\
        [19134] = 3, -- Optimized Ultima\
        [20050] = 3, -- Dalamud Impact\
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
		actionskill:Cast(Player.id)\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Mantra";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "b44e1aba-ee2a-9020-9bf1-fd0782b971d7";
	};
	[12] = {
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
		["uuid"] = "c50ccaa6-29cd-6cab-ad9c-746cffed5234";
	};
	[13] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.SelfHeal()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil\
";
		["executeType"] = 2;
		["luaReturnsAction"] = true;
		["name"] = "Cast: Self Heal";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "8469d13e-6763-6e7b-bac1-06fb3d72fc75";
	};
}
return obj1
