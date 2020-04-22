-- Persistent Data
local multiRefObjects = {
{},{},
} -- multiRefObjects
local obj1 = {
	[1] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
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
* added on death monitor and updated general reactions to check the time\
* removed rubyex feint and knockback\
* added 2 second delay between heals, this should improve and space out the heals more effectively\
]]\
\
--[[ ** Verson 2 **\
* massive refactor, removes the need to have sally vs other reactions\
* added support for Anamnesis Anyder\
]]\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "drg-general-changes",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 0,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "b9e983d2-7b7b-99a8-9a2e-660827df8772",
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
					[2] = 2,
					[3] = 3,
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
				["targetContentID"] = 9212,
				["targetName"] = "",
				["targetSubType"] = 1,
				["targetType"] = 3,
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
				["category"] = 1,
				["comparator"] = 1,
				["conditionLua"] = "",
				["conditionType"] = 2,
				["conditions"] = multiRefObjects[2],
				["contentid"] = 9214,
				["enmityValue"] = 0,
				["eventArgOptionType"] = 1,
				["eventArgType"] = 1,
				["eventBuffDuration"] = 0,
				["eventBuffID"] = -1,
				["eventChatLine"] = "",
				["eventEntityContentID"] = -1,
				["eventEntityID"] = -1,
				["eventEntityName"] = "",
				["eventMarkerID"] = -1,
				["eventOwnerContentID"] = -1,
				["eventOwnerID"] = -1,
				["eventOwnerName"] = "",
				["eventSpellID"] = -1,
				["eventSpellName"] = -1,
				["eventTargetContentID"] = -1,
				["eventTargetID"] = -1,
				["eventTargetName"] = "",
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
			[2] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = multiRefObjects[1],
				["category"] = 1,
				["comparator"] = 2,
				["conditionLua"] = "",
				["conditionType"] = 3,
				["conditions"] = multiRefObjects[2],
				["contentid"] = -1,
				["enmityValue"] = 0,
				["eventArgOptionType"] = 1,
				["eventArgType"] = 1,
				["eventBuffDuration"] = 0,
				["eventBuffID"] = -1,
				["eventChatLine"] = "",
				["eventEntityContentID"] = -1,
				["eventEntityID"] = -1,
				["eventEntityName"] = "",
				["eventMarkerID"] = -1,
				["eventOwnerContentID"] = -1,
				["eventOwnerID"] = -1,
				["eventOwnerName"] = "",
				["eventSpellID"] = -1,
				["eventSpellName"] = -1,
				["eventTargetContentID"] = -1,
				["eventTargetID"] = -1,
				["eventTargetName"] = "",
				["gaugeIndex"] = 1,
				["gaugeValue"] = 0,
				["hpType"] = 1,
				["hpValue"] = 22,
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
			[3] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = multiRefObjects[1],
				["category"] = 2,
				["comparator"] = 1,
				["conditionLua"] = "",
				["conditionType"] = 8,
				["conditions"] = multiRefObjects[2],
				["contentid"] = -1,
				["enmityValue"] = 0,
				["eventArgOptionType"] = 1,
				["eventArgType"] = 1,
				["eventBuffDuration"] = 0,
				["eventBuffID"] = -1,
				["eventChatLine"] = "",
				["eventEntityContentID"] = -1,
				["eventEntityID"] = -1,
				["eventEntityName"] = "",
				["eventMarkerID"] = -1,
				["eventOwnerContentID"] = -1,
				["eventOwnerID"] = -1,
				["eventOwnerName"] = "",
				["eventSpellID"] = -1,
				["eventSpellName"] = -1,
				["eventTargetContentID"] = -1,
				["eventTargetID"] = -1,
				["eventTargetName"] = "",
				["gaugeIndex"] = 1,
				["gaugeValue"] = 0,
				["hpType"] = 1,
				["hpValue"] = 0,
				["inCombatType"] = 1,
				["inRangeValue"] = 0,
				["lastSkillID"] = -1,
				["localmapid"] = 887,
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
		["eventType"] = 1,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "TEA: swap to hand when doll is 22%",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "9cf527ce-426b-bf1f-8ce8-312900c3d0c9",
	},
	[3] = {
		["actions"] = {
			[1] = {
				["aType"] = 3,
				["actionID"] = -1,
				["actionLua"] = "",
				["allowInterrupt"] = false,
				["conditions"] = {
					[1] = 1,
					[2] = 2,
					[3] = 3,
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
				["targetContentID"] = 9211,
				["targetName"] = "",
				["targetSubType"] = 1,
				["targetType"] = 3,
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
				["category"] = 1,
				["comparator"] = 1,
				["conditionLua"] = "",
				["conditionType"] = 2,
				["conditions"] = multiRefObjects[2],
				["contentid"] = 9214,
				["enmityValue"] = 0,
				["eventArgOptionType"] = 1,
				["eventArgType"] = 1,
				["eventBuffDuration"] = 0,
				["eventBuffID"] = -1,
				["eventChatLine"] = "",
				["eventEntityContentID"] = -1,
				["eventEntityID"] = -1,
				["eventEntityName"] = "",
				["eventMarkerID"] = -1,
				["eventOwnerContentID"] = -1,
				["eventOwnerID"] = -1,
				["eventOwnerName"] = "",
				["eventSpellID"] = -1,
				["eventSpellName"] = -1,
				["eventTargetContentID"] = -1,
				["eventTargetID"] = -1,
				["eventTargetName"] = "",
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
			[2] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = multiRefObjects[1],
				["category"] = 1,
				["comparator"] = 2,
				["conditionLua"] = "",
				["conditionType"] = 3,
				["conditions"] = multiRefObjects[2],
				["contentid"] = -1,
				["enmityValue"] = 0,
				["eventArgOptionType"] = 1,
				["eventArgType"] = 1,
				["eventBuffDuration"] = 0,
				["eventBuffID"] = -1,
				["eventChatLine"] = "",
				["eventEntityContentID"] = -1,
				["eventEntityID"] = -1,
				["eventEntityName"] = "",
				["eventMarkerID"] = -1,
				["eventOwnerContentID"] = -1,
				["eventOwnerID"] = -1,
				["eventOwnerName"] = "",
				["eventSpellID"] = -1,
				["eventSpellName"] = -1,
				["eventTargetContentID"] = -1,
				["eventTargetID"] = -1,
				["eventTargetName"] = "",
				["gaugeIndex"] = 1,
				["gaugeValue"] = 0,
				["hpType"] = 1,
				["hpValue"] = 22,
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
			[3] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = multiRefObjects[1],
				["category"] = 2,
				["comparator"] = 1,
				["conditionLua"] = "",
				["conditionType"] = 8,
				["conditions"] = multiRefObjects[2],
				["contentid"] = -1,
				["enmityValue"] = 0,
				["eventArgOptionType"] = 1,
				["eventArgType"] = 1,
				["eventBuffDuration"] = 0,
				["eventBuffID"] = -1,
				["eventChatLine"] = "",
				["eventEntityContentID"] = -1,
				["eventEntityID"] = -1,
				["eventEntityName"] = "",
				["eventMarkerID"] = -1,
				["eventOwnerContentID"] = -1,
				["eventOwnerID"] = -1,
				["eventOwnerName"] = "",
				["eventSpellID"] = -1,
				["eventSpellName"] = -1,
				["eventTargetContentID"] = -1,
				["eventTargetID"] = -1,
				["eventTargetName"] = "",
				["gaugeIndex"] = 1,
				["gaugeValue"] = 0,
				["hpType"] = 1,
				["hpValue"] = 0,
				["inCombatType"] = 1,
				["inRangeValue"] = 0,
				["lastSkillID"] = -1,
				["localmapid"] = 887,
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
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "TEA: swap to living liquid when doll is 22%",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "fba117d2-6652-935d-9a90-0a490137fe5a",
	},
	[4] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "-- Actions --",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 0,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "55baa651-342e-a2be-b452-fde428607417",
	},
	[5] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 22 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_drg ~= nil and xivopeners_drg.openerStarted == true) then\
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
end",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Leg Sweep",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "1e89f896-d8b9-1db6-a9fd-a3a7d733b625",
	},
	[6] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 22 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_drg ~= nil and xivopeners_drg.openerStarted == true) then\
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
end\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Knockback",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "600dab04-285e-1867-8e9a-fc3ced71dd21",
	},
	[7] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 22 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_drg ~= nil and xivopeners_drg.openerStarted == true) then\
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
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Stop Casting",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "91b38e28-f7f9-6d67-9add-8ce879d87f1a",
	},
	[8] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 22 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_drg ~= nil and xivopeners_drg.openerStarted == true) then\
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
end",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Feint",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "c0e0c5c7-0617-e59e-af67-99f9b04242d8",
	},
	[9] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "-- ONLY use if -----------not------------------ using sallyDRG\
\
if Player.job ~= 22 or Player.incombat == false or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_drg ~= nil and xivopeners_drg.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local action = ActionList:Get(1, 7398)\
if action.cdmax - action.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
local enforcePartyMode = false -- set this to true if you want to force this to only work when in a party\
\
local contentTable = {\
		[27] = \"Summoner\",\
		[25] = \"Blackmage\",\
		[34] = \"Samurai\",\
		[20] = \"Monk\",\
		[30] = \"Ninja\",\
		[35] = \"Red Mage\",\
		[22] = \"Dragoon\",\
		[31] = \"Machinist\",\
		[23] = \"Bard\",\
		[38] = \"Dancer\",\
}\
\
local plist = EntityList(\"alive,myparty,friendly,maxdistance=30,distanceto=\" .. tostring(Player.id))\
-- support for npc team (ex. Trust)\
if not table.valid(plist) then \
		plist = EntityList(\"alive,chartype=9,targetable,maxdistance=30,distanceto=\" .. tostring(Player.id))\
end\
\
for key,job in pairs(contentTable) do\
		for i, member in pairs(plist) do\
						if member.job == key and MissingBuff(member,1454) then\
								action:Cast(member.id)\
								\
								self.eventConditionMismatch = true -- suppressing the log\
								self.used = true \
								return nil\
						end\
		end\
end\
\
if enforcePartyMode then\
				self.eventConditionMismatch = true -- suppressing the log\
				self.used = true \
				return nil\
end\
\
action:Cast()\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Dragon Eye",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "26903304-de63-5b8b-97fa-9f4cd27db891",
	},
	[10] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "-- ONLY ENABLE IF YOU UNDERSTAND WHY --\
\
if Player.job ~= 22 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_drg ~= nil and xivopeners_drg.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local action = ActionList:Get(1, 3557)\
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
return nil",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Battle Litany",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "dbd70d59-9b4f-0952-81fd-1c52aa55d4ea",
	},
	[11] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 1,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "---- Revamp ----",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "f55c2d77-eb48-c056-96f8-c72a6aa2a962",
	},
	[12] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 1,
		["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.SelfHeal()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Self Heal",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "c4494e40-6690-2cf4-b616-2db371752705",
	},
	[13] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 1,
		["execute"] = "-- NilsReactionLibrary.Combat.Toggles.Ninja.AOE(false, true) [test timeline override]\
NilsReactionLibrary.Combat.Toggles.Handler.AOE()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
\
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "QT: AOE Blacklist",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "35d2d223-c677-b40e-802d-cba2a9617767",
	},
	[14] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 1,
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Handler.CD()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "QT: CD Blacklist",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "39bca2bf-8f63-46e3-b4cc-5ae77a04022b",
	},
	[15] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 1,
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Handler.DOT()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
\
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "QT: DOT Blacklist",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "8fcf85f6-becf-17b7-ae93-b5937d97fb1b",
	},
	[16] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 1,
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Handler.Omni()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "QT: Omni Whitelist",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "d7415950-e41a-0975-b389-6813a6ec96c7",
	},
	[17] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 1,
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Handler.Jumps()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "QT: Jumps Blacklist",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "efaeb712-5cd8-7b1a-a080-5106a52c1057",
	},
	[18] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 10,
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Dragoon.Reset()\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Reset: toggles on death",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "8c8722a2-ab0f-8f09-8610-5d5507414998",
	},
	[19] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 9,
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Dragoon.Reset()\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Reset: toggles on wipe",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 6,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "3778f756-3403-bb60-8bb4-71b3374f9108",
	},
}
return obj1
