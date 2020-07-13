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
-- example because this is a timeline reaction we want to turn off movement detection\
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
			["uuid"] = "43c209ca-dfce-180f-aa52-feb228073892",
		},
	},
	[2] = {
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
			["uuid"] = "5e22c811-5150-24ac-b7f5-f6f6633f0a08",
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
			["time"] = 27.1,
			["timeRange"] = true,
			["timelineIndex"] = 3,
			["timerEndOffset"] = 5,
			["timerOffset"] = -2,
			["timerStartOffset"] = 3,
			["used"] = false,
			["uuid"] = "52329b14-ae10-d65f-9029-aaf4450c4911",
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
			["uuid"] = "30af0e7a-0633-c4b0-8149-e3ce83ce484b",
		},
	},
	[5] = {
	},
	[6] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.TTS.GrabOrb() then self.used = true end",
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
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "f470999b-2ccb-3f33-b7bf-492bdf8af33e",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.HeartOfLight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfLight",
			["throttleTime"] = 0,
			["time"] = 52.2,
			["timeRange"] = true,
			["timelineIndex"] = 6,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1.5,
			["used"] = false,
			["uuid"] = "c10da13c-16d6-8104-9f50-3c1372e4a351",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Raiden = 9286\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Raiden) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end\
 ",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "RampartorHeavy if Raiden",
			["throttleTime"] = 0,
			["time"] = 52.2,
			["timeRange"] = true,
			["timelineIndex"] = 6,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "293a25d4-1885-b6d8-a52e-4c50ec67ed17",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Raiden = 9286\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Raiden) then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if Raiden",
			["throttleTime"] = 0,
			["time"] = 52.2,
			["timeRange"] = true,
			["timelineIndex"] = 6,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "2983e14f-c427-1a4c-9a3c-e23c538173e1",
		},
	},
	[7] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Raiden = 9286\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Raiden) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end\
 ",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown if Raiden",
			["throttleTime"] = 0,
			["time"] = 63.3,
			["timeRange"] = true,
			["timelineIndex"] = 7,
			["timerEndOffset"] = -1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "030375ab-609e-5691-8e1c-4c0773c3730b",
		},
	},
	[8] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if Ramuh",
			["throttleTime"] = 0,
			["time"] = 69.5,
			["timeRange"] = true,
			["timelineIndex"] = 8,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "e05752d9-e974-59b4-ac07-f62ee20a33b8",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown if Ramuh",
			["throttleTime"] = 0,
			["time"] = 69.5,
			["timeRange"] = true,
			["timelineIndex"] = 8,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "ba9f38c8-150d-4397-b010-27ed75171667",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Hotbar.Actions.HeartOfStone.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone if Ramuh",
			["throttleTime"] = 0,
			["time"] = 69.5,
			["timeRange"] = true,
			["timelineIndex"] = 8,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2.5,
			["used"] = false,
			["uuid"] = "a3566544-e899-1e5f-9dad-52d2c153414f",
		},
	},
	[11] = {
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
			["time"] = 84.8,
			["timeRange"] = true,
			["timelineIndex"] = 11,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "21a96f14-f2c0-27b4-9462-0d590be65a76",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.Mechanics.ChaosStrike() > 4 then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Draw Clouds",
			["throttleTime"] = 0,
			["time"] = 84.8,
			["timeRange"] = true,
			["timelineIndex"] = 11,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "0c7bce6c-e938-100d-8924-86d638bdfae2",
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
			["uuid"] = "df6a01c5-9bf5-1b20-b9ce-1def8ec6dde0",
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
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "d4fbac4d-b6e2-c05d-a8e9-c0e6b8fd7532",
		},
	},
	[15] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.TTS.GrabOrb() then self.used = true end",
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
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "61ace3d4-656b-067f-8034-565750108f24",
		},
	},
	[17] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
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
			["uuid"] = "c05cdc27-a976-129e-9b04-09db25ff522f",
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
			["uuid"] = "12d7673d-6150-ea2f-85eb-c582644c66be",
		},
	},
	[20] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
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
			["uuid"] = "06a130b7-67b8-1a5e-aa90-47cd1178d969",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() == false then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if OT",
			["throttleTime"] = 0,
			["time"] = 128.9,
			["timeRange"] = true,
			["timelineIndex"] = 20,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "af800ae5-99bf-a8a5-a778-f1384e2d5eed",
		},
	},
	[21] = {
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
			["time"] = 138.1,
			["timeRange"] = true,
			["timelineIndex"] = 21,
			["timerEndOffset"] = 3,
			["timerOffset"] = -2,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "65655b42-8f93-bcbb-87f4-9dc5f1f0d8da",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown if Ramuh",
			["throttleTime"] = 0,
			["time"] = 138.1,
			["timeRange"] = true,
			["timelineIndex"] = 21,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -8,
			["used"] = false,
			["uuid"] = "b363d095-24b8-1222-a0cb-e9ab2bad199d",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Hotbar.Actions.HeartOfStone.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone if Ramuh",
			["throttleTime"] = 0,
			["time"] = 138.1,
			["timeRange"] = true,
			["timelineIndex"] = 21,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2.5,
			["used"] = false,
			["uuid"] = "da277a5f-8cbc-fbc2-85d5-8d98615424a8",
		},
	},
	[22] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal",
			["throttleTime"] = 0,
			["time"] = 148.3,
			["timeRange"] = true,
			["timelineIndex"] = 22,
			["timerEndOffset"] = -1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3.5,
			["used"] = false,
			["uuid"] = "9047621c-36e2-92b0-8c99-86e5bf16aeb4",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.HeartOfLight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfLight",
			["throttleTime"] = 0,
			["time"] = 148.3,
			["timeRange"] = true,
			["timelineIndex"] = 22,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1.5,
			["used"] = false,
			["uuid"] = "68d232ec-f91e-617d-93a5-7e3ce257705c",
		},
	},
	[23] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.TTS.GrabOrb() then self.used = true end",
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
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "01f8457a-7cae-8a18-b381-21e9dd324bac",
		},
	},
	[25] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- Requires Argus for this, no easy way I can find to detect if you are in in the first or second set\
