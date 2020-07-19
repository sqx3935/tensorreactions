-- Persistent Data
local multiRefObjects = {
{},{},
} -- multiRefObjects
local obj1 = {
	[2] = {
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
\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Nil-Core-Settings",
			["throttleTime"] = 0,
			["time"] = 16,
			["timeRange"] = true,
			["timelineIndex"] = 2,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -15,
			["used"] = false,
			["uuid"] = "29b3e98c-655e-b133-ae0f-d03b00533523",
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
			["time"] = 27.2,
			["timeRange"] = true,
			["timelineIndex"] = 3,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "543dceec-07ba-a41a-8174-1344a54d3607",
		},
	},
	[4] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown if MT",
			["throttleTime"] = 0,
			["time"] = 39.3,
			["timeRange"] = true,
			["timelineIndex"] = 4,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "6208a170-f40b-6eed-91fc-a773d597ba7c",
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
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOn(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer On",
			["throttleTime"] = 0,
			["time"] = 49.4,
			["timeRange"] = true,
			["timelineIndex"] = 6,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "4ef88cf8-93c3-9273-b401-7c29e2c986f4",
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
			["time"] = 49.4,
			["timeRange"] = true,
			["timelineIndex"] = 6,
			["timerEndOffset"] = 9,
			["timerOffset"] = 0,
			["timerStartOffset"] = 5,
			["used"] = false,
			["uuid"] = "2ec3c562-ac71-d7e6-a749-a622ff57be6e",
		},
	},
	[7] = {
	},
	[8] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.DarkMissionary() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark Missionary",
			["throttleTime"] = 0,
			["time"] = 63.7,
			["timeRange"] = true,
			["timelineIndex"] = 8,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 3,
			["used"] = false,
			["uuid"] = "e3bd7c0a-31f9-b259-9f77-22ea9948f8e4",
		},
	},
	[9] = {
	},
	[10] = {
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
			["time"] = 74.9,
			["timeRange"] = true,
			["timelineIndex"] = 10,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "ec5cdead-7ce1-595e-8158-d270fccd4f3a",
		},
	},
	[11] = {
	},
	[12] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.DarkMind() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark Mind",
			["throttleTime"] = 0,
			["time"] = 78.9,
			["timeRange"] = true,
			["timelineIndex"] = 12,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "303de52e-d5b1-4233-8fdd-5886eae8dcf5",
		},
	},
	[19] = {
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
			["time"] = 92.9,
			["timeRange"] = true,
			["timelineIndex"] = 19,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "0d0769cf-23a7-0715-ac4c-66397b48cb4a",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.HeavyOrRampart() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown if MT",
			["throttleTime"] = 0,
			["time"] = 92.9,
			["timeRange"] = true,
			["timelineIndex"] = 19,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "94c6bed8-1cdd-1469-aa13-6ad736296a6f",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Darkknight.TheBlackestNight() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "TBN if MT",
			["throttleTime"] = 0,
			["time"] = 92.9,
			["timeRange"] = true,
			["timelineIndex"] = 19,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2.5,
			["used"] = false,
			["uuid"] = "8da11d74-281e-93be-bab4-bd5503816f36",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  NilsReactionCore.Alert.Send(\"use shirk in 3\")\
else\
  NilsReactionCore.Alert.Send(\"use provoke in 3\")\
end\
\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Tank Swap TTS",
			["throttleTime"] = 0,
			["time"] = 92.9,
			["timeRange"] = true,
			["timelineIndex"] = 19,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "a683bc2a-4e87-61ae-adc2-6d1e7c581028",
		},
		[5] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.coreparams.reactions.timeline.actions.autoShirk.enabled = true\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shirk Listener on",
			["throttleTime"] = 0,
			["time"] = 92.9,
			["timeRange"] = true,
			["timelineIndex"] = 19,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "3b75c65d-36f4-4b37-b5ed-462f674cef83",
		},
		[6] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.coreparams.reactions.timeline.actions.autoShirk.enabled = true\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shirk Listener off",
			["throttleTime"] = 0,
			["time"] = 92.9,
			["timeRange"] = true,
			["timelineIndex"] = 19,
			["timerEndOffset"] = 7,
			["timerOffset"] = 0,
			["timerStartOffset"] = 6,
			["used"] = false,
			["uuid"] = "4bc40b4e-b195-3289-b532-ad36275788d4",
		},
	},
	[20] = {
	},
	[21] = {
	},
	[22] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if TensorCore.isAnyEntityCasting(19821) then\
  NilsReactionCore.Hotbar.Sprint()\
  if NilsReactionCore.Logic.Toggles.GapClosersOff(NilsReactionCore.params.isTimeline) then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap Close Off if Axe",
			["throttleTime"] = 0,
			["time"] = 123,
			["timeRange"] = true,
			["timelineIndex"] = 22,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "2de8352a-5956-7cf3-bdad-ddb8bdfd996c",
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
			["time"] = 123,
			["timeRange"] = true,
			["timelineIndex"] = 22,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0.5,
			["used"] = false,
			["uuid"] = "004eb5fc-ff37-84e7-8262-8d565eaea973",
		},
	},
	[23] = {
	},
	[24] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil or data.DrawOrbs == false then self.used = true end\
