-- Persistent Data
local multiRefObjects = {
{},
} -- multiRefObjects
local obj1 = {
	[1] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "-- LIBRARY REQUIRED\
-- Install https://github.com/nil2share/tensorreactions/tree/master/Nil%20Reaction%20Library into C:\\MINIONAPP\\Bots\\FFXIVMinion64\\LuaMods\\Nil Reaction Library\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Readme",
			["throttleTime"] = 0,
			["time"] = 12,
			["timeRange"] = false,
			["timelineIndex"] = 1,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "d36c46c7-8e1b-8926-95b6-c665e44054f8",
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
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reset Toggle Controls",
			["throttleTime"] = 0,
			["time"] = 12,
			["timeRange"] = false,
			["timelineIndex"] = 1,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "5ac1cc4c-9c8d-4b0a-ae2a-a0b81d56a55c",
		},
	},
	[2] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Sprint()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Sprint",
			["throttleTime"] = 0,
			["time"] = 22.2,
			["timeRange"] = false,
			["timelineIndex"] = 2,
			["timerEndOffset"] = 0,
			["timerOffset"] = -2,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "764ff14c-5cb8-f6a3-b4db-b2ce878fdea7",
		},
	},
	[4] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 35.6,
			["timeRange"] = false,
			["timelineIndex"] = 4,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "eae99922-fa9f-8080-8033-93b123091061",
		},
	},
	[7] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 63.3,
			["timeRange"] = false,
			["timelineIndex"] = 7,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "2e3cecb6-6ae2-d252-a505-1c8b7f9fd95f",
		},
	},
	[14] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Knockback()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Knockback",
			["throttleTime"] = 0,
			["time"] = 96.2,
			["timeRange"] = false,
			["timelineIndex"] = 14,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "fdd63a20-45e4-7414-8c67-7fc1c6572b35",
		},
	},
	[18] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionLibrary.Logic.Toggles.CDOff(NilsReactionLibrary.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 127.4,
			["timeRange"] = true,
			["timelineIndex"] = 18,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "444f5406-3c4a-d48c-8649-3670d196701a",
		},
	},
	[19] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3,
					["actionID"] = -1,
					["actionLua"] = "",
					["allowInterrupt"] = false,
					["castPosX"] = 0,
					["castPosY"] = 0,
					["castPosZ"] = 0,
					["conditions"] = {
						[1] = 1,
					},
					["endIfUsed"] = false,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["isAreaTarget"] = false,
					["luaNeedsWeaveWindow"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = true,
					["showPositionPreview"] = false,
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
					["buffIDList"] = {
					},
					["category"] = 4,
					["comparator"] = 1,
					["conditionLua"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable then return false end\
return true\
",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[1],
					["contentid"] = -1,
					["dequeueIfLuaFalse"] = false,
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
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "target boss",
			["throttleTime"] = 0,
			["time"] = 128.6,
			["timeRange"] = true,
			["timelineIndex"] = 19,
			["timerEndOffset"] = 8,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -8,
			["used"] = false,
			["uuid"] = "52d08ae8-6514-51ec-b4a1-366c2f0f2dac",
		},
	},
	[20] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionLibrary.Logic.Toggles.CDOn(NilsReactionLibrary.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 128.9,
			["timeRange"] = true,
			["timelineIndex"] = 20,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "9374d7de-3eb1-2ade-ad61-59a36dc31272",
		},
	},
	[22] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 148.3,
			["timeRange"] = false,
			["timelineIndex"] = 22,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "d418cb18-3fa5-5ecf-98fb-39b0ba91ad27",
		},
	},
	[31] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 221.2,
			["timeRange"] = false,
			["timelineIndex"] = 31,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "e3e5b868-8247-798e-a89e-85a38cd5903b",
		},
	},
	[33] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Sprint()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Sprint",
			["throttleTime"] = 0,
			["time"] = 244.6,
			["timeRange"] = false,
			["timelineIndex"] = 33,
			["timerEndOffset"] = 0,
			["timerOffset"] = -2,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "3fb7b331-c763-2cbe-b8f5-0fda25df4d69",
		},
	},
	[38] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionLibrary.Logic.Toggles.CDOff(NilsReactionLibrary.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 263.4,
			["timeRange"] = true,
			["timelineIndex"] = 38,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "b05729c0-7921-8464-a0c1-8f6587c72e54",
		},
	},
	[39] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Summoner.CD(true, true)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 265.6,
			["timeRange"] = true,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "556b4b94-a29f-1937-9c10-599f6ea63494",
		},
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 3,
					["actionID"] = -1,
					["actionLua"] = "",
					["allowInterrupt"] = false,
					["castPosX"] = 0,
					["castPosY"] = 0,
					["castPosZ"] = 0,
					["conditions"] = {
						[1] = 1,
					},
					["endIfUsed"] = false,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["isAreaTarget"] = false,
					["luaNeedsWeaveWindow"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = true,
					["showPositionPreview"] = false,
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
					["buffIDList"] = {
					},
					["category"] = 4,
					["comparator"] = 1,
					["conditionLua"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable then return false end\
return true\
",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[1],
					["contentid"] = -1,
					["dequeueIfLuaFalse"] = false,
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
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "target boss",
			["throttleTime"] = 0,
			["time"] = 265.6,
			["timeRange"] = true,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 8,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -8,
			["used"] = false,
			["uuid"] = "84e8bf94-4447-eba7-b3d3-ac7f93817c26",
		},
	},
	[41] = {
	},
	[42] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 267.5,
			["timeRange"] = false,
			["timelineIndex"] = 42,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "f16d463d-6726-c9ad-9e74-dd4f4771fa76",
		},
	},
	[52] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 317.4,
			["timeRange"] = false,
			["timelineIndex"] = 52,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "8a078ba4-9def-36c1-bc44-30f436593446",
		},
	},
	[64] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 388.3,
			["timeRange"] = false,
			["timelineIndex"] = 64,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "b98d0d4b-aa58-ff33-acd2-2cda1702d1b4",
		},
	},
	[66] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Sprint()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Sprint",
			["throttleTime"] = 0,
			["time"] = 411.7,
			["timeRange"] = false,
			["timelineIndex"] = 66,
			["timerEndOffset"] = 0,
			["timerOffset"] = -2,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "5ab6f0a0-fd75-da20-9059-aa18dd2ab731",
		},
	},
	[71] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionLibrary.Logic.Toggles.CDOff(NilsReactionLibrary.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 430.6,
			["timeRange"] = true,
			["timelineIndex"] = 71,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "f5e8f7ce-d273-739c-a5dd-e2424cb0b630",
		},
	},
	[72] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Summoner.CD(true, true)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 432.7,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "85cd91ab-cdad-7977-958b-2f7d65348d61",
		},
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 3,
					["actionID"] = -1,
					["actionLua"] = "",
					["allowInterrupt"] = false,
					["castPosX"] = 0,
					["castPosY"] = 0,
					["castPosZ"] = 0,
					["conditions"] = {
						[1] = 1,
					},
					["endIfUsed"] = false,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["isAreaTarget"] = false,
					["luaNeedsWeaveWindow"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = true,
					["showPositionPreview"] = false,
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
					["buffIDList"] = {
					},
					["category"] = 4,
					["comparator"] = 1,
					["conditionLua"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable then return false end\
return true\
",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[1],
					["contentid"] = -1,
					["dequeueIfLuaFalse"] = false,
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
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "target boss",
			["throttleTime"] = 0,
			["time"] = 432.7,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 8,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -8,
			["used"] = false,
			["uuid"] = "aacb3d0e-5c86-42e8-a505-78b6df60f218",
		},
	},
	[73] = {
	},
	[74] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 434.6,
			["timeRange"] = false,
			["timelineIndex"] = 74,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "582bf412-c35e-4190-9400-ca5d95a9dc29",
		},
	},
	[76] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 450.4,
			["timeRange"] = false,
			["timelineIndex"] = 76,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "c897af80-9ded-ec26-9194-1fa9209e2b83",
		},
	},
	[81] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable and target.hp.percent < 2 then\
  if NilsReactionLibrary.Logic.Toggles.BurnBossOn(NilsReactionLibrary.params.isTimeline) == true then\
    self.used = true\
  end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Burn Boss",
			["throttleTime"] = 0,
			["time"] = 477,
			["timeRange"] = true,
			["timelineIndex"] = 81,
			["timerEndOffset"] = 200,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "deb2cbd9-78ac-2b98-96d8-38b94bda1356",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Knockback()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Knockback",
			["throttleTime"] = 0,
			["time"] = 477,
			["timeRange"] = false,
			["timelineIndex"] = 81,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "4eb66d00-22c0-38ad-88ee-40518dbc5471",
		},
	},
	[82] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 487.4,
			["timeRange"] = false,
			["timelineIndex"] = 82,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "cd912edc-dcd9-676d-a525-1fdbf5320ed9",
		},
	},
	[90] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 523.2,
			["timeRange"] = false,
			["timelineIndex"] = 90,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "57d9d478-763b-58df-9bba-377f02641d1d",
		},
	},
	[96] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 554.9,
			["timeRange"] = false,
			["timelineIndex"] = 96,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "0f0ed1ac-46ab-e24a-80e3-ae1eac311de8",
		},
	},
	[97] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 566,
			["timeRange"] = false,
			["timelineIndex"] = 97,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "26e18935-0dcc-49e4-bc9e-e2ca03d6f44b",
		},
	},
	[99] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 583.2,
			["timeRange"] = false,
			["timelineIndex"] = 99,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "eb5e7068-1b52-25a9-b298-c019e47debdd",
		},
	},
	[100] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 594.3,
			["timeRange"] = false,
			["timelineIndex"] = 100,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "4404ac10-d600-40db-8dbe-494be2408dcc",
		},
	},
	[101] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Addle()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Addle",
			["throttleTime"] = 0,
			["time"] = 605.4,
			["timeRange"] = false,
			["timelineIndex"] = 101,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "d4fb59cc-3375-e752-b7d9-d0d38f9787cb",
		},
	},
	[103] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Sprint()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Sprint",
			["throttleTime"] = 0,
			["time"] = 628.4,
			["timeRange"] = false,
			["timelineIndex"] = 103,
			["timerEndOffset"] = 0,
			["timerOffset"] = -2,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "685ca995-67ad-43b0-b995-8567a71c8865",
		},
	},
	["mapID"] = 906,
	["version"] = 4,
}
return obj1
