-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- allows for settings to be changed in the core\
-- example because this is a timeline reaction we want to turn off onslaugh movement detection\
\
NilsReactionCore.coreparams.enableMoveDetection = false\
\
\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Nil-Core-Settings",
			["throttleTime"] = 0,
			["time"] = 12,
			["timeRange"] = true,
			["timelineIndex"] = 1,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -12,
			["used"] = false,
			["uuid"] = "b0d1b356-c17a-f5da-ad99-a338fc032cfd",
		},
	},
	[2] = {
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
			["time"] = 22.2,
			["timeRange"] = true,
			["timelineIndex"] = 2,
			["timerEndOffset"] = 0,
			["timerOffset"] = -2,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "f4ec1238-4d1b-075d-bf74-98bf7b8c184a",
		},
	},
	[3] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOff(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer OFF",
			["throttleTime"] = 0,
			["time"] = 27.1,
			["timeRange"] = true,
			["timelineIndex"] = 3,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "a8a755f9-88e2-63d6-a6d8-7993808756df",
		},
	},
	[4] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOn(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer On",
			["throttleTime"] = 0,
			["time"] = 35.6,
			["timeRange"] = true,
			["timelineIndex"] = 4,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2.2000000476837,
			["used"] = false,
			["uuid"] = "d029b117-9e75-4487-afd7-777d1309a961",
		},
	},
	[6] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 10 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
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
			["uuid"] = "9f62f1a6-4e8e-d157-8006-12a4abaddc17",
		},
	},
	[7] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.Heavy(NilsReactionCore.Helpers.Tanks.Cooldown.DoNotUseRampartAsBackup) then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Big Cooldown if MT",
			["throttleTime"] = 0,
			["time"] = 63.3,
			["timeRange"] = true,
			["timelineIndex"] = 7,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1.5,
			["used"] = false,
			["uuid"] = "f09fc21b-bb30-3248-b11d-e28825e0296b",
		},
	},
	[8] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if MT",
			["throttleTime"] = 0,
			["time"] = 69.5,
			["timeRange"] = true,
			["timelineIndex"] = 8,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2.5,
			["used"] = false,
			["uuid"] = "a597bb5d-e6ab-85b1-967a-b4f92bc04ed6",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Actions.RawIntuition.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Raw Intuition if MT",
			["throttleTime"] = 0,
			["time"] = 69.5,
			["timeRange"] = true,
			["timelineIndex"] = 8,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "347ddff4-c509-497c-b9c1-a1562db385a1",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() == false then\
  if NilsReactionCore.Hotbar.Actions.NascentFlash.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Flash if OT",
			["throttleTime"] = 0,
			["time"] = 69.5,
			["timeRange"] = true,
			["timelineIndex"] = 8,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "791af49a-8912-4250-960a-457c4f1974a0",
		},
	},
	[11] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() == false then\
  if NilsReactionCore.Hotbar.Rampart() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Rampart if OT",
			["throttleTime"] = 0,
			["time"] = 84.8,
			["timeRange"] = true,
			["timelineIndex"] = 11,
			["timerEndOffset"] = 2.5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1.2000000476837,
			["used"] = false,
			["uuid"] = "38277361-5ec6-7d88-a2e2-642597f03d02",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOff(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer OFF",
			["throttleTime"] = 0,
			["time"] = 84.8,
			["timeRange"] = true,
			["timelineIndex"] = 11,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "ca582792-b9e6-48aa-a8d8-af0b7bca01a0",
		},
	},
	[13] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOn(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer On",
			["throttleTime"] = 0,
			["time"] = 89.9,
			["timeRange"] = true,
			["timelineIndex"] = 13,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1.2000000476837,
			["used"] = false,
			["uuid"] = "94ff571b-0c47-bae7-84ef-219d4ba0db34",
		},
	},
	[14] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Knockback() == true then self.used = true end",
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
			["timerStartOffset"] = -5.5,
			["used"] = false,
			["uuid"] = "b85849d2-f402-4879-a515-f12f87b4ff69",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() == false then\
  if NilsReactionCore.Hotbar.Actions.NascentFlash.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Flash if OT",
			["throttleTime"] = 0,
			["time"] = 96.2,
			["timeRange"] = true,
			["timelineIndex"] = 14,
			["timerEndOffset"] = 2.5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1.2000000476837,
			["used"] = false,
			["uuid"] = "00710124-f402-8b0d-9720-f2378946e439",
		},
	},
	[15] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 10 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
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
			["uuid"] = "c89debbb-c7d4-2242-9d8b-1a43e39bc910",
		},
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
			["timerEndOffset"] = 2,
			["timerOffset"] = 1,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "a3189f97-392a-7dbc-8e6b-1afd2592af04",
		},
		[2] = {
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
			["time"] = 125.8,
			["timeRange"] = true,
			["timelineIndex"] = 17,
			["timerEndOffset"] = 1,
			["timerOffset"] = -2,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "ad21eaf7-c3b4-530b-acd3-e4ff6854446e",
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
					["conditionLua"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable then return false end\
return true\
",
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
			["throttleTime"] = 0,
			["time"] = 128.6,
			["timeRange"] = true,
			["timelineIndex"] = 19,
			["timerEndOffset"] = 3,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "e761bfd1-689f-0269-88cd-6a59bd5457dd",
		},
	},
	[20] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if MT",
			["throttleTime"] = 0,
			["time"] = 128.9,
			["timeRange"] = true,
			["timelineIndex"] = 20,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "eed544ee-98d6-30b7-9991-3f56ecd5fa22",
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
			["name"] = "CD ON",
			["throttleTime"] = 0,
			["time"] = 128.9,
			["timeRange"] = true,
			["timelineIndex"] = 20,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "c29dd978-0788-840c-a942-21dc43444af5",
		},
	},
	[21] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Actions.RawIntuition.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Raw Intuition if MT",
			["throttleTime"] = 0,
			["time"] = 138.1,
			["timeRange"] = true,
			["timelineIndex"] = 21,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "c8379346-1ed3-4b30-ac8b-eb9f54e34cd4",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() == false then\
  if NilsReactionCore.Hotbar.Actions.NascentFlash.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Flash if OT",
			["throttleTime"] = 0,
			["time"] = 138.1,
			["timeRange"] = true,
			["timelineIndex"] = 21,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "952a67a8-87bb-e0d3-9660-56944e9c9299",
		},
	},
	[22] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Actions.Shake.Exeute() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shake",
			["throttleTime"] = 0,
			["time"] = 148.3,
			["timeRange"] = true,
			["timelineIndex"] = 22,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "b8a04754-9754-e81a-82e2-6ce671ffbdc1",
		},
	},
	[23] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 10 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
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
			["uuid"] = "451a3c18-926a-33c7-89a1-e8a0f7e58f9c",
		},
	},
	[27] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.Heavy(NilsReactionCore.Helpers.Tanks.Cooldown.DoNotUseRampartAsBackup) then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Big cooldown if MT",
			["throttleTime"] = 0,
			["time"] = 189.1,
			["timeRange"] = true,
			["timelineIndex"] = 27,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "5e380882-efcc-1be6-aadc-cf6a19bd3ebd",
		},
	},
	[28] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Actions.RawIntuition.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Raw Intuition if MT",
			["throttleTime"] = 0,
			["time"] = 198.5,
			["timeRange"] = true,
			["timelineIndex"] = 28,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3.5,
			["used"] = false,
			["uuid"] = "e20ba9f6-aa10-6be7-9b26-17b916165976",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if MT",
			["throttleTime"] = 0,
			["time"] = 198.5,
			["timeRange"] = true,
			["timelineIndex"] = 28,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2.5,
			["used"] = false,
			["uuid"] = "d9e8a800-a6ac-0efc-af01-ac2a29096537",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() == false then\
  if NilsReactionCore.Hotbar.Actions.NascentFlash.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Flash if OT",
			["throttleTime"] = 0,
			["time"] = 198.5,
			["timeRange"] = true,
			["timelineIndex"] = 28,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3.5,
			["used"] = false,
			["uuid"] = "44358889-1107-0ac5-906e-bf249bd308a5",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() == false then\
  if NilsReactionCore.Hotbar.Rampart() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Rampart if OT",
			["throttleTime"] = 0,
			["time"] = 198.5,
			["timeRange"] = true,
			["timelineIndex"] = 28,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "57e06f06-d0c3-b415-b4ac-1d8b775d0de3",
		},
	},
	[32] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 10 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
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
			["uuid"] = "eabb3ad9-1fb5-5072-8d0b-fe547d6dc8d3",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "aad7280e-27ee-c32f-88c0-1333e9f8e2d2",
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
			["timerEndOffset"] = 3,
			["timerOffset"] = -2,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "68bbdc4d-bccf-15a2-ac46-3d3fd7a83663",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOff(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer OFF",
			["throttleTime"] = 0,
			["time"] = 253,
			["timeRange"] = true,
			["timelineIndex"] = 35,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "d0b3bf7a-8d47-4410-a20d-a0f3b777bba8",
		},
	},
	[37] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- 2264 buff id for brace\