\
local drawnOrbs = {}\
for id, ent in pairs(EntityList(\"\")) do\
  if ent.contentid == 9318 and not drawnOrbs[id] then\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(20000, ent.pos.x, ent.pos.y, ent.pos.z, 5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.used = table.size(drawnOrbs) >= 4",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "draw orb",
			["throttleTime"] = 0,
			["time"] = 137.4,
			["timeRange"] = false,
			["timelineIndex"] = 24,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "0ead3d04-ac0f-4d68-8031-d268fc85328a",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil or data.DrawOrbs == false then self.used = true end\
\
local drawnOrbs = {}\
for id, ent in pairs(EntityList(\"\")) do\
  if ent.contentid == 9318 and not drawnOrbs[id] then\
    drawnOrbs[id] = true\
    Argus.addTimedCircleFilled(20000, ent.pos.x, ent.pos.y, ent.pos.z, 5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
  end\
end\
\
self.used = table.size(drawnOrbs) >= 4",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "draw orb",
			["throttleTime"] = 0,
			["time"] = 137.4,
			["timeRange"] = false,
			["timelineIndex"] = 24,
			["timerEndOffset"] = 0,
			["timerOffset"] = 15,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "f23f6548-66c6-94ba-95f3-929d19f95194",
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
			["time"] = 137.4,
			["timeRange"] = true,
			["timelineIndex"] = 24,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "8cac2ffc-0239-2fec-8475-92ab4ae72a13",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.GapClosers() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Burn Gap Closer",
			["throttleTime"] = 0,
			["time"] = 137.4,
			["timeRange"] = true,
			["timelineIndex"] = 24,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "d90f0cd6-b79a-fc43-a3c6-7c05e49e28ea",
		},
	},
	[29] = {
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
			["time"] = 164.7,
			["timeRange"] = true,
			["timelineIndex"] = 29,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "598956c6-1d31-eea3-b376-2dea5fb1d008",
		},
	},
	[31] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if TensorCore.isAnyEntityCasting(19821) then\
  NilsReactionCore.Hotbar.Sprint()\
  if NilsReactionCore.Logic.Toggles.GapClosersOff(NilsReactionCore.params.isTimeline) then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap Close Off if Axe",
			["throttleTime"] = 0,
			["time"] = 185.2,
			["timeRange"] = true,
			["timelineIndex"] = 31,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "bbc0897b-bf5b-d3c1-b25c-a5c1071bd075",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- if sythe is first\
NilsReactionCore.Hotbar.Sprint()\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Sprint",
			["throttleTime"] = 0,
			["time"] = 185.2,
			["timeRange"] = true,
			["timelineIndex"] = 31,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "31923307-081e-241d-8518-baae3b3d60e3",
		},
	},
	[32] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 190.2,
			["timeRange"] = true,
			["timelineIndex"] = 32,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "3aabc228-3a21-abe7-82cc-fd9166eb2209",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.DarkMind() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark Mind",
			["throttleTime"] = 0,
			["time"] = 190.2,
			["timeRange"] = true,
			["timelineIndex"] = 32,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1.5,
			["used"] = false,
			["uuid"] = "ba573eb1-9fdc-61a5-a5ae-a2eb757a92f9",
		},
	},
	[33] = {
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
			["time"] = 193.3,
			["timeRange"] = true,
			["timelineIndex"] = 33,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "6f91af07-872e-9602-9828-e901b7aa3c1d",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.PotionOff(NilsReactionCore.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion Off",
			["throttleTime"] = 0,
			["time"] = 193.3,
			["timeRange"] = true,
			["timelineIndex"] = 33,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "3cffe0d1-d1e4-6534-8897-7b19e471bb30",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Toggles.Darkknight.SaltedEarth(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn off Salted Earth",
			["throttleTime"] = 0,
			["time"] = 193.3,
			["timeRange"] = true,
			["timelineIndex"] = 33,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "15389597-e918-6e73-bd73-9a7b419c923d",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.Plunge() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Burn Plunge",
			["throttleTime"] = 0,
			["time"] = 193.3,
			["timeRange"] = true,
			["timelineIndex"] = 33,
			["timerEndOffset"] = 8,
			["timerOffset"] = 0,
			["timerStartOffset"] = 5,
			["used"] = false,
			["uuid"] = "707b2c96-dc5e-439b-821d-38a114b9e153",
		},
	},
	[34] = {
	},
	[36] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Toggles.Darkknight.Delirium(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn off Delirium",
			["throttleTime"] = 0,
			["time"] = 213,
			["timeRange"] = true,
			["timelineIndex"] = 36,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "02db6575-0478-0770-9e51-d1a52ed8d498",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Toggles.Darkknight.LivingShadow(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn off LivingShadow",
			["throttleTime"] = 0,
			["time"] = 213,
			["timeRange"] = true,
			["timelineIndex"] = 36,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "a8f1eda3-8595-bf80-bd93-c8027e4e9789",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Toggles.BloodWeapon.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn off Blood Weapon",
			["throttleTime"] = 0,
			["time"] = 213,
			["timeRange"] = true,
			["timelineIndex"] = 36,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "431604fc-42e0-3af4-bc59-182181e19de8",
		},
	},
	[37] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 229.2,
			["timeRange"] = true,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -6,
			["used"] = false,
			["uuid"] = "518b4733-7afd-d788-aa1c-a939d74569eb",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "local target = Player:GetTarget()\
  if target ~= nil and table.valid(target) and target.attackable and target.contentid == 9320 and not HasBuff(target.id, 2) and target.action == 50 then\
    if NilsReactionCore.Hotbar.Stun() then self.used = true end\
 end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = true,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Leg Sweep",
			["throttleTime"] = 0,
			["time"] = 229.2,
			["timeRange"] = true,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 10,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "52c91b84-8bdb-dad8-8355-3697fec74878",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.DarkMissionary() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark Missionary",
			["throttleTime"] = 0,
			["time"] = 229.2,
			["timeRange"] = true,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3.5,
			["used"] = false,
			["uuid"] = "6ec436cd-a0b3-b075-9d7d-66d33c2478aa",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Raid.Mechanics.E8SDetermineLeftOrRight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Determine Side",
			["throttleTime"] = 0,
			["time"] = 229.2,
			["timeRange"] = true,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "5097baa6-9e93-070a-a5a7-681ed8c0fa7b",
		},
		[5] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- 1x Aqueous Aether (9320)\
-- 2x Electric Aether (9319)\
\
if NilsReactionCore.Raid.Params.Adds.E8S.AreYouLeft then\
  local jobID = NilsReactionCore.jobs.GetJobID()\
  local target = Player:GetTarget()\
\
  -- Aqueous Aether\
  NilsReactionCore.Helpers.Target.SetTargetByContentID(9320)\
\
  if NilsReactionCore.Helpers.ReturnValueOrDefault(NilsReactionCore.Settings.jobs[jobID].Raid.Mechanics.Adds.E8S.StunLeftFirst, true, \"boolean\") then\
    if target ~= nil and table.valid(target) and target.attackable and target.contentid == 9320 and not HasBuff(target.id, 2) and target.action == 50 then\
      NilsReactionCore.Hotbar.Stun()\
    end\
  end\
\
  -- Electric Suicide Prevention, toggle off assist if health gets to low\
  if NilsReactionCore.Helpers.Target.IsContentID(9319) and Player.hp.percent <= 30 then\
    NilsReactionCore.Random.Toggles.Assist.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline, true, 2000)\
  end\
\
  -- if no auto target, then priority attacks\
  -- Aqueous\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9320) end\
  -- Electric\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9319) end\
\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = true,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Left Side",
			["throttleTime"] = 0,
			["time"] = 229.2,
			["timeRange"] = true,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 14,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "9327e871-672e-a687-963a-3c5316659700",
		},
		[6] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- 1x Earthen Aether (9321)\