if NilsReactionCore.Argus.EntityInUnavoidableAOEs(Player) then\
  if NilsReactionCore.Hotbar.Actions.HeartOfStone.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone if in Unavoidable",
			["throttleTime"] = 0,
			["time"] = 174.5,
			["timeRange"] = true,
			["timelineIndex"] = 25,
			["timerEndOffset"] = 12,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "f02293f2-a1fc-19f5-8a8e-309278e1130c",
		},
	},
	[27] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Raiden = 9286\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Raiden) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end\
 ",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "RampartorHeavy if Raiden",
			["throttleTime"] = 0,
			["time"] = 189.1,
			["timeRange"] = true,
			["timelineIndex"] = 27,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "0f2bac26-e563-8e7b-b912-e6625d9dc79f",
		},
	},
	[28] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if Ramuh",
			["throttleTime"] = 0,
			["time"] = 198.5,
			["timeRange"] = true,
			["timelineIndex"] = 28,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "865f9188-4bba-4a76-ab6c-0157249ad5bc",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown if Ramuh",
			["throttleTime"] = 0,
			["time"] = 198.5,
			["timeRange"] = true,
			["timelineIndex"] = 28,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "e77a0ff1-edf2-7909-b032-8b6f304bab11",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Hotbar.Actions.HeartOfStone.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone if Ramuh",
			["throttleTime"] = 0,
			["time"] = 198.5,
			["timeRange"] = true,
			["timelineIndex"] = 28,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2.5,
			["used"] = false,
			["uuid"] = "786526cf-0632-b304-be70-fac8620d740e",
		},
	},
	[30] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Raiden = 9286\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Raiden) then\
  if NilsReactionCore.Hotbar.Actions.HeartOfStone.Execute() then self.used = true end\