\
if HasBuff(Player.id, 2264) then\
  -- turn off arc/mcr for 8 seconds\
  NilsReactionCore.Random.Toggles.Assist.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline, NilsReactionCore.params.on, 8000)\
  \
  -- Invuln or CD's\
  if NilsReactionCore.Hotbar.Actions.Holmgang.CoolDown() <= 1 then\
    if NilsReactionCore.Helpers.Target.FacingNorth() or NilsReactionCore.Helpers.Target.FacingSouth() then\
      NilsReactionCore.Hotbar.Actions.Holmgang.Execute()\
      self.used = true\
    end\
  else\
  -- no holmgange, use cooldowns and pray\
    if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
  end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Brace yourself",
			["throttleTime"] = 0,
			["time"] = 262.3,
			["timeRange"] = true,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "2ae35504-fc95-7171-8932-abe5d5b55192",
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
			["name"] = "CD ON",
			["throttleTime"] = 0,
			["time"] = 265.6,
			["timeRange"] = false,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "39698e56-53cc-4501-87e2-70cf5f1757c6",
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
					["conditionLua"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable then return false end\
return true\
",
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
			["throttleTime"] = 0,
			["time"] = 265.6,
			["timeRange"] = true,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 3,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "13de953b-4c5d-f1bb-b1b2-14021b72e7b0",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOn(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer On",
			["throttleTime"] = 0,
			["time"] = 265.6,
			["timeRange"] = true,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1.2000000476837,
			["used"] = false,
			["uuid"] = "25484c5d-4471-ed55-8c60-fb727db47697",
		},
	},
	[43] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 10 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
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
			["uuid"] = "bf182647-c331-ee81-9906-3f507908c706",
		},
	},
	[44] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOff(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer OFF",
			["throttleTime"] = 0,
			["time"] = 287.9,
			["timeRange"] = true,
			["timelineIndex"] = 44,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "460c908e-129b-ca15-86c9-ba3bccfab7e5",
		},
	},
	[45] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Rampart() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Rampart",
			["throttleTime"] = 0,
			["time"] = 297.8,
			["timeRange"] = true,
			["timelineIndex"] = 45,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "76e4198a-4c00-8829-a486-58e9f604ee75",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "8461d1f1-9ded-09c9-9327-56ef8c37a40b",
		},
	},
	[46] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if MT",
			["throttleTime"] = 0,
			["time"] = 301.6,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1.6000000238419,
			["used"] = false,
			["uuid"] = "6ad5fcf1-3aae-385e-9ef3-8accc5304df4",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "0af3089c-1f64-af2d-be82-1234b8cc6bc8",
		},
	},
	[47] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- if healer shield is missing, then pop a cooldown to be safe\