-- 1x Aqueous Aether (9320)\
\
if NilsReactionCore.Raid.Params.Adds.E8S.AreYouRight then\
  local jobID = NilsReactionCore.jobs.GetJobID()\
  local target = Player:GetTarget()\
\
  -- if first Silence then first Target it Earthen\
  if NilsReactionCore.Helpers.ReturnValueOrDefault(NilsReactionCore.Settings.jobs[jobID].Raid.Mechanics.Adds.E8S.SilenceRightFirst, true, \"boolean\") then\
    NilsReactionCore.coreparams.enableAutoInterrupt = true\
    NilsReactionCore.Hotbar.Toggles.Interject.Execute(NilsReactionCore.params.on)\
    NilsReactionCore.Helpers.Target.SetTargetByContentID(9321)\
  else\
    NilsReactionCore.coreparams.enableAutoInterrupt = false\
    NilsReactionCore.Hotbar.Toggles.Interject.Execute(NilsReactionCore.params.off)\
    -- Aqueous Aether\
    NilsReactionCore.Helpers.Target.SetTargetByContentID(9320)\
\
    if NilsReactionCore.Helpers.ReturnValueOrDefault(NilsReactionCore.Settings.jobs[jobID].Raid.Mechanics.Adds.E8S.StunRightFirst, true, \"boolean\") then\
      if target ~= nil and table.valid(target) and target.attackable and target.contentid == 9320 and not HasBuff(target.id, 2) and target.action == 50 then\
        NilsReactionCore.Hotbar.Stun()\
      end\
    end\
  end\
\
  -- if no auto target, then priority attacks\
  -- Aqueous\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9320) end\
  -- Earthen\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9321) end\
\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = true,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Right Side",
			["throttleTime"] = 0,
			["time"] = 229.2,
			["timeRange"] = true,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 14,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "5dc35789-7544-2a92-b268-f1d6a15e4dd7",
		},
	},
	[38] = {
	},
	[39] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown",
			["throttleTime"] = 0,
			["time"] = 243.3,
			["timeRange"] = true,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "da14317e-425d-952a-ba94-881b9ce8d529",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- 1x Earthen Aether (9321)\
\
if NilsReactionCore.Raid.Params.Adds.E8S.AreYouLeft then\
  local jobID = NilsReactionCore.jobs.GetJobID()\
  local target = Player:GetTarget()\
\
  -- if First Silence target earthen\
  if NilsReactionCore.Helpers.ReturnValueOrDefault(NilsReactionCore.Settings.jobs[jobID].Raid.Mechanics.Adds.E8S.SilenceLeftFirst, true, \"boolean\") then\
    NilsReactionCore.coreparams.enableAutoInterrupt = true\
    NilsReactionCore.Hotbar.Toggles.Interject.Execute(NilsReactionCore.params.on)\
    NilsReactionCore.Helpers.Target.SetTargetByContentID(9321)\
  else\
    NilsReactionCore.coreparams.enableAutoInterrupt = false\
    NilsReactionCore.Hotbar.Toggles.Interject.Execute(NilsReactionCore.params.off)\
  end\
\
  -- Electric Suicide Prevention, toggle off assist if health gets to low\
  if NilsReactionCore.Helpers.Target.IsContentID(9319) and Player.hp.percent <= 30 then\
    NilsReactionCore.Random.Toggles.Assist.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline, true, 2000)\
  end\
\
  -- Stun Aqueous\
  if NilsReactionCore.Helpers.Target.IsContentID(9320) and not HasBuff(target.id, 2) and target.action == 50 then\
    NilsReactionCore.Hotbar.Stun()\
  end\
\
  -- if no auto target, then priority attacks\
  -- Aqueous\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9320) end\
  -- Earthen\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9321) end\
  -- Electric\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9319) end\
\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = true,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Left Side",
			["throttleTime"] = 0,
			["time"] = 243.3,
			["timeRange"] = true,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 14,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "1074d406-75ab-c017-9c50-a7e84e8dedd8",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- 2x Electric Aether (9319)\
\
if NilsReactionCore.Raid.Params.Adds.E8S.AreYouRight then\
  local jobID = NilsReactionCore.jobs.GetJobID()\
  local target = Player:GetTarget()\
\
  -- Electric Suicide Prevention, toggle off assist if health gets to low\
  if NilsReactionCore.Helpers.Target.IsContentID(9319) and Player.hp.percent <= 30 then\
    NilsReactionCore.Random.Toggles.Assist.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline, true, 2000)\
  end\
\
  -- Stun Aqueous\
  if NilsReactionCore.Helpers.Target.IsContentID(9320) and not HasBuff(target.id, 2) and target.action == 50 then\
    NilsReactionCore.Hotbar.Stun()\
  end\
\
  -- priority attacks\
  -- Aqueous\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9320) end\
  -- Earthen\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9321) end\
  -- Electric\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9319) end\
\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = true,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Right Side",
			["throttleTime"] = 0,
			["time"] = 243.3,
			["timeRange"] = true,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 14,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "3e5c3fbe-c109-8d55-93b1-239e16f4af33",
		},
	},
	[41] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Toggles.BloodWeapon.Execute(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn on Blood Weapon",
			["throttleTime"] = 0,
			["time"] = 257.4,
			["timeRange"] = true,
			["timelineIndex"] = 41,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "f48de7eb-f58f-e4b2-839a-063ddcac6f4a",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- 1x Earthen Aether (9321)\
-- 1x Aqueous Aether (9320)\
\
if NilsReactionCore.Raid.Params.Adds.E8S.AreYouLeft then\
  local target = Player:GetTarget()\
\
  NilsReactionCore.coreparams.enableAutoInterrupt = true\
  NilsReactionCore.Hotbar.Toggles.Interject.Execute(NilsReactionCore.params.on)\
  NilsReactionCore.Helpers.Target.SetTargetByContentID(9321)\
\
  -- Electric Suicide Prevention, toggle off assist if health gets to low\
  if NilsReactionCore.Helpers.Target.IsContentID(9319) and Player.hp.percent <= 30 then\
    NilsReactionCore.Random.Toggles.Assist.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline, true, 2000)\
  end\
