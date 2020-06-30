-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
	},
	[2] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Sprint() == true then\
  self.used = true\
end\
\
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
			["uuid"] = "bbdf327e-08e7-bdac-83f8-3931fd284da4",
		},
	},
	[4] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "42ea7867-26a0-7a33-8c55-73ca472f42b1",
		},
	},
	[6] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 4 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Get Orb TTS",
			["throttleTime"] = 0,
			["time"] = 52.2,
			["timeRange"] = true,
			["timelineIndex"] = 6,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "960b4c13-bebc-8957-a01b-899fcab24129",
		},
	},
	[7] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "39f77c98-e87f-b91c-86db-75331627cb94",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.Mantra() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "1735508e-f817-efb2-ac92-0a5c65cc6352",
		},
	},
	[9] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Feint() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 73.4,
			["timeRange"] = true,
			["timelineIndex"] = 9,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "8e3200e8-e952-c99b-8977-412cccfc547a",
		},
	},
	[14] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Knockback() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Knockback",
			["throttleTime"] = 0,
			["time"] = 96.2,
			["timeRange"] = true,
			["timelineIndex"] = 14,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "7e1f3368-a52d-91c6-bc08-ef1267a4708c",
		},
	},
	[15] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 4 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Get Orb TTS",
			["throttleTime"] = 0,
			["time"] = 110.6,
			["timeRange"] = true,
			["timelineIndex"] = 15,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "2924e87a-519c-8eea-af6f-9058bbc96f4b",
		},
	},
	[16] = {
	},
	[17] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 125.8,
			["timeRange"] = true,
			["timelineIndex"] = 17,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "23cf1ff0-39b3-e772-b603-36245261fda1",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.data.gauges.monk.lightningtime < 6000 then if NilsReactionCore.Hotbar.Monk.SixSidedStar() then self.used = true end end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Refresh Grease",
			["throttleTime"] = 0,
			["time"] = 125.8,
			["timeRange"] = true,
			["timelineIndex"] = 17,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "0375054f-b3c0-b4b9-b1ef-27c5d5d14d3e",
		},
	},
	[18] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "8041c745-a4c2-e309-8e7b-f7d1f1fec9b8",
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
					["atomicPriority"] = false,
					["castAtMouse"] = false,
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
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false",
					["conditionType"] = 1,
					["conditions"] = {
					},
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
			["throttleTime"] = 100,
			["time"] = 128.6,
			["timeRange"] = true,
			["timelineIndex"] = 19,
			["timerEndOffset"] = 3,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "725839de-5825-1db2-939c-50523cd701f5",
		},
	},
	[20] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "63c553d3-3682-f6c9-8781-4b081a7c0eb8",
		},
	},
	[21] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Feint() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 138.1,
			["timeRange"] = true,
			["timelineIndex"] = 21,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "51feb7e9-0f2b-d425-8754-bd2770fb60db",
		},
	},
	[22] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "997ed312-a9e6-4036-a6e7-70feb860697d",
		},
	},
	[23] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 4 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Get Orb TTS",
			["throttleTime"] = 0,
			["time"] = 155.5,
			["timeRange"] = true,
			["timelineIndex"] = 23,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "b69ab2ea-7e36-c5be-9939-6d72d8c967e8",
		},
	},
	[24] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.Mantra() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "2e68a098-d791-caab-a61f-feb5defd4966",
		},
	},
	[28] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Feint() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 198.5,
			["timeRange"] = true,
			["timelineIndex"] = 28,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "4e31287c-f176-fdc8-9b7d-b8488de23132",
		},
	},
	[31] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "c8f7bbae-de7a-f3b0-8609-46c42cdd13e0",
		},
	},
	[32] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 4 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Get Orb TTS",
			["throttleTime"] = 0,
			["time"] = 230.5,
			["timeRange"] = true,
			["timelineIndex"] = 32,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "a6ccff8d-245a-0705-9210-11802e347291",
		},
	},
	[33] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "67b6ed5d-8acd-8d91-8c47-7ba810ab0e60",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Sprint() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "c4a971e6-b4ef-8224-a03b-a5340ba0ad4d",
		},
	},
	[35] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 253,
			["timeRange"] = true,
			["timelineIndex"] = 35,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "31e1c263-c5d6-084b-a945-85387a964c33",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Sprint() == true then self.used = true end\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Sprint",
			["throttleTime"] = 0,
			["time"] = 253,
			["timeRange"] = true,
			["timelineIndex"] = 35,
			["timerEndOffset"] = 5,
			["timerOffset"] = -2,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "6c18ac3e-7e8d-a13f-833f-a195dc1c4e84",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.data.gauges.monk.lightningtime < 6000 then if NilsReactionCore.Hotbar.Monk.SixSidedStar() then self.used = true end end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Refresh Grease",
			["throttleTime"] = 0,
			["time"] = 253,
			["timeRange"] = true,
			["timelineIndex"] = 35,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "0e05af74-58f8-113f-b8e8-3caa18b499fc",
		},
	},
	[39] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "16ac1aee-99e2-9281-9717-eb40542f8c7b",
		},
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 3,
					["actionID"] = -1,
					["actionLua"] = "",
					["allowInterrupt"] = false,
					["atomicPriority"] = false,
					["castAtMouse"] = false,
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
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false",
					["conditionType"] = 1,
					["conditions"] = {
					},
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
			["throttleTime"] = 100,
			["time"] = 265.6,
			["timeRange"] = true,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 3,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "6c930742-aaff-dfde-9ce5-a1292f490125",
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
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "25a7d33d-7bf2-6534-8eb4-bb2815db50c2",
		},
	},
	[43] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 4 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Get Orb TTS",
			["throttleTime"] = 0,
			["time"] = 279.1,
			["timeRange"] = true,
			["timelineIndex"] = 43,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "1aa2f2f2-d0b8-56b9-8335-ed2cf06ba9e0",
		},
	},
	[45] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 297.8,
			["timeRange"] = true,
			["timelineIndex"] = 45,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "11be092c-290a-4568-9856-3e3d1fc63fa2",
		},
	},
	[46] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 301.6,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "f97b6fac-fc28-22ad-b31e-041237d51992",
		},
	},
	[47] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Feint() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 305.2,
			["timeRange"] = true,
			["timelineIndex"] = 47,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "fd422559-0d17-fce6-bbcf-9a9487a2aef7",
		},
	},
	[48] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 305.3,
			["timeRange"] = true,
			["timelineIndex"] = 48,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "8c256b2d-fd3b-63d5-81b5-77ace5852875",
		},
	},
	[49] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.Mantra() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "00e05dc0-0a83-9765-a944-5938c2c2823e",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 309,
			["timeRange"] = true,
			["timelineIndex"] = 49,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "2bc852d4-b4d9-15c0-a2ef-e14fecafd654",
		},
	},
	[50] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 312.7,
			["timeRange"] = true,
			["timelineIndex"] = 50,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "7cb36422-1e4f-1020-9fb8-285c2eb49897",
		},
	},
	[51] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 316.4,
			["timeRange"] = true,
			["timelineIndex"] = 51,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "55df5a88-462f-25d1-8ee4-2942f4995f81",
		},
	},
	[52] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "a9c4db78-96e3-fd3a-8ae6-c6d398f834c8",
		},
	},
	[53] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 320.1,
			["timeRange"] = true,
			["timelineIndex"] = 53,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "2098e856-8ea4-c391-bacc-5f81d6dc1579",
		},
	},
	[54] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 323.8,
			["timeRange"] = true,
			["timelineIndex"] = 54,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "48157d18-b99c-313c-92fe-0d95b17f6ecf",
		},
	},
	[55] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 327.5,
			["timeRange"] = true,
			["timelineIndex"] = 55,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "8dce444b-bb3f-71a9-84d2-63e993fcbac5",
		},
	},
	[57] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 4 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Get Orb TTS",
			["throttleTime"] = 0,
			["time"] = 337,
			["timeRange"] = true,
			["timelineIndex"] = 57,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "ce275753-f95e-90f0-9c15-34d24376751f",
		},
	},
	[63] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Feint() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 380.1,
			["timeRange"] = true,
			["timelineIndex"] = 63,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "bc672d1b-cdd4-dddc-a426-5b385ebeb676",
		},
	},
	[64] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "7ff622e6-49c5-d6c5-94ac-546dcceb1b2c",
		},
	},
	[65] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 4 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Get Orb TTS",
			["throttleTime"] = 0,
			["time"] = 395.6,
			["timeRange"] = true,
			["timelineIndex"] = 65,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "bdba3fa0-89b2-eca0-b148-ccb2691b23f2",
		},
	},
	[66] = {
	},
	[68] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Sprint() == true then self.used = true end\
