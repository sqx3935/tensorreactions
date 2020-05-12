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
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "samurai-general-changes",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 0,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "662a7bbf-a29c-c6bf-89fe-7d824ca975ae",
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
		["enabled"] = false,
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
		["uuid"] = "de58c6c4-f9fa-fe75-ac9b-c8a39db9344e",
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
		["uuid"] = "391a7129-66fa-c1e5-b4f1-c085f6f50ffb",
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
		["uuid"] = "2bc3d293-fb93-66e6-8a4e-d66eceb7a262",
	},
	[5] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
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
		["uuid"] = "4c1522f3-fac6-a9e5-9e60-f7d2e3b15a74",
	},
	[6] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
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
		["uuid"] = "2d550a3a-bee2-7a3f-a60e-ef82eba7c474",
	},
	[7] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
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
--end",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Third Eye",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "2725dbc3-f93b-880d-ba65-5defae324a35",
	},
	[8] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
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
end",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Yaten",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "a4fbb6eb-ed5b-fe78-8477-e9aaf3169d80",
	},
	[9] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
		["execute"] = "if Player.incombat == false then\
 self.eventConditionMismatch = true -- suppressing the log\
	self.used = true \
	return nil\
end\
\
wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Logic.Knockback(eventArgs.entityID, 0, eventArgs.spellID, true)\
if wasSuccessful == true then\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end\
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = true,
		["name"] = "Cast: Knockback",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 20,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "2657b322-6d2a-2ca3-aa50-08507357e411",
	},
	[10] = {
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
		["uuid"] = "7474ca8e-4466-3c34-b9bd-f804669229ec",
	},
	[11] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "-- NilsReactionLibrary.Combat.Toggles.Ninja.CD(false, true) [test timeline override]\
NilsReactionLibrary.Combat.Toggles.Handler.CD()\
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
		["uuid"] = "168608ad-493a-0240-862e-3d244e27d224",
	},
	[12] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
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
		["uuid"] = "b8a42404-cb00-3844-aa48-90722d4ee0bb",
	},
	[13] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
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
		["uuid"] = "d710cbde-8e1b-95ed-834d-0555f7361379",
	},
	[14] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
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
		["uuid"] = "8fcc666d-adad-3482-849e-c6454d320522",
	},
	[15] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "if Player.incombat == false then\
 self.eventConditionMismatch = true -- suppressing the log\
	self.used = true \
	return nil\
end\
\
wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.SelfHeal()\
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
		["uuid"] = "4a7c5903-ddf7-d9c5-a4d0-8308f8815f1d",
	},
	[16] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 9,
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Samurai.Reset(true)\
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
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "fabca588-a3a1-1249-9113-0c3c759201c1",
	},
	[17] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 10,
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Samurai.Reset(false)\
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
		["uuid"] = "655b7c29-2b7f-d039-b98a-6788905f7462",
	},
	[18] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "if gReactionZoomhackSet == nil then\
  gDevHackMaxZoom = 40.0\
	 gDevHackMinZoom = 1.5\
  gReactionZoomhackSet = true\
end\
\
if gReactionSpeedhackSet == nil then\
  gDevHackWalkSpeed = 8\
  gReactionSpeedhackSet = true\
end\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true ",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Set Hacks",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 1,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "46eae455-7acf-4667-837c-e90ab3228e73",
	},
	[19] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "data.nilstest = false\
if data.count == nil then data.count = 0 end\
data.count = data.count + 1\
\
d(data.count)\
--wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionCore.Hotbar.Samurai.ThirdEye()\
--wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionCore.Hotbar.Samurai.Sprint()\
--wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionCore.Hotbar.Samurai.SecondWind()\
--wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionCore.Hotbar.Samurai.BloodBath()\
--wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionCore.Hotbar.Samurai.Feint()\
--wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionCore.Hotbar.Samurai.LegSweep()\
\
SallySAM.HotBarConfig.ThirdEye.enabled = false\
SallySAM.HotBarConfig.Sprint.enabled = false\
SallySAM.HotBarConfig.SecondWind.enabled = false\
SallySAM.HotBarConfig.Bloodbath.enabled = false\
SallySAM.HotBarConfig.Feint.enabled = false\
SallySAM.HotBarConfig.LegSweep.enabled = false\
\
--d(\"wassuccssful \" ..tostring(wasSuccessful))\
if data.count > 300 then\
  data.count = 0\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end\
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "test",
		["throttleTime"] = 10000,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "7e1c4056-3cc5-d62b-b0f9-ea28c99bc99d",
	},
}
return obj1
