-- Persistent Data
local multiRefObjects = {
{},{},
} -- multiRefObjects
local obj1 = {
	[2] = {
	},
	[22] = {
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
					["buffID"] = 149,
					["buffIDList"] = multiRefObjects[1],
					["category"] = 2,
					["comparator"] = 1,
					["conditionLua"] = "",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[2],
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
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Retarget boss when stuned",
			["throttleTime"] = 0,
			["time"] = 116.7,
			["timeRange"] = true,
			["timelineIndex"] = 22,
			["timerEndOffset"] = 25,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "c45700ed-8219-bfff-8ecc-4652ebdde8b3",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if HasBuff(Player, 2240) then\
 NilsReactionCore.Alert.Send(\"Front Teleport\")\
 self.used = true\
elseif HasBuff(Player, 2241) then\
 NilsReactionCore.Alert.Send(\"Back Teleport\")\
 self.used = true\
elseif HasBuff(Player, 2242) then\
 NilsReactionCore.Alert.Send(\"Left Teleport\")\
 self.used = true\
elseif HasBuff(Player, 2243) then\
 NilsReactionCore.Alert.Send(\"Right Teleport\")\
 self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Teleport TTS",
			["throttleTime"] = 0,
			["time"] = 116.7,
			["timeRange"] = true,
			["timelineIndex"] = 22,
			["timerEndOffset"] = 20,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "04bafd95-1d1b-d00f-99f3-8c823f578d4a",
		},
	},
	[24] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 130.9,
			["timeRange"] = true,
			["timelineIndex"] = 24,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "b8976add-0536-92ab-8508-3e217f87af73",
		},
	},
	[27] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 139.9,
			["timeRange"] = true,
			["timelineIndex"] = 27,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "d8ed315e-78c3-ad62-8812-af1daac4edf9",
		},
	},
	[32] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion Off",
			["throttleTime"] = 0,
			["time"] = 163.3,
			["timeRange"] = false,
			["timelineIndex"] = 32,
			["timerEndOffset"] = 1,
			["timerOffset"] = -1,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "c362b160-e7cf-e237-afb1-cdf48467786e",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 163.3,
			["timeRange"] = true,
			["timelineIndex"] = 32,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "4601b4d7-8129-1ca9-bc69-0b0c72e3269d",
		},
	},
	[36] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 170.4,
			["timeRange"] = true,
			["timelineIndex"] = 36,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "aae3cf1f-81ca-c9d1-af93-79909fb4b3c5",
		},
	},
	[38] = {
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
					["buffID"] = 149,
					["buffIDList"] = multiRefObjects[1],
					["category"] = 2,
					["comparator"] = 1,
					["conditionLua"] = "",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[2],
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
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Retarget boss when stuned",
			["throttleTime"] = 0,
			["time"] = 177.5,
			["timeRange"] = true,
			["timelineIndex"] = 38,
			["timerEndOffset"] = 25,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "5fa773c8-da01-f94a-9c19-3ff739e9c62f",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if HasBuff(Player, 2240) then\
 NilsReactionCore.Alert.Send(\"Front Teleport\")\
 self.used = true\
elseif HasBuff(Player, 2241) then\
 NilsReactionCore.Alert.Send(\"Back Teleport\")\
 self.used = true\
elseif HasBuff(Player, 2242) then\
 NilsReactionCore.Alert.Send(\"Left Teleport\")\
 self.used = true\
elseif HasBuff(Player, 2243) then\
 NilsReactionCore.Alert.Send(\"Right Teleport\")\
 self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Teleport TTS",
			["throttleTime"] = 0,
			["time"] = 177.5,
			["timeRange"] = true,
			["timelineIndex"] = 38,
			["timerEndOffset"] = 20,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "ea31aae9-5778-ca39-bc6b-bade6cae2024",
		},
	},
	[40] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 183.7,
			["timeRange"] = true,
			["timelineIndex"] = 40,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "8e95018b-f223-32d7-a2b6-747ff60f31b4",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Hotbar.Toggles.DOT.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline, NilsReactionCore.params.on, 18000)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Toggle Dots",
			["throttleTime"] = 0,
			["time"] = 183.7,
			["timeRange"] = true,
			["timelineIndex"] = 40,
			["timerEndOffset"] = 2,
			["timerOffset"] = -10,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "25f0311a-1f26-ff52-bc0e-b8c441ccb0aa",
		},
	},
	[45] = {
	},
	[47] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Alert.Send(\"Use Meditate\")\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Meditate TTS",
			["throttleTime"] = 0,
			["time"] = 198.5,
			["timeRange"] = true,
			["timelineIndex"] = 47,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "2e20aec8-7f16-e48d-903f-b04695125e42",
		},
	},
	[51] = {
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
			["time"] = 205.6,
			["timeRange"] = false,
			["timelineIndex"] = 51,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "9783d3ef-71a4-ad68-8dd6-7212db2a97c2",
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
					["buffIDList"] = multiRefObjects[1],
					["category"] = 4,
					["comparator"] = 1,
					["conditionLua"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable then return false end\
return true\
",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[2],
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
			["time"] = 205.6,
			["timeRange"] = true,
			["timelineIndex"] = 51,
			["timerEndOffset"] = 3,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "1dd2b3bc-c032-e78b-ad11-15c7a75a02b7",
		},
	},
	[52] = {
	},
	[53] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 231.8,
			["timeRange"] = true,
			["timelineIndex"] = 53,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "90d579e9-79db-a334-b7f5-5e5c4743f97e",
		},
	},
	[57] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 254.5,
			["timeRange"] = true,
			["timelineIndex"] = 57,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "6fae9f05-674c-109f-99b5-be6079debc93",
		},
	},
	[58] = {
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
					["buffID"] = 149,
					["buffIDList"] = multiRefObjects[1],
					["category"] = 2,
					["comparator"] = 1,
					["conditionLua"] = "",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[2],
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
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Retarget boss when stuned",
			["throttleTime"] = 0,
			["time"] = 264.3,
			["timeRange"] = true,
			["timelineIndex"] = 58,
			["timerEndOffset"] = 25,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "28c5dbd8-2413-7aae-af41-35c9eda7ab4c",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if HasBuff(Player, 2240) then\
 NilsReactionCore.Alert.Send(\"Front Teleport\")\
 self.used = true\
elseif HasBuff(Player, 2241) then\
 NilsReactionCore.Alert.Send(\"Back Teleport\")\
 self.used = true\
elseif HasBuff(Player, 2242) then\
 NilsReactionCore.Alert.Send(\"Left Teleport\")\
 self.used = true\
elseif HasBuff(Player, 2243) then\
 NilsReactionCore.Alert.Send(\"Right Teleport\")\
 self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Teleport TTS",
			["throttleTime"] = 0,
			["time"] = 264.3,
			["timeRange"] = true,
			["timelineIndex"] = 58,
			["timerEndOffset"] = 20,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "791d73db-5af1-ee9c-b9a4-787282ede761",
		},
	},
	[60] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 278.2,
			["timeRange"] = true,
			["timelineIndex"] = 60,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "cd4210af-8972-384b-9740-1de93a6149a9",
		},
	},
	[62] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local target = Player:GetTarget()\