\
if NilsReactionCore.Helpers.Healer.HasShield(Player) or NilsReactionCore.Helpers.Tanks.HasCooldown() then\
  self.used = true\
else\
  if NilsReactionCore.Helpers.Tanks.RampartOrHeavy() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown check if MT",
			["throttleTime"] = 0,
			["time"] = 305.2,
			["timeRange"] = true,
			["timelineIndex"] = 47,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "f6ec48ce-64ef-134f-a675-564e891d54b5",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Actions.RawIntuition.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Raw Intuition if MT",
			["throttleTime"] = 0,
			["time"] = 305.2,
			["timeRange"] = true,
			["timelineIndex"] = 47,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "128de988-a4a3-c176-8f46-a30fb08925f2",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() == false then\
  if NilsReactionCore.Hotbar.Actions.NascentFlash.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Flash if OT",
			["throttleTime"] = 0,
			["time"] = 305.2,
			["timeRange"] = true,
			["timelineIndex"] = 47,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "e213cb6b-1f8f-ff73-8a22-acdead07e4af",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "7bf45e7e-9f1f-f275-abfe-98834f40ab45",
		},
	},
	[49] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Actions.Shake.Exeute() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shake",
			["throttleTime"] = 0,
			["time"] = 309,
			["timeRange"] = true,
			["timelineIndex"] = 49,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "9b838a3c-205e-c2f9-a153-204a7930e9a8",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "1ff22a2e-1b9f-ab3a-b018-ed2b73eaad0b",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "0a62c8ad-94ad-047f-83aa-35eb66c8b08d",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "1c9f0c8f-b746-cabb-a3ad-909ca773ef59",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "ae75c90e-5ce1-266e-b68d-1ffae8a959e1",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "c612c70a-6e2b-e75e-b02c-90f7f5e12f61",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "f60f7693-5e97-6e74-8102-eb8ea40837c2",
		},
	},
	[56] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() == false then\
  if NilsReactionCore.Hotbar.Rampart() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Rampart if OT",
			["throttleTime"] = 0,
			["time"] = 329.6,
			["timeRange"] = true,
			["timelineIndex"] = 56,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "072a797b-1d82-bbec-b444-70e62d44f337",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOn(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer On",
			["throttleTime"] = 0,
			["time"] = 329.6,
			["timeRange"] = true,
			["timelineIndex"] = 56,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "a86639dd-1ba1-f138-8801-327a0649ae60",
		},
	},
	[57] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 10 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
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
			["uuid"] = "d36a5110-2b9d-bffe-9b11-c6badbf7d730",
		},
	},
	[59] = {
	},
	[62] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.Heavy(NilsReactionCore.Helpers.Tanks.Cooldown.DoNotUseRampartAsBackup) then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Big cooldown if MT",
			["throttleTime"] = 0,
			["time"] = 368,
			["timeRange"] = true,
			["timelineIndex"] = 62,
			["timerEndOffset"] = 11,
			["timerOffset"] = 0,
			["timerStartOffset"] = 8,
			["used"] = false,
			["uuid"] = "40e4bf36-8962-7a19-9274-bb6293b715ea",
		},
	},
	[63] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Actions.RawIntuition.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Raw Intuition if MT",
			["throttleTime"] = 0,
			["time"] = 380.1,
			["timeRange"] = true,
			["timelineIndex"] = 63,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2.0999999046326,
			["used"] = false,
			["uuid"] = "c9fc9da6-c5f4-9d32-b94f-5fda30928d81",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() == false then\
  if NilsReactionCore.Hotbar.Actions.NascentFlash.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Flash if OT",
			["throttleTime"] = 0,
			["time"] = 380.1,
			["timeRange"] = true,
			["timelineIndex"] = 63,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2.0999999046326,
			["used"] = false,
			["uuid"] = "8916a841-3b74-c47e-8d88-b8e76278e52a",
		},
	},
	[65] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 10 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
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
			["uuid"] = "e1631fdc-d03d-e777-b37a-8c97c66385c6",
		},
	},
	[66] = {
		[1] = {
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
			["time"] = 411.7,
			["timeRange"] = true,
			["timelineIndex"] = 66,
			["timerEndOffset"] = 230,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "a3b5291e-0bf5-3187-a299-dec7377ccdb9",
		},
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
			["timerEndOffset"] = 2,
			["timerOffset"] = -2,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "a6a34fdf-4682-612a-9748-1ee999124b9f",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOff(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer OFF",
			["throttleTime"] = 0,
			["time"] = 420.1,
			["timeRange"] = true,
			["timelineIndex"] = 68,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "381b556c-e963-78ac-b4ee-f7ae3c080670",
		},
	},
	[70] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- 2264 buff id for brace\