end\
 ",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone if Raiden",
			["throttleTime"] = 0,
			["time"] = 215.9,
			["timeRange"] = true,
			["timelineIndex"] = 30,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3.5,
			["used"] = false,
			["uuid"] = "1a140f34-d4fe-515e-9fad-8232ea005512",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal",
			["throttleTime"] = 0,
			["time"] = 215.9,
			["timeRange"] = true,
			["timelineIndex"] = 30,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "f0d9e769-e6ed-6b75-913b-75985ce45a1a",
		},
	},
	[31] = {
	},
	[32] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.TTS.GrabOrb() then self.used = true end",
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
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "eb1d132f-782a-d299-84a3-e36637daba4d",
		},
	},
	[34] = {
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
			["uuid"] = "655de6bb-7108-4461-aa4f-b6e40ce2c6dd",
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
			["time"] = 253,
			["timeRange"] = true,
			["timelineIndex"] = 35,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "2ae6fff9-d094-59a4-8bd7-03177af7352c",
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
  if NilsReactionCore.Hotbar.Actions.SuperBolide.CoolDown() <= 1 then\
    if NilsReactionCore.Helpers.Target.FacingNorth() or NilsReactionCore.Helpers.Target.FacingSouth() then\
      NilsReactionCore.Hotbar.Actions.SuperBolide.Execute()\
      self.used = true\
    end\
  else\
  -- no LivingDead, use cooldowns and pray\
    NilsReactionCore.Hotbar.Actions.HeartOfStone.Execute()\
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
			["uuid"] = "21f2faf4-d985-bf0a-a83d-a986cc8185ed",
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
			["uuid"] = "e681bcae-1b67-9dde-a5c7-9e8aaec015e8",
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
			["uuid"] = "6a52061d-f815-bd0d-bcb6-6669bc1b0eae",
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
			["uuid"] = "4c83264a-c696-1000-9773-f87069bff77c",
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
			["time"] = 267.5,
			["timeRange"] = true,
			["timelineIndex"] = 42,
			["timerEndOffset"] = 3,
			["timerOffset"] = -2,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "1676cdd9-15e0-5b55-b3e6-2f4cc2ec3323",
		},
	},
	[43] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.TTS.GrabOrb() then self.used = true end",
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
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "46960c20-1b3c-9efc-902d-400a67d9a021",
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
			["uuid"] = "05f07e4d-e309-9ee8-adde-36806c0f73d8",
		},
	},
	[45] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "3c4622af-d821-5517-b451-2427f8953667",
		},
	},
	[46] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "a6c4f72a-8466-740b-8358-864a34830222",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if Ramuh",
			["throttleTime"] = 0,
			["time"] = 301.6,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "1dc78805-c807-76b5-a8f4-1cdb5903209c",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown if Ramuh",
			["throttleTime"] = 0,
			["time"] = 301.6,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "7f06ad2a-392a-45ca-b262-1399676817a8",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Hotbar.Actions.HeartOfStone.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone if Ramuh",
			["throttleTime"] = 0,
			["time"] = 301.6,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2.5,
			["used"] = false,
			["uuid"] = "7b73a82c-44d4-017c-878f-49125e14f854",
		},
	},
	[47] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.HeartOfLight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfLight",
			["throttleTime"] = 0,
			["time"] = 305.2,
			["timeRange"] = true,
			["timelineIndex"] = 47,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1.5,
			["used"] = false,
			["uuid"] = "ce7d2c8f-a8a8-f836-9e01-48b9d010655e",
		},
	},
	[48] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "162731fc-832b-8787-8aa3-9455dabbafd8",
		},
	},
	[49] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "eb494555-276b-a368-8921-716cc34375d1",
		},
	},
	[50] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "14fbbb5a-b6f0-4f19-a2c8-7f3db6c05071",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal",
			["throttleTime"] = 0,
			["time"] = 312.7,
			["timeRange"] = true,
			["timelineIndex"] = 50,
			["timerEndOffset"] = 1.5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0.5,
			["used"] = false,
			["uuid"] = "eca6e5c6-5ff6-901e-8287-366a3e9a51b0",
		},
	},
	[51] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "7f3d9436-09ce-85de-a8b4-9a49ba0fe812",
		},
	},
	[53] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "f532b441-e52d-f9aa-bc5d-7cd0f0818920",
		},
	},
	[54] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "a9d1b228-a732-06a5-a113-e3631f468f5a",
		},
	},
	[55] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "cd9a6b97-690a-b408-a8e6-098d0a070fb8",
		},
	},
	[56] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Raiden = 9286\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Raiden) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end\
 ",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "RampartorHeavy if Raiden",
			["throttleTime"] = 0,
			["time"] = 329.6,
			["timeRange"] = true,
			["timelineIndex"] = 56,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "879990ca-fd0e-76dd-8c56-b8b5119abb51",
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
			["uuid"] = "4343dc1c-84ee-5c61-947e-8fe2d649166f",
		},
	},
	[57] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.TTS.GrabOrb() then self.used = true end",
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
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "7aef72f5-9218-6783-82dc-8c05b8dd5827",
		},
	},
	[59] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- Requires Argus for this, no easy way I can find to detect if you are in in the first or second set\
