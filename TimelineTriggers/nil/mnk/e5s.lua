-- Persistent Data
local multiRefObjects = {
{},{},
} -- multiRefObjects
local obj1 = {
	[1] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- LIBRARY REQUIRED\
-- Install https://github.com/nil2share/tensorreactions/tree/master/Nil%20Reaction%20Library into C:\\MINIONAPP\\Bots\\FFXIVMinion64\\LuaMods\\Nil Reaction Library\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "ReadME",
			["throttleTime"] = 0,
			["time"] = 12,
			["timeRange"] = false,
			["timelineIndex"] = 1,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "f029f4a3-28bc-0e7e-9c13-cd581179cc6b",
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
			["time"] = 12,
			["timeRange"] = false,
			["timelineIndex"] = 1,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "f124acb7-07b5-7803-9d4a-13b7116fb22f",
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
			["uuid"] = "67ac659b-c7f3-f5e5-b32b-e10b3cf95a03",
		},
	},
	[4] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 35.6,
			["timeRange"] = false,
			["timelineIndex"] = 4,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "5c542abd-b0d9-0bb0-b598-5702ed0032e3",
		},
	},
	[7] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 63.3,
			["timeRange"] = false,
			["timelineIndex"] = 7,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "2818dee2-61b8-627e-8c58-8f249d6407a9",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Mantra()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Mantra",
			["throttleTime"] = 0,
			["time"] = 63.3,
			["timeRange"] = false,
			["timelineIndex"] = 7,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "7201fe68-3fd4-9a5d-a57b-a81e43b915da",
		},
	},
	[9] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Feint()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 73.4,
			["timeRange"] = false,
			["timelineIndex"] = 9,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "4a3f1725-4e39-0ac3-925f-e26524dfbcfe",
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
			["uuid"] = "039e5567-2064-bec0-a2e7-c85faaf52a90",
		},
	},
	[16] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Monk.CD(true, true)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 117.7,
			["timeRange"] = false,
			["timelineIndex"] = 16,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "3bd56c92-f672-2f74-b3af-9fde6d6a1cac",
		},
	},
	[18] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionLibrary.Logic.Toggles.CDOn(NilsReactionLibrary.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 127.4,
			["timeRange"] = false,
			["timelineIndex"] = 18,
			["timerEndOffset"] = 1,
			["timerOffset"] = -1,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "61b8634d-47dd-7c59-ad5a-7536bd8a54b0",
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
			["throttleTime"] = 100,
			["time"] = 128.6,
			["timeRange"] = true,
			["timelineIndex"] = 19,
			["timerEndOffset"] = 8,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -8,
			["used"] = false,
			["uuid"] = "1aa195f5-45b9-bf1b-8f62-04b34e9634ac",
		},
	},
	[20] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionLibrary.Logic.Toggles.CDOn(NilsReactionLibrary.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 128.9,
			["timeRange"] = false,
			["timelineIndex"] = 20,
			["timerEndOffset"] = 1,
			["timerOffset"] = -0.5,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "44520cdf-7c6d-9c2c-af60-e27de11f0887",
		},
	},
	[21] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Feint()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 138.1,
			["timeRange"] = false,
			["timelineIndex"] = 21,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "abd21840-50ec-3396-8eee-80e33893f848",
		},
	},
	[22] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 148.3,
			["timeRange"] = false,
			["timelineIndex"] = 22,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "c6fedee5-5f17-3ba3-b7bb-96ff0c25a6c7",
		},
	},
	[24] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Mantra()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Mantra",
			["throttleTime"] = 0,
			["time"] = 163.6,
			["timeRange"] = false,
			["timelineIndex"] = 24,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "4c064fdf-1198-9855-9c46-f79be64a38f3",
		},
	},
	[28] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Feint()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 198.5,
			["timeRange"] = false,
			["timelineIndex"] = 28,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "ff64b4cd-e63c-02f8-908e-4a32bd251b00",
		},
	},
	[31] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 221.2,
			["timeRange"] = false,
			["timelineIndex"] = 31,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "c605fba6-d600-20ce-a9f8-a942a7a68376",
		},
	},
	[33] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 244.6,
			["timeRange"] = false,
			["timelineIndex"] = 33,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "7340153a-5468-8549-8caf-038652d9f329",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Sprint()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Sprint",
			["throttleTime"] = 0,
			["time"] = 244.6,
			["timeRange"] = true,
			["timelineIndex"] = 33,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "4b6122ed-ffc3-07a1-b440-65cae9ef98e6",
		},
	},
	[35] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Monk.CD(true, true)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 253,
			["timeRange"] = false,
			["timelineIndex"] = 35,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "d90af0cb-0d59-4955-a576-1fa116c4fd80",
		},
	},
	[39] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Monk.CD(false, true)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 265.6,
			["timeRange"] = false,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "a2349121-67b0-c9df-9538-eac2b4584478",
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
					["buffIDList"] = multiRefObjects[2],
					["category"] = 4,
					["comparator"] = 1,
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[1],
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
			["throttleTime"] = 100,
			["time"] = 265.6,
			["timeRange"] = true,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 8,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -8,
			["used"] = false,
			["uuid"] = "b3ca42ff-272b-da72-8022-ddc06cfe1239",
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
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 267.5,
			["timeRange"] = false,
			["timelineIndex"] = 42,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "bda5fbe9-98af-8fb6-933b-357a9c9a33fc",
		},
	},
	[47] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Feint()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 305.2,
			["timeRange"] = false,
			["timelineIndex"] = 47,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "1fe29ade-4ad5-bdf0-88e3-23e16940241d",
		},
	},
	[49] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Mantra()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Mantra",
			["throttleTime"] = 0,
			["time"] = 309,
			["timeRange"] = false,
			["timelineIndex"] = 49,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "9c27c373-0f9f-7309-a951-c5033b4924e9",
		},
	},
	[52] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 317.4,
			["timeRange"] = false,
			["timelineIndex"] = 52,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "0338c7f1-79d2-6f31-ac67-9944a7cdb509",
		},
	},
	[63] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Feint()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 380.1,
			["timeRange"] = false,
			["timelineIndex"] = 63,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "2eb99234-efeb-794d-9dc6-9f6c354b6b10",
		},
	},
	[64] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 388.3,
			["timeRange"] = false,
			["timelineIndex"] = 64,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "ed16c441-ba94-dc49-920c-8f8775ed2b38",
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
			["uuid"] = "46a04c93-9960-9ac6-a46b-a076a9ad2abd",
		},
	},
	[70] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Monk.CD(true, true)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 429.4,
			["timeRange"] = true,
			["timelineIndex"] = 70,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "b64a8195-c0c2-6126-b994-571f2bce7997",
		},
	},
	[72] = {
		[1] = {
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
					["buffIDList"] = multiRefObjects[2],
					["category"] = 4,
					["comparator"] = 1,
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[1],
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
			["throttleTime"] = 100,
			["time"] = 432.7,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 8,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -8,
			["used"] = false,
			["uuid"] = "18123c6b-38d1-c221-b75f-795c83f2b203",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Monk.CD(false, true)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 432.7,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "6af34e83-0581-1a33-a510-66c409bda647",
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
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 434.6,
			["timeRange"] = false,
			["timelineIndex"] = 74,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "9ce4ba21-2ca3-0458-9e48-9f8925200d16",
		},
	},
	[76] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 450.4,
			["timeRange"] = false,
			["timelineIndex"] = 76,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "a9f3fc5b-8056-6011-8700-2c02d58dc590",
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
			["uuid"] = "c6b04c01-1086-6db8-a3a5-cfad7f287467",
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
			["uuid"] = "357978eb-56de-4008-882a-95dd16ed809c",
		},
	},
	[82] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 487.4,
			["timeRange"] = false,
			["timelineIndex"] = 82,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "0653f231-efc3-8858-bdeb-cdd68414853e",
		},
	},
	[85] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Feint()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 510,
			["timeRange"] = false,
			["timelineIndex"] = 85,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "a8825c6b-063b-149b-81c8-049c61a7a4b4",
		},
	},
	[90] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 523.2,
			["timeRange"] = false,
			["timelineIndex"] = 90,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "080cad50-6b57-bb76-9693-6f63eb4212dd",
		},
	},
	[96] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 554.9,
			["timeRange"] = false,
			["timelineIndex"] = 96,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "24aa4140-dea1-460a-99d9-764ee1772b74",
		},
	},
	[97] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 566,
			["timeRange"] = false,
			["timelineIndex"] = 97,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "c0dc37a7-72eb-50e3-8cfb-30419cb76e65",
		},
	},
	[99] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 583.2,
			["timeRange"] = false,
			["timelineIndex"] = 99,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "3ef6936a-55ea-a691-ac9a-98a30af4c679",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Mantra()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Mantra",
			["throttleTime"] = 0,
			["time"] = 583.2,
			["timeRange"] = false,
			["timelineIndex"] = 99,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "816515fd-3c20-1a3b-b437-ac679708a80c",
		},
	},
	[100] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 594.3,
			["timeRange"] = false,
			["timelineIndex"] = 100,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "a9aa7f35-828b-5507-9822-a908e8f1d83c",
		},
	},
	[101] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
self.used = true\
return action, targetID, ignoreWeaveRules, allowInterrupt\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 605.4,
			["timeRange"] = false,
			["timelineIndex"] = 101,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "d9e8e5a0-0279-8626-903b-91352741463c",
		},
	},
	["mapID"] = 906,
	["version"] = 4,
}
return obj1