\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Sprint",
			["throttleTime"] = 0,
			["time"] = 420.1,
			["timeRange"] = true,
			["timelineIndex"] = 68,
			["timerEndOffset"] = 3,
			["timerOffset"] = -2,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "1e2f9e30-89fd-7a40-b7eb-c831c895ec60",
		},
	},
	[70] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 429.4,
			["timeRange"] = true,
			["timelineIndex"] = 70,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "4f543b66-3ff1-5c22-a06e-912f13a4258c",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.data.gauges.monk.lightningtime < 6000 then if NilsReactionCore.Hotbar.Monk.SixSidedStar() then self.used = true end end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Refresh Grease",
			["throttleTime"] = 0,
			["time"] = 429.4,
			["timeRange"] = true,
			["timelineIndex"] = 70,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "ae057ba6-b96b-2347-a72b-9ae4d4671812",
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
					["atomicPriority"] = false,
					["castAtMouse"] = false,
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
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false",
					["conditionType"] = 1,
					["conditions"] = {
					},
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
			["throttleTime"] = 100,
			["time"] = 432.7,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 3,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "3e965edb-d2af-1415-bd1b-5b2fab41e1f6",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline)\
self.used = true",
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
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "0296d968-73f2-bf3c-bffc-b0e536f00eaf",
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
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "0d20ebeb-374d-8566-b9c5-5f394e632bf8",
		},
	},
	[75] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 4 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Get Orb TTS",
			["throttleTime"] = 0,
			["time"] = 440.2,
			["timeRange"] = true,
			["timelineIndex"] = 75,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "90fd99e7-3a82-af2f-9ce0-7a5816de49d1",
		},
	},
	[76] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "45075f31-0602-d869-8ae6-ea0e5d76c06a",
		},
	},
	[81] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Knockback() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Knockback",
			["throttleTime"] = 0,
			["time"] = 477,
			["timeRange"] = true,
			["timelineIndex"] = 81,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "62f17a71-19e5-7567-8521-261edc2ad1d6",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable and target.hp.percent < 2 then\
  if NilsReactionCore.Logic.Toggles.BurnBossOn(NilsReactionCore.params.isTimeline) == true then\
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
			["uuid"] = "4ceeea99-57d0-3151-b9c6-5a91c989d431",
		},
	},
	[82] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Riddle of Earth",
			["throttleTime"] = 0,
			["time"] = 487.4,
			["timeRange"] = true,
			["timelineIndex"] = 82,
			["timerEndOffset"] = 0,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "8c91f366-00eb-2c43-9f5f-a97f494697a3",
		},
	},
	[83] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 502.6,
			["timeRange"] = true,
			["timelineIndex"] = 83,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "8d7db06c-83a6-5a91-b53a-f8229c1757e0",
		},
	},
	[84] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 506.4,
			["timeRange"] = true,
			["timelineIndex"] = 84,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "f0b66f6a-cc5a-6ed3-8223-6a28fd83520b",
		},
	},
	[85] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Feint() == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Feint",
			["throttleTime"] = 0,
			["time"] = 510,
			["timeRange"] = true,
			["timelineIndex"] = 85,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "964b2305-d3f0-04dc-b585-ea5283a154f9",
		},
	},
	[86] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 510.1,
			["timeRange"] = true,
			["timelineIndex"] = 86,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "e3848c0d-865f-91a0-9355-84c9729c2bef",
		},
	},
	[87] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 513.8,
			["timeRange"] = true,
			["timelineIndex"] = 87,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "9db6abd7-ba63-be22-91bb-abc1861a5214",
		},
	},
	[88] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 517.5,
			["timeRange"] = true,
			["timelineIndex"] = 88,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "0e3646cd-b608-7a24-ad41-6174087203ec",
		},
	},
	[89] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 521.2,
			["timeRange"] = true,
			["timelineIndex"] = 89,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "4893ff3f-6ce7-1635-b947-28dde8ca638f",
		},
	},
	[90] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "4ef48fed-e657-d2f5-a5c7-c29bd98c7d1a",
		},
	},
	[91] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 524.8,
			["timeRange"] = true,
			["timelineIndex"] = 91,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "7ec102ab-2759-7edb-a559-21c44ac4610d",
		},
	},
	[92] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 528.5,
			["timeRange"] = true,
			["timelineIndex"] = 92,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "bcb4c419-18d2-8bf3-b46e-ed8aacaec050",
		},
	},
	[93] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local drawnOrbs = {}\