if NilsReactionCore.Argus.EntityInUnavoidableAOEs(Player) then\
  if NilsReactionCore.Hotbar.Actions.HeartOfStone.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone if in Unavoidable",
			["throttleTime"] = 0,
			["time"] = 356.4,
			["timeRange"] = true,
			["timelineIndex"] = 59,
			["timerEndOffset"] = 12,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "4a5355c0-dade-33ce-bed6-05bbdf0ec844",
		},
	},
	[62] = {
	},
	[63] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown if Ramuh",
			["throttleTime"] = 0,
			["time"] = 380.1,
			["timeRange"] = true,
			["timelineIndex"] = 63,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -8,
			["used"] = false,
			["uuid"] = "0d357e59-8f50-a97e-bda1-693761d4ca1d",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if Ramuh",
			["throttleTime"] = 0,
			["time"] = 380.1,
			["timeRange"] = true,
			["timelineIndex"] = 63,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "a26f2dae-f621-b49e-83cc-0b61e9b5ddcf",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Hotbar.Actions.HeartOfStone.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone if Ramuh",
			["throttleTime"] = 0,
			["time"] = 380.1,
			["timeRange"] = true,
			["timelineIndex"] = 63,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3.5,
			["used"] = false,
			["uuid"] = "68133591-6a1d-a4fb-967f-a54170726ca8",
		},
	},
	[64] = {
	},
	[65] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.TTS.GrabOrb() then self.used = true end",
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
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "2bde8545-b400-c1bc-8c27-ff97e4aa15bd",
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
			["uuid"] = "1c2faf4e-b999-11d2-a531-7b1855386f15",
		},
	},
	[68] = {
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
			["time"] = 420.1,
			["timeRange"] = true,
			["timelineIndex"] = 68,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "f896f326-2c49-b10e-8126-bbec25dc695b",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Toggles.NoMercy.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn off NoMercy",
			["throttleTime"] = 0,
			["time"] = 420.1,
			["timeRange"] = true,
			["timelineIndex"] = 68,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "59084e6d-be0d-3500-9f68-0d297c979ad6",
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
  if NilsReactionCore.Hotbar.Actions.SuperBolide.CoolDown() <= 1 then\
    if NilsReactionCore.Helpers.Target.FacingNorth() or NilsReactionCore.Helpers.Target.FacingSouth() then\
      NilsReactionCore.Hotbar.Actions.SuperBolide.Execute()\
      self.used = true\
    end\
  else\
  -- no LivingDead, use cooldowns and pray\
    NilsReactionCore.Hotbar.Actions.HeartOfStone.Execute()\
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
			["uuid"] = "aa7656c7-24b7-e7b3-8ca4-59c9142dbaa9",
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
			["time"] = 429.4,
			["timeRange"] = true,
			["timelineIndex"] = 70,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "5df58d81-a1a6-22e3-a1bf-e91dd77f5760",
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
			["uuid"] = "7409c2c7-5b4e-b9e6-991c-95d515bc4e78",
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
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "11c88825-f54a-58b9-bbd6-c321cb9ebd0d",
		},
		[3] = {
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
			["time"] = 432.7,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 2,
			["timerOffset"] = -2,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "ace06861-4c9a-9e00-ba31-7d2bd51e8b94",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Toggles.NoMercy.Execute(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn on NoMercy",
			["throttleTime"] = 0,
			["time"] = 432.7,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "7a1e9841-9f37-d7bc-9160-829e81de1af1",
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
			["uuid"] = "e86ca88d-f350-4f65-991c-7ca709375fe7",
		},
	},
	[75] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.TTS.GrabOrb() then self.used = true end",
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
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "d0c49af1-f6a3-5c55-a861-3c515d5bff30",
		},
	},
	[76] = {
	},
	[77] = {
	},
	[78] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.Mechanics.ChaosStrike() > 4 then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Draw Clouds",
			["throttleTime"] = 0,
			["time"] = 465.6,
			["timeRange"] = true,
			["timelineIndex"] = 78,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "bb11d775-cf83-bb96-82ec-8cf5cd21c800",
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
			["uuid"] = "92142851-72d6-f869-b4b5-6b35f1b9d8ec",
		},
	},
	[83] = {
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
			["time"] = 502.6,
			["timeRange"] = true,
			["timelineIndex"] = 83,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "c98fa500-5031-cedc-9d1e-66d5769537ca",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerEndOffset"] = 4.5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "f83d8217-c420-29af-aae9-f9bc3505bddf",
		},
	},
	[84] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "ce681fd2-871f-8301-a105-002a42b8f3c8",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Hotbar.Actions.Reprisal.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reprisal if Ramuh",
			["throttleTime"] = 0,
			["time"] = 506.4,
			["timeRange"] = true,
			["timelineIndex"] = 84,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "09c41e16-e5d8-176d-a099-3c54ea6dfcd2",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown if Ramuh",
			["throttleTime"] = 0,
			["time"] = 506.4,
			["timeRange"] = true,
			["timelineIndex"] = 84,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "ae12304b-5e1d-01dd-a9b5-f6ef8fd336a0",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local Ramuh = 9281\