\
  -- Stun Aqueous\
  if NilsReactionCore.Helpers.Target.IsContentID(9320) and not HasBuff(target.id, 2) and target.action == 50 then\
    NilsReactionCore.Hotbar.Stun()\
  end\
\
  -- if no auto target, then priority attacks\
  -- Aqueous\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9320) end\
  -- Earthen\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9321) end\
  -- Electric\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9319) end\
\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = true,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Left Side",
			["throttleTime"] = 0,
			["time"] = 257.4,
			["timeRange"] = true,
			["timelineIndex"] = 41,
			["timerEndOffset"] = 14,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "0e6a78e0-6759-99a4-92b7-bce15ef0a233",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- 2x Electric Aether (9319)\
-- 1x Aqueous Aether (9320)\
\
if NilsReactionCore.Raid.Params.Adds.E8S.AreYouRight then\
  local target = Player:GetTarget()\
\
  -- Electric Suicide Prevention, toggle off assist if health gets to low\
  if NilsReactionCore.Helpers.Target.IsContentID(9319) and Player.hp.percent <= 30 then\
    NilsReactionCore.Random.Toggles.Assist.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline, true, 2000)\
  end\
\
  -- Stun Aqueous\
  if NilsReactionCore.Helpers.Target.IsContentID(9320) and not HasBuff(target.id, 2) and target.action == 50 then\
    NilsReactionCore.Hotbar.Stun()\
  end\
\
  -- priority attacks\
  -- Aqueous\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9320) end\
  -- Earthen\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9321) end\
  -- Electric\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9319) end\
\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Right Side",
			["throttleTime"] = 0,
			["time"] = 257.4,
			["timeRange"] = true,
			["timelineIndex"] = 41,
			["timerEndOffset"] = 14,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "c381c0d0-d70e-2bc3-86a5-f570825b389c",
		},
	},
	[43] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 271.5,
			["timeRange"] = true,
			["timelineIndex"] = 43,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 3,
			["used"] = false,
			["uuid"] = "f0dd8172-e872-622a-adb2-7d42b4a5adc5",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- 2x Electric Aether (9319)\
\
if NilsReactionCore.Raid.Params.Adds.E8S.AreYouLeft then\
  local target = Player:GetTarget()\
\
  NilsReactionCore.coreparams.enableAutoInterrupt = true\
  NilsReactionCore.Hotbar.Toggles.Interject.Execute(NilsReactionCore.params.on)\
  NilsReactionCore.Helpers.Target.SetTargetByContentID(9321)\
\
  -- Electric Suicide Prevention, toggle off assist if health gets to low\
  if NilsReactionCore.Helpers.Target.IsContentID(9319) and Player.hp.percent <= 30 then\
    NilsReactionCore.Random.Toggles.Assist.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline, true, 2000)\
  end\
\
  -- Stun Aqueous\
  if NilsReactionCore.Helpers.Target.IsContentID(9320) and not HasBuff(target.id, 2) and target.action == 50 then\
    NilsReactionCore.Hotbar.Stun()\
  end\
\
  -- if no auto target, then priority attacks\
  -- Aqueous\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9320) end\
  -- Earthen\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9321) end\
  -- Electric\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9319) end\
\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = true,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Left Side",
			["throttleTime"] = 0,
			["time"] = 271.5,
			["timeRange"] = true,
			["timelineIndex"] = 43,
			["timerEndOffset"] = 14,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "985140d5-5bb6-eab1-a488-cdf046f8c030",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- 1x Earthen Aether (9321)\
\
if NilsReactionCore.Raid.Params.Adds.E8S.AreYouRight then\
  local jobID = NilsReactionCore.jobs.GetJobID()\
  local target = Player:GetTarget()\
\
  NilsReactionCore.coreparams.enableAutoInterrupt = true\
  NilsReactionCore.Hotbar.Toggles.Interject.Execute(NilsReactionCore.params.on)\
\
  -- if not first silence then you are second, priority earthen then\
  if NilsReactionCore.Helpers.ReturnValueOrDefault(NilsReactionCore.Settings.jobs[jobID].Raid.Mechanics.Adds.E8S.SilenceLeftFirst, true, \"boolean\") == false then\
    NilsReactionCore.Helpers.Target.SetTargetByContentID(9321)\
  end\
\
  -- Electric Suicide Prevention, toggle off assist if health gets to low\
  if NilsReactionCore.Helpers.Target.IsContentID(9319) and Player.hp.percent <= 30 then\
    NilsReactionCore.Random.Toggles.Assist.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline, true, 2000)\
  end\
\
  -- Stun Aqueous\
  if NilsReactionCore.Helpers.Target.IsContentID(9320) and not HasBuff(target.id, 2) and target.action == 50 then\
    NilsReactionCore.Hotbar.Stun()\
  end\
\
  -- priority attacks\
  -- Aqueous\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9320) end\
  -- Earthen\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9321) end\
  -- Electric\
  if target == nil or target.hp.current == 0 then NilsReactionCore.Helpers.Target.SetTargetByContentID(9319) end\
\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = true,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Right Side",
			["throttleTime"] = 0,
			["time"] = 271.5,
			["timeRange"] = true,
			["timelineIndex"] = 43,
			["timerEndOffset"] = 14,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "2683d85a-a292-b36f-9124-fd58fe270169",
		},
	},
	[44] = {
	},
	[45] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 292.6,
			["timeRange"] = true,
			["timelineIndex"] = 45,
			["timerEndOffset"] = 7,
			["timerOffset"] = 0,
			["timerStartOffset"] = 4,
			["used"] = false,
			["uuid"] = "ee928b11-1526-7ab6-8eef-8000d696938d",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.DOTOn(NilsReactionCore.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dot On",
			["throttleTime"] = 0,
			["time"] = 292.6,
			["timeRange"] = true,
			["timelineIndex"] = 45,
			["timerEndOffset"] = 7,
			["timerOffset"] = 0,
			["timerStartOffset"] = 4,
			["used"] = false,
			["uuid"] = "c03461b4-0741-ee67-95cb-bafeb8c223a9",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.PotionOn(NilsReactionCore.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion On",
			["throttleTime"] = 0,
			["time"] = 292.6,
			["timeRange"] = true,
			["timelineIndex"] = 45,
			["timerEndOffset"] = 10,
			["timerOffset"] = 0,
			["timerStartOffset"] = 6,
			["used"] = false,
			["uuid"] = "a3669b5e-0ebf-33cc-a63a-fcb8346df11c",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- I don't want to unmend right away\
if NilsReactionCore.Hotbar.Toggles.Range.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Range Off",
			["throttleTime"] = 0,
			["time"] = 292.6,
			["timeRange"] = true,
			["timelineIndex"] = 45,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "7359e4bb-ecd0-ddad-8096-5e19979636e3",
		},
	},
	[46] = {
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
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
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
					["targetSubType"] = "Nearest",
					["targetType"] = "Enemy",
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
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
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
					["filterTargetSubtype"] = "Nearest",
					["filterTargetType"] = "Self",
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
					["partyTargetType"] = "All",
					["rangeCheckSourceSubType"] = "Nearest",
					["rangeCheckSourceType"] = "Self",
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
			["time"] = 350.5,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 3,
			["timerOffset"] = 1.375,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "796aa17c-956b-d69f-b373-6d645c78874b",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.Plunge() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Burn Plunge",
			["throttleTime"] = 0,
			["time"] = 350.5,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "23e0df99-3a33-393c-93cb-0704e71cc421",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "if NilsReactionCore.Toggles.Darkknight.SaltedEarth(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn on Salted Earth",
			["throttleTime"] = 0,
			["time"] = 350.5,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "0b34b947-3940-f504-b1e3-676e08763ab8",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "if NilsReactionCore.Toggles.Darkknight.LivingShadow(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn on LivingShadow",
			["throttleTime"] = 0,
			["time"] = 350.5,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "11a21282-d8d6-5afa-9448-be4b886c14b5",
		},
		[5] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "if NilsReactionCore.Toggles.Darkknight.Delirium(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn on Delirium",
			["throttleTime"] = 0,
			["time"] = 350.5,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "49d5094b-b551-0912-897d-9f54a03806f0",
		},
		[6] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- might be temperary for testing\