if target and table.valid(target) and target.attackable and target.contentid == 9287 then\
  NilsReactionCore.Hotbar.Toggles.DOT.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline, NilsReactionCore.params.on, 1200) \
end\
\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dot and Meditate",
			["throttleTime"] = 0,
			["time"] = 291.8,
			["timeRange"] = true,
			["timelineIndex"] = 62,
			["timerEndOffset"] = 20,
			["timerOffset"] = -20,
			["timerStartOffset"] = -20,
			["used"] = false,
			["uuid"] = "61146784-1e93-fa38-8157-78f6e9b404dc",
		},
	},
	[63] = {
	},
	[64] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.DOTOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "DOT Off",
			["throttleTime"] = 0,
			["time"] = 323.4,
			["timeRange"] = false,
			["timelineIndex"] = 64,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "2f660f37-2450-6a54-a237-4ba8ef7a7504",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Alert.Send(\"Use Meditation\")\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Meditate TTS",
			["throttleTime"] = 0,
			["time"] = 323.4,
			["timeRange"] = true,
			["timelineIndex"] = 64,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "665eea2f-6b89-de2e-ba35-0183ec1df289",
		},
	},
	[69] = {
	},
	[71] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 500,
			["timeRange"] = true,
			["timelineIndex"] = 71,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "dbb1d333-0788-47ed-a58c-6bc91d1126cd",
		},
		[2] = {
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
			["time"] = 500,
			["timeRange"] = false,
			["timelineIndex"] = 71,
			["timerEndOffset"] = 1,
			["timerOffset"] = -1,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "2b7de4e7-1a04-24ba-81c7-feabc54a045e",
		},
	},
	[74] = {
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
					["conditionLua"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable then return false end\
return true\
",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[2],
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
			["time"] = 510.3,
			["timeRange"] = true,
			["timelineIndex"] = 74,
			["timerEndOffset"] = 10,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "41a169f5-1710-572b-87c7-df18bed7383d",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion On",
			["throttleTime"] = 0,
			["time"] = 510.3,
			["timeRange"] = false,
			["timelineIndex"] = 74,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "d09b70d4-c24a-d6e9-acba-54caf032bfb9",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.DOTOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "DOT ON",
			["throttleTime"] = 0,
			["time"] = 510.3,
			["timeRange"] = false,
			["timelineIndex"] = 74,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "f53e9d53-d826-fd5e-b5c0-95e19fefc8b2",
		},
		[4] = {
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
			["time"] = 510.3,
			["timeRange"] = false,
			["timelineIndex"] = 74,
			["timerEndOffset"] = 1,
			["timerOffset"] = -1,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "3768e0c7-1b32-b375-9320-d1e902a95fd5",
		},
	},
	[87] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 565.5,
			["timeRange"] = true,
			["timelineIndex"] = 87,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "625b69bd-a4ed-e60a-80b5-dbd26c89b898",
		},
	},
	[97] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 617.3,
			["timeRange"] = true,
			["timelineIndex"] = 97,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "10f7b434-e156-09eb-8c71-619a5cbab151",
		},
	},
	[101] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 636.2,
			["timeRange"] = true,
			["timelineIndex"] = 101,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "ca223962-42b7-b55a-81cc-c2e876809382",
		},
	},
	[103] = {
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
			["time"] = 646.4,
			["timeRange"] = false,
			["timelineIndex"] = 103,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "b5b4e870-6c60-0cea-bcc7-d6aa196c6d9c",
		},
	},
	[104] = {
	},
	[106] = {
	},
	[107] = {
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
					["buffIDList"] = multiRefObjects[1],
					["category"] = 4,
					["comparator"] = 1,
					["conditionLua"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable then return false end\
return true\
",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[2],
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
			["time"] = 673.5,
			["timeRange"] = true,
			["timelineIndex"] = 107,
			["timerEndOffset"] = 10,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "9b317b8e-44c4-6784-a309-7de360301036",
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
			["time"] = 673.5,
			["timeRange"] = true,
			["timelineIndex"] = 107,
			["timerEndOffset"] = 200,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "7fd65d05-1841-11c9-b858-f547f1efc16b",
		},
		[3] = {
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
			["time"] = 673.5,
			["timeRange"] = false,
			["timelineIndex"] = 107,
			["timerEndOffset"] = 1,
			["timerOffset"] = -1,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "fe22ceee-5e57-d614-bae8-3a1baa5b759e",
		},
	},
	[108] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Alert.Send(\"Light 1, Dark 2\")\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark/Light TTS",
			["throttleTime"] = 0,
			["time"] = 677.6,
			["timeRange"] = true,
			["timelineIndex"] = 108,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "62f0a81a-9b58-6778-97fc-d8962488eda5",
		},
	},
	[109] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(20000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 4",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Draw Orbs Group 1",
			["throttleTime"] = 0,
			["time"] = 683.7,
			["timeRange"] = true,
			["timelineIndex"] = 109,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "368be5a9-44fe-3d18-910b-ed2056a99de8",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(20000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 4",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Draw Orbs Group 2",
			["throttleTime"] = 0,
			["time"] = 683.7,
			["timeRange"] = true,
			["timelineIndex"] = 109,
			["timerEndOffset"] = 12,
			["timerOffset"] = 0,
			["timerStartOffset"] = 11,
			["used"] = false,
			["uuid"] = "157ec3ad-14bd-b91f-a2a2-0439c8c3d80f",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(20000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 4",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Draw Orbs Group 3",
			["throttleTime"] = 0,
			["time"] = 683.7,
			["timeRange"] = true,
			["timelineIndex"] = 109,
			["timerEndOffset"] = 23,
			["timerOffset"] = 0,
			["timerStartOffset"] = 22,
			["used"] = false,
			["uuid"] = "8dee94c7-8d2f-8d94-b222-bb2a9c2f8baf",
		},
	},
	[110] = {
	},
	[111] = {
	},
	[112] = {
	},
	[113] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 736.6,
			["timeRange"] = true,
			["timelineIndex"] = 113,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "cb977139-9d88-4780-b82b-629c932186ea",
		},
	},
	[114] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 746.2,
			["timeRange"] = true,
			["timelineIndex"] = 114,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "a73085d8-345e-0502-a22d-683fbb0577d0",
		},
	},
	[115] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Alert.Send(\"Light 1, Dark 2\")\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark/Light TTS",
			["throttleTime"] = 0,
			["time"] = 755.7,
			["timeRange"] = true,
			["timelineIndex"] = 115,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "b354d5c0-2a26-578c-abee-fe5fd2e1518e",
		},
	},
	[116] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(20000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 4",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Draw Orbs Group 1",
			["throttleTime"] = 0,
			["time"] = 761.9,
			["timeRange"] = true,
			["timelineIndex"] = 116,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "b5c755fd-e18a-eae1-8f5b-bc3b5af549e5",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(20000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 4",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Draw Orbs Group 2",
			["throttleTime"] = 0,
			["time"] = 761.9,
			["timeRange"] = true,
			["timelineIndex"] = 116,
			["timerEndOffset"] = 12,
			["timerOffset"] = 0,
			["timerStartOffset"] = 11,
			["used"] = false,
			["uuid"] = "31f86fd2-ebd6-79ce-9d4b-4e7362ae7c00",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(20000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 4",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Draw Orbs Group 3",
			["throttleTime"] = 0,
			["time"] = 761.9,
			["timeRange"] = true,
			["timelineIndex"] = 116,
			["timerEndOffset"] = 23,
			["timerOffset"] = 0,
			["timerStartOffset"] = 22,
			["used"] = false,
			["uuid"] = "added143-ef94-c76b-9784-1152fe588def",
		},
	},
	[117] = {
	},
	[118] = {
	},
	[119] = {
	},
	[120] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 814.8,
			["timeRange"] = true,
			["timelineIndex"] = 120,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "017d9e3f-8dbb-c5e0-ac86-8acb88f74a4f",
		},
	},
	[121] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then\
self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 824.3,
			["timeRange"] = true,
			["timelineIndex"] = 121,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "49b04087-a338-106a-8032-63d2224109ba",
		},
	},
	["mapID"] = 908,
	["version"] = 6,
}
return obj1