\
if NilsReactionCore.Helpers.Tanks.AmIMainTankByContentID(Ramuh) then\
  if NilsReactionCore.Hotbar.Actions.HeartOfStone.Execute() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone if Ramuh",
			["throttleTime"] = 0,
			["time"] = 506.4,
			["timeRange"] = true,
			["timelineIndex"] = 84,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2.5,
			["used"] = false,
			["uuid"] = "322a0a88-79d3-d5f4-968d-17a20711bdbc",
		},
	},
	[85] = {
	},
	[86] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerEndOffset"] = 2.5,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "daf543ee-d642-2096-bc80-441dbf882ed9",
		},
	},
	[87] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "54a9a4e6-b399-ff1c-8287-114076a51d4e",
		},
	},
	[88] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "c51c36a2-5d8f-eeb1-a468-9a0ad54aff18",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.HeartOfLight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfLight",
			["throttleTime"] = 0,
			["time"] = 517.5,
			["timeRange"] = true,
			["timelineIndex"] = 88,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1.5,
			["used"] = false,
			["uuid"] = "8e2a90de-eaee-0022-a715-9e65643a3c20",
		},
	},
	[89] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "5690b11c-ed27-1bd1-b1bd-9bb42ffed3ad",
		},
	},
	[91] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "94367232-1f50-bb1c-904b-b69ddd3371ca",
		},
	},
	[92] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "8cc0c0aa-9622-f8ff-b3c6-4d4ec550c3ed",
		},
	},
	[93] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.ChainLightning() > 1 then self.used = true end",
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
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "5ebe59fa-b916-a2b0-b9b4-510cd09a330a",
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
			["uuid"] = "8a285d0d-7eba-411b-b4b7-6efc3a46f22b",
		},
	},
	[95] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.TTS.GrabOrb() then self.used = true end",
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
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "0f73a49d-2a21-9f42-a24a-c8188eb2d9cf",
		},
	},
	[96] = {
	},
	[98] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.TTS.GrabOrb() then self.used = true end",
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
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "afd523fb-b223-59b8-95ae-6280afb6aa57",
		},
	},
	[102] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.TTS.GrabOrb() then self.used = true end",
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
			["timerStartOffset"] = -7,
			["used"] = false,
			["uuid"] = "df437335-8a26-3c77-9078-07d9f7fa4eaa",
		},
	},
	["mapID"] = 906,
	["version"] = 4,
}
return obj1