if table.valid(SallyDRK) and SallyDRK.openerAvailable() then\
  data.NilsPlaygroundOpenerIndex = SallyDRK.openerInfo.index\
  SallyDRK.openerInfo.index = 2\
\
  NilsReactionCore.Hotbar.Toggles.Opener.Execute(NilsReactionCore.params.on)\
end\
\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Reopener",
			["throttleTime"] = 0,
			["time"] = 350.5,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "037c2bc2-0af2-8c6d-8e82-541254012517",
		},
	},
	[48] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.DarkMissionary() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark Missionary",
			["throttleTime"] = 0,
			["time"] = 368.6,
			["timeRange"] = true,
			["timelineIndex"] = 48,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2.5,
			["used"] = false,
			["uuid"] = "95937520-5c58-f2ef-905b-681df992bd51",
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
			["time"] = 368.6,
			["timeRange"] = true,
			["timelineIndex"] = 48,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "58e4127b-fe43-e5b9-a24b-ceef28f12d2b",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "-- I don't want to unmend right away\
if NilsReactionCore.Hotbar.Toggles.Range.Execute(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Range On",
			["throttleTime"] = 0,
			["time"] = 368.6,
			["timeRange"] = true,
			["timelineIndex"] = 48,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "3c10617d-783d-fba1-a872-fe864fa83612",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Darkknight.SaltedEarth(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline)\
NilsReactionCore.Toggles.Darkknight.Delirium(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline)\
NilsReactionCore.Hotbar.Toggles.BloodWeapon.Execute(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline)\
NilsReactionCore.Toggles.Darkknight.LivingShadow(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline)\
SallyDRK.openerInfo.index = data.NilsPlaygroundOpenerIndex\
\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn All Back on, reset opener",
			["throttleTime"] = 0,
			["time"] = 368.6,
			["timeRange"] = true,
			["timelineIndex"] = 48,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "fa8e6e51-5bcc-d6b6-8a7d-499df3497a3e",
		},
	},
	[49] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.Cooldown.HeavyOrRampart() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown Heavy",
			["throttleTime"] = 0,
			["time"] = 378,
			["timeRange"] = true,
			["timelineIndex"] = 49,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "f1c27dfd-dee7-e764-a3e8-a39cb95eebfc",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.DarkMind() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark Mind",
			["throttleTime"] = 0,
			["time"] = 378,
			["timeRange"] = true,
			["timelineIndex"] = 49,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "b4593adb-f1e5-fc6a-98c4-64971510b349",
		},
	},
	[52] = {
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
			["time"] = 403.2,
			["timeRange"] = true,
			["timelineIndex"] = 52,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "c5bd10c3-b065-8772-997d-adaadc16461c",
		},
	},
	[53] = {
	},
	[55] = {
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
			["time"] = 413.2,
			["timeRange"] = true,
			["timelineIndex"] = 55,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "fdcafa2c-425a-abba-ad96-cb4bca23368f",
		},
	},
	[56] = {
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
			["time"] = 413.2,
			["timeRange"] = true,
			["timelineIndex"] = 56,
			["timerEndOffset"] = 7,
			["timerOffset"] = 0,
			["timerStartOffset"] = 6,
			["used"] = false,
			["uuid"] = "be9d62f4-f188-585c-9a0e-9be290c7963f",
		},
	},
	[58] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