\
if HasBuff(Player.id, 2264) then\
  -- turn off arc/mcr for 8 seconds\
  NilsReactionCore.Random.Toggles.Assist.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline, NilsReactionCore.params.on, 8000)\
  \
  -- Invuln or CD's\
  if NilsReactionCore.Hotbar.Actions.Holmgang.CoolDown() <= 1 then\
    if NilsReactionCore.Helpers.Target.FacingNorth() or NilsReactionCore.Helpers.Target.FacingSouth() then\
      NilsReactionCore.Hotbar.Actions.Holmgang.Execute()\
      self.used = true\
    end\
  else\
  -- no holmgange, use cooldowns and pray\
    if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
  end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Brace yourself",
			["throttleTime"] = 0,
			["time"] = 429.4,
			["timeRange"] = true,
			["timelineIndex"] = 70,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "3e3e36d3-23af-609b-8b1c-e38404b85856",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Actions.NascentFlash.Execute() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Flash",
			["throttleTime"] = 0,
			["time"] = 429.4,
			["timeRange"] = true,
			["timelineIndex"] = 70,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "b3c4fa82-59d3-ad15-9d28-9518424f5099",
		},
		[3] = {
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
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "ecb3d04b-970b-0b9a-8b29-3b42649fb951",
		},
		[4] = {
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
			["time"] = 429.4,
			["timeRange"] = true,
			["timelineIndex"] = 70,
			["timerEndOffset"] = 2,
			["timerOffset"] = -2,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "16895589-79c3-80e4-958f-629a48be454b",
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
					["conditionLua"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable then return false end\
return true\
",
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
			["throttleTime"] = 0,
			["time"] = 432.7,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 3,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "5cf02829-0c71-0572-9964-8b47e926c94f",
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
			["timeRange"] = false,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "db28e4ee-d7a9-cde8-ad4d-e634e67e8470",
		},
	},
	[74] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOn(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer On",
			["throttleTime"] = 0,
			["time"] = 434.6,
			["timeRange"] = true,
			["timelineIndex"] = 74,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "1ccb6cb3-150e-26ee-a171-90306cb03209",
		},
	},
	[75] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 10 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
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
			["uuid"] = "62572bcf-a702-edb8-9ce9-8a94f549b824",
		},
	},
	[81] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Knockback() == true then self.used = true end",
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
			["timerStartOffset"] = -5.5,
			["used"] = false,
			["uuid"] = "2ba2731e-8fd9-4f79-a1ce-90b32626531f",
		},
	},
	[83] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Rampart() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Rampart",
			["throttleTime"] = 0,
			["time"] = 502.6,
			["timeRange"] = true,
			["timelineIndex"] = 83,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "64654dd2-09e5-f78a-8a19-c9e7e29734d5",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOff(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer OFF",
			["throttleTime"] = 0,
			["time"] = 502.6,
			["timeRange"] = true,
			["timelineIndex"] = 83,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "128cb785-226b-cc0c-acb0-6d27b14260e1",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
local electrify = 2233\
\
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "8a1a91d6-61ca-04a0-b4e9-30eedf7be8f6",
		},
	},
	[84] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if MT",
			["throttleTime"] = 0,
			["time"] = 506.4,
			["timeRange"] = true,
			["timelineIndex"] = 84,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1.6000000238419,
			["used"] = false,
			["uuid"] = "9d5af7b4-9667-8ad7-bd5a-584e48212c82",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "eb9f2000-b3e1-fc36-996e-15ababcfb0a2",
		},
	},
	[85] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Actions.RawIntuition.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Raw Intuition if MT",
			["throttleTime"] = 0,
			["time"] = 510,
			["timeRange"] = true,
			["timelineIndex"] = 85,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "50597754-fa78-158a-9c6b-fdb7a844cd32",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() == false then\
  if NilsReactionCore.Hotbar.Actions.NascentFlash.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Flash if OT",
			["throttleTime"] = 0,
			["time"] = 510,
			["timeRange"] = true,
			["timelineIndex"] = 85,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "f6fd9870-f2e7-d484-9ae1-4a15c366eaa0",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "25164dae-2f6c-9116-94d7-c50aa3213545",
		},
	},
	[87] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Actions.Shake.Exeute() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shake",
			["throttleTime"] = 0,
			["time"] = 513.8,
			["timeRange"] = true,
			["timelineIndex"] = 87,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "eb2d182b-7a40-6de8-a4f5-cb9afb7c114b",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "7d6361a1-e82a-2cb8-810f-336edff93b9d",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "8634c20a-22bb-e755-895b-c0a65d7b3ab5",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "d54a4fc7-12a9-b192-8dd3-da79568004d9",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "e38ce495-2ae7-bb90-8135-bf1c10fbacd7",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "76353c21-4d2b-8899-b01a-025c1dd4fe7c",
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
local members = NilsReactionCore.Buffs.MembersWithBuff(2233)\
for _, ent in pairs(members) do\
  Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 1.5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
\
self.end = true\
",
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
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "dd883f25-4eb6-598f-a4ea-bd8b25be5c3b",
		},
	},
	[94] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOn(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer On",
			["throttleTime"] = 0,
			["time"] = 539.7,
			["timeRange"] = true,
			["timelineIndex"] = 94,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "d5bcea7a-b630-fa49-8ebf-99cc3d58a0c3",
		},
	},
	[95] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 10 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
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
			["uuid"] = "824d9047-1a97-a9bb-b1d5-99160e1f2ff9",
		},
	},
	[98] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 10 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
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
			["uuid"] = "ebb08909-8246-8d35-b880-0339b928afbf",
		},
	},
	[102] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Buffs.Duration(2228, Player.id) < 10 then NilsReactionCore.Alert.Send(\"Grab an Orb\")  self.used = true end",
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
			["uuid"] = "bfed61c8-8c20-aeac-8917-1cfc0892da7f",
		},
	},
	["mapID"] = 906,
	["version"] = 4,
}
return obj1