local members = NilsReactionCore.Buffs.MembersWithBuff(electrify)\
if table.size(members) > 0 then\
  for id, ent in pairs(members) do\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.end = table.size(drawnOrbs) >= 2",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Electrify",
			["throttleTime"] = 0,
			["time"] = 532.2,
			["timeRange"] = true,
			["timelineIndex"] = 93,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "d96b9ffc-5e47-7a80-ad13-5d3c12ef1708",
		},
	},
	[95] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 4 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Get Orb TTS",
			["throttleTime"] = 0,
			["time"] = 545.8,
			["timeRange"] = true,
			["timelineIndex"] = 95,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "0f002e03-e7fa-32b6-a451-a1be6fac11dd",
		},
	},
	[96] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "dc073213-8d20-5c96-91ab-eb49bb4c30ae",
		},
	},
	[97] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "94c3a393-6a42-45fc-974f-9073a28b57a0",
		},
	},
	[98] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 4 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Get Orb TTS",
			["throttleTime"] = 0,
			["time"] = 574.1,
			["timeRange"] = true,
			["timelineIndex"] = 98,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "3c85a26f-22a4-fc9c-bf9b-13ead85137d2",
		},
	},
	[99] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "96a4d679-83ff-b44f-bfdd-bec3c58f26d0",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.Mantra() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "80cfcff8-d498-9692-9350-1d12f6da3ace",
		},
	},
	[100] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "bd0104c6-0523-d3b8-869c-3fb86e9b3e9b",
		},
	},
	[101] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Monk.RiddleOfEarth() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
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
			["uuid"] = "02d55ecc-7ac4-7ce8-b930-9d7028ec386c",
		},
	},
	[102] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 4 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Get Orb TTS",
			["throttleTime"] = 0,
			["time"] = 612.3,
			["timeRange"] = true,
			["timelineIndex"] = 102,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "c843465f-9c70-9c0a-945e-70cb80cc2a52",
		},
	},
	["mapID"] = 906,
	["version"] = 4,
}
return obj1