for id, ent in pairs(EntityList(\"\")) do\
  if ent.contentid == 9323 and not drawnOrbs[id] then\
		  if data.DrawDragonHeads == true then\
      drawnOrbs[id] = true\
      Argus.addTimedCircleFilled(20000, ent.pos.x, ent.pos.y, ent.pos.z, 10, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
				end				\
  end\
end\
\
self.used = table.size(drawnOrbs) >= 1",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "draw head aoe",
			["throttleTime"] = 0,
			["time"] = 427.9,
			["timeRange"] = true,
			["timelineIndex"] = 58,
			["timerEndOffset"] = 20,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "7696313d-2b39-cfb4-8d99-f1c9696e8cd5",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local buffDir = NilsReactionCore.Buffs.Duration(2258, Player)\
\
if buffDir > 0 and buffDir < 10 then\
  NilsReactionCore.Toggles.Darkknight.Plunge(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline,NilsReactionCore.params.on, 4500)\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Plunge Off by buff",
			["throttleTime"] = 0,
			["time"] = 427.9,
			["timeRange"] = true,
			["timelineIndex"] = 58,
			["timerEndOffset"] = 43,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "797c7f5e-d5c1-9b96-9bc9-af48c28103d9",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local buffDir = NilsReactionCore.Buffs.Duration(2258, Player)\
\
if buffDir > 0 and buffDir < 10 then\
  if NilsReactionCore.Hotbar.Sprint() == true then self.used = true end\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Sprint by buff",
			["throttleTime"] = 0,
			["time"] = 427.9,
			["timeRange"] = true,
			["timelineIndex"] = 58,
			["timerEndOffset"] = 43,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "d85be735-d311-dfb2-9a03-90b0a8c551d6",
		},
	},
	[60] = {
	},
	[63] = {
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
			["time"] = 473.5,
			["timeRange"] = true,
			["timelineIndex"] = 63,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "37ab05b5-424f-9bb6-939b-27c64632e7a7",
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
			["execute"] = "if NilsReactionCore.Logic.Toggles.GapClosersOn(NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Gap closer On",
			["throttleTime"] = 0,
			["time"] = 483.5,
			["timeRange"] = true,
			["timelineIndex"] = 65,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0.5,
			["used"] = false,
			["uuid"] = "ddae0d11-a64d-7ae8-8929-163cf6b0aae0",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown if MT",
			["throttleTime"] = 0,
			["time"] = 483.5,
			["timeRange"] = true,
			["timelineIndex"] = 65,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "42d12446-6042-4a3f-a3d1-a40e67a1fb08",
		},
		[3] = {
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
			["time"] = 483.5,
			["timeRange"] = true,
			["timelineIndex"] = 65,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "9cedd350-ec4d-7397-bfaa-57b66db08227",
		},
	},
	[66] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.Darkknight.TheBlackestNight() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "TBN if MT",
			["throttleTime"] = 0,
			["time"] = 491.6,
			["timeRange"] = true,
			["timelineIndex"] = 66,
			["timerEndOffset"] = -3,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "9bce52d1-318c-7b41-aa1d-adb96aea0336",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  NilsReactionCore.Alert.Send(\"use shirk in 3\")\
else\
  NilsReactionCore.Alert.Send(\"use provoke in 3\")\
end\
\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Tank Swap TTS",
			["throttleTime"] = 0,
			["time"] = 491.6,
			["timeRange"] = true,
			["timelineIndex"] = 66,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -5,
			["used"] = false,
			["uuid"] = "a033bfbe-c8ee-0ca0-bb77-0d44add8c787",
		},
	},
	[67] = {
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
			["time"] = 504.8,
			["timeRange"] = true,
			["timelineIndex"] = 67,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "07bf25cd-9c3e-d2ad-92c3-59dcdf84d174",
		},
	},
	[68] = {
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
			["time"] = 507.3,
			["timeRange"] = true,
			["timelineIndex"] = 68,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0.5,
			["used"] = false,
			["uuid"] = "a16e913d-9162-4d34-a7a6-3981f5fc1372",
		},
	},
	[70] = {
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
			["time"] = 523.6,
			["timeRange"] = true,
			["timelineIndex"] = 70,
			["timerEndOffset"] = 6,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "f04b906f-f25f-a4d7-8afb-38cb9b0b4875",
		},
	},
	[71] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.Cooldown.RampartOrHeavy() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Cooldown",
			["throttleTime"] = 0,
			["time"] = 530,
			["timeRange"] = true,
			["timelineIndex"] = 71,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "9ab36894-b700-aa1e-b0b6-673800234f4d",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.DarkMissionary() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark Missionary",
			["throttleTime"] = 0,
			["time"] = 530,
			["timeRange"] = true,
			["timelineIndex"] = 71,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "0e062fb5-8545-9ae8-a334-e5fdf565da09",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.DarkMind() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark Mind",
			["throttleTime"] = 0,
			["time"] = 530,
			["timeRange"] = true,
			["timelineIndex"] = 71,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "17b6c5a2-2601-2394-aad6-b6894404b5ce",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.TheBlackestNight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "TBN",
			["throttleTime"] = 0,
			["time"] = 530,
			["timeRange"] = true,
			["timelineIndex"] = 71,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "11e45d26-8bd2-f32c-bbe5-4bfb62a24118",
		},
	},
	[72] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4,
					["actionID"] = -1,
					["actionLua"] = "if FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true",
					["allowInterrupt"] = false,
					["atomicPriority"] = false,
					["castAtMouse"] = false,
					["castPosX"] = 0,
					["castPosY"] = 0,
					["castPosZ"] = 0,
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
					["conditions"] = {
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
					["setTarget"] = false,
					["showPositionPreview"] = false,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = "Nearest",
					["targetType"] = "Self",
					["untarget"] = false,
					["useForWeaving"] = false,
					["usePot"] = false,
					["used"] = false,
					["variableTogglesType"] = 1,
				},
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "",
			["executeType"] = 1,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "disable assist",
			["throttleTime"] = 0,
			["time"] = 535.1,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 0,
			["timerOffset"] = -2.2000000476837,
			["timerStartOffset"] = -2.4000000953674,
			["used"] = false,
			["uuid"] = "da32093f-5cbb-ccff-af8a-6898b5156bb3",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Knockback() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = true,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Knockback",
			["throttleTime"] = 0,
			["time"] = 535.1,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = -0.60000002384186,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1.6000000238419,
			["used"] = false,
			["uuid"] = "5cd71837-a934-ee9a-a011-b5cf0f098b25",
		},
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4,
					["actionID"] = -1,
					["actionLua"] = "if not FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true",
					["allowInterrupt"] = false,
					["atomicPriority"] = false,
					["castAtMouse"] = false,
					["castPosX"] = 0,
					["castPosY"] = 0,
					["castPosZ"] = 0,
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
					["conditions"] = {
						[1] = 5,
						[2] = 1,
					},
					["endIfUsed"] = true,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["isAreaTarget"] = false,
					["luaNeedsWeaveWindow"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = false,
					["showPositionPreview"] = false,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = "Nearest",
					["targetType"] = "Self",
					["untarget"] = false,
					["useForWeaving"] = false,
					["usePot"] = false,
					["used"] = false,
					["variableTogglesType"] = 1,
				},
				[2] = {
					["aType"] = 4,
					["actionID"] = -1,
					["actionLua"] = "if not FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true",
					["allowInterrupt"] = false,
					["atomicPriority"] = false,
					["castAtMouse"] = false,
					["castPosX"] = 0,
					["castPosY"] = 0,
					["castPosZ"] = 0,
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
					["conditions"] = {
						[1] = 2,
					},
					["endIfUsed"] = true,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["isAreaTarget"] = false,
					["luaNeedsWeaveWindow"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = false,
					["showPositionPreview"] = false,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = "Nearest",
					["targetType"] = "Self",
					["untarget"] = false,
					["useForWeaving"] = false,
					["usePot"] = false,
					["used"] = false,
					["variableTogglesType"] = 1,
				},
				[3] = {
					["aType"] = 4,
					["actionID"] = -1,
					["actionLua"] = "if not FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true",
					["allowInterrupt"] = false,
					["atomicPriority"] = false,
					["castAtMouse"] = false,
					["castPosX"] = 0,
					["castPosY"] = 0,
					["castPosZ"] = 0,
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
					["conditions"] = {
						[1] = 3,
					},
					["endIfUsed"] = true,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["isAreaTarget"] = false,
					["luaNeedsWeaveWindow"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = false,
					["showPositionPreview"] = false,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = "Nearest",
					["targetType"] = "Self",
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
					["buffDuration"] = 3,
					["buffID"] = 1209,
					["buffIDList"] = multiRefObjects[1],
					["category"] = 2,
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
					["comparator"] = 2,
					["conditionLua"] = "",
					["conditionType"] = 5,
					["conditions"] = multiRefObjects[2],
					["contentid"] = -1,
					["dequeueIfLuaFalse"] = false,
					["enmityValue"] = 0,
					["filterTargetSubtype"] = "Nearest",
					["filterTargetType"] = "Self",
					["gaugeIndex"] = 1,
					["gaugeValue"] = 0,
					["hpType"] = 1,
					["hpValue"] = 0,
					["inCombatType"] = 1,
					["inRangeValue"] = 0,
					["lastSkillID"] = 7548,
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
					["partyTargetType"] = "All",
					["rangeCheckSourceSubType"] = "Nearest",
					["rangeCheckSourceType"] = "Self",
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
					["category"] = 2,
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
					["comparator"] = 2,
					["conditionLua"] = "",
					["conditionType"] = 2,
					["conditions"] = multiRefObjects[2],
					["contentid"] = -1,
					["dequeueIfLuaFalse"] = false,
					["enmityValue"] = 0,
					["filterTargetSubtype"] = "Nearest",
					["filterTargetType"] = "Self",
					["gaugeIndex"] = 1,
					["gaugeValue"] = 0,
					["hpType"] = 2,
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
					["partyTargetType"] = "All",
					["rangeCheckSourceSubType"] = "Nearest",
					["rangeCheckSourceType"] = "Self",
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
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
					["comparator"] = 1,
					["conditionLua"] = "",
					["conditionType"] = 5,
					["conditions"] = multiRefObjects[2],
					["contentid"] = -1,
					["dequeueIfLuaFalse"] = false,
					["enmityValue"] = 0,
					["filterTargetSubtype"] = "Nearest",
					["filterTargetType"] = "Self",
					["gaugeIndex"] = 1,
					["gaugeValue"] = 0,
					["hpType"] = 1,
					["hpValue"] = 0,
					["inCombatType"] = 1,
					["inRangeValue"] = 0,
					["lastSkillID"] = 7559,
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
					["partyTargetType"] = "All",
					["rangeCheckSourceSubType"] = "Nearest",
					["rangeCheckSourceType"] = "Self",
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
			["name"] = "reenable assist",
			["throttleTime"] = 0,
			["time"] = 535.1,
			["timeRange"] = true,
			["timelineIndex"] = 72,
			["timerEndOffset"] = 20,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1.3999999761581,
			["used"] = false,
			["uuid"] = "d2bedf7e-4167-9511-a1e6-b7124e469adb",
		},
	},
	[73] = {
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
			["time"] = 540.1,
			["timeRange"] = true,
			["timelineIndex"] = 73,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "7ea7a448-a780-26f3-84e2-f4537998a71c",
		},
	},
	[74] = {
	},
	[75] = {
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
			["time"] = 566.6,
			["timeRange"] = true,
			["timelineIndex"] = 75,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "f8948157-9676-033b-812a-044807f76535",
		},
	},
	[77] = {
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
			["time"] = 571.7,
			["timeRange"] = true,
			["timelineIndex"] = 77,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "f3907c13-5820-a317-8e92-eec606dfa51b",
		},
	},
	[81] = {
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
			["time"] = 589.8,
			["timeRange"] = true,
			["timelineIndex"] = 81,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "6f0bb69f-4552-1f67-8b10-2560bae94d37",
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
			["time"] = 608.1,
			["timeRange"] = true,
			["timelineIndex"] = 83,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "ca3d5502-e456-77f5-b920-2eab9e87b5d7",
		},
	},
	[84] = {
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
			["time"] = 610.6,
			["timeRange"] = true,
			["timelineIndex"] = 84,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "1ec09373-febf-3e0d-ad82-bdcecb20b533",
		},
	},
	[85] = {
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
			["time"] = 618.2,
			["timeRange"] = true,
			["timelineIndex"] = 85,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "129ea317-0584-e8c5-acda-514321b395c3",
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
			["time"] = 618.2,
			["timeRange"] = true,
			["timelineIndex"] = 85,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "3b8f49aa-d781-cc18-a1eb-a82c954e4c23",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.DarkMissionary() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark Missionary",
			["throttleTime"] = 0,
			["time"] = 618.2,
			["timeRange"] = true,
			["timelineIndex"] = 85,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "fdd9270f-2430-4db3-a15f-e3347d21a8a1",
		},
	},
	[86] = {
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
			["time"] = 620.4,
			["timeRange"] = true,
			["timelineIndex"] = 86,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "2dccb702-32c4-07c4-a19f-f14898dcc01f",
		},
	},
	[88] = {
	},
	[90] = {
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
			["time"] = 655.4,
			["timeRange"] = true,
			["timelineIndex"] = 90,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "28a066a7-215e-275d-9f27-7fd6a960ff93",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.DarkMind() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark Mind",
			["throttleTime"] = 0,
			["time"] = 655.4,
			["timeRange"] = true,
			["timelineIndex"] = 90,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3.7000000476837,
			["used"] = false,
			["uuid"] = "dba138a9-8609-753a-a00c-2dd9150139f3",
		},
	},
	[91] = {
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
			["time"] = 663.6,
			["timeRange"] = true,
			["timelineIndex"] = 91,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "b2026d28-bd8b-6dc8-b443-bfe20aed0968",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Actions.Rampart.Execute() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Rampart",
			["throttleTime"] = 0,
			["time"] = 663.6,
			["timeRange"] = true,
			["timelineIndex"] = 91,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -2,
			["used"] = false,
			["uuid"] = "593e9f44-740c-28f5-bc3c-c45b3b883412",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Actions.ShadowWall.Execute() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Shadow wall",
			["throttleTime"] = 0,
			["time"] = 663.6,
			["timeRange"] = true,
			["timelineIndex"] = 91,
			["timerEndOffset"] = 0.5,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.69999998807907,
			["used"] = false,
			["uuid"] = "d83ac8eb-1110-ab49-a267-249b8ea8dd18",
		},
	},
	[93] = {
	},
	[94] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Sprint() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Sprint",
			["throttleTime"] = 0,
			["time"] = 672.7,
			["timeRange"] = true,
			["timelineIndex"] = 94,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "7cddba66-4042-c455-8e12-573f11c87583",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.TheBlackestNight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "TBN",
			["throttleTime"] = 0,
			["time"] = 672.7,
			["timeRange"] = true,
			["timelineIndex"] = 94,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "cc03aeab-5a6f-725e-bb79-9a5a33c53b2f",
		},
	},
	[97] = {
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
			["time"] = 676.8,
			["timeRange"] = true,
			["timelineIndex"] = 97,
			["timerEndOffset"] = 200,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "3d5d1ad7-da46-aed4-849e-2b2cf086b4ce",
		},
	},
	[100] = {
	},
	[102] = {
	},
	[103] = {
	},
	[104] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Toggles.BloodWeapon.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn off Blood Weapon",
			["throttleTime"] = 0,
			["time"] = 709.9,
			["timeRange"] = true,
			["timelineIndex"] = 104,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "a0e34b54-2162-abdd-917e-ed4ba8c4bc41",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Toggles.Delirium.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn off Delirium",
			["throttleTime"] = 0,
			["time"] = 709.9,
			["timeRange"] = true,
			["timelineIndex"] = 104,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "0d908b1a-561a-5666-945a-b439c2f98a4b",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.PotionOff(NilsReactionCore.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion Off",
			["throttleTime"] = 0,
			["time"] = 709.9,
			["timeRange"] = true,
			["timelineIndex"] = 104,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "4f85a120-93a0-7f6c-a1cb-1473cbd70e28",
		},
	},
	[107] = {
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
			["time"] = 722.9,
			["timeRange"] = true,
			["timelineIndex"] = 107,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "82b34ff1-8d2d-cfdc-a092-eca0f5db175d",
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
for id, ent in pairs(EntityList(\"\")) do\
  if ent.contentid == 9323 and not drawnOrbs[id] then\
		  if data.DrawDragonHeads == true then\
      drawnOrbs[id] = true\
      Argus.addTimedCircleFilled(20000, ent.pos.x, ent.pos.y, ent.pos.z, 10, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
				end				\
  end\
end\
\
self.used = table.size(drawnOrbs) >= 1",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "draw head aoe",
			["throttleTime"] = 0,
			["time"] = 738.3,
			["timeRange"] = true,
			["timelineIndex"] = 109,
			["timerEndOffset"] = 20,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "41a259f1-e0d7-7256-b385-947af7b2464e",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Toggles.BloodWeapon.Execute(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn on Blood Weapon",
			["throttleTime"] = 0,
			["time"] = 738.3,
			["timeRange"] = true,
			["timelineIndex"] = 109,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "9ae7ff37-8e22-eb18-bcad-99f6e3401b19",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Toggles.Delirium.Execute(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn on Delirium",
			["throttleTime"] = 0,
			["time"] = 738.3,
			["timeRange"] = true,
			["timelineIndex"] = 109,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "2d9669ff-c053-a2d3-9903-ac74ab07506a",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Logic.Toggles.PotionOn(NilsReactionCore.params.isTimeline) == true then\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion On",
			["throttleTime"] = 0,
			["time"] = 738.3,
			["timeRange"] = true,
			["timelineIndex"] = 109,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "3307b3af-9c50-45eb-a110-6c325b750913",
		},
	},
	[110] = {
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
			["time"] = 745.5,
			["timeRange"] = true,
			["timelineIndex"] = 110,
			["timerEndOffset"] = 9,
			["timerOffset"] = 0,
			["timerStartOffset"] = 6,
			["used"] = false,
			["uuid"] = "efdf0305-1684-28b2-92c4-cc2b9cd8cd97",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.Cooldown.Invulnerability() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Invuln",
			["throttleTime"] = 0,
			["time"] = 745.5,
			["timeRange"] = true,
			["timelineIndex"] = 110,
			["timerEndOffset"] = 5.5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 4.5,
			["used"] = false,
			["uuid"] = "23fdac5d-c2ae-2c4e-ab37-64a3da7dfa91",
		},
	},
	[111] = {
	},
	[112] = {
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
			["time"] = 764.3,
			["timeRange"] = true,
			["timelineIndex"] = 112,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "eba590c6-aba1-e336-a211-6e5b7c5f2808",
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
			["time"] = 764.3,
			["timeRange"] = true,
			["timelineIndex"] = 112,
			["timerEndOffset"] = 9,
			["timerOffset"] = 0,
			["timerStartOffset"] = 6,
			["used"] = false,
			["uuid"] = "9a91ffea-89e1-9f32-a771-2e8b5a038683",
		},
	},
	[113] = {
	},
	[114] = {
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
			["time"] = 784.3,
			["timeRange"] = true,
			["timelineIndex"] = 114,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 1,
			["used"] = false,
			["uuid"] = "0a4a1615-2c55-1388-ae98-27cc4b77bbbe",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Darkknight.DarkMissionary() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Dark Missionary",
			["throttleTime"] = 0,
			["time"] = 784.3,
			["timeRange"] = true,
			["timelineIndex"] = 114,
			["timerEndOffset"] = 3,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "3b4b9323-d1f7-6d5d-87d1-c8a88d117a20",
		},
	},
	[115] = {
	},
	["mapID"] = 909,
	["version"] = 1,
}
return obj1
