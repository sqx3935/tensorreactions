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
			["uuid"] = "b8e0c83e-29dc-1b9a-92c6-32640b4c75bf",
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
			["uuid"] = "090ed268-41f9-b4f7-a733-f96cb1d7b024",
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
			["uuid"] = "8757c063-9f90-739f-92e5-4e300016a833",
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
			["uuid"] = "f0ec348b-8570-e114-b2ed-949abb56ad13",
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
			["uuid"] = "516b0bb7-d877-eb1d-8f10-ca36d671243b",
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
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfLight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfLight",
			["throttleTime"] = 0,
			["time"] = 63.7,
			["timeRange"] = true,
			["timelineIndex"] = 8,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 3,
			["used"] = false,
			["uuid"] = "8f4955e8-74b9-ef29-8cda-5dfc11a98639",
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
			["uuid"] = "57612fa2-ba32-eb10-be65-715adc47ca57",
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
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfStone() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone",
			["throttleTime"] = 0,
			["time"] = 78.9,
			["timeRange"] = true,
			["timelineIndex"] = 12,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "ea0884fc-3a45-e4b2-8951-d2fa05949686",
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
			["uuid"] = "c19eebbd-24e3-775c-9c0a-a6fe0699e444",
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
			["uuid"] = "038aff2b-c25e-2bd6-9280-ea3893999bb9",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Tanks.AmIMainTank() then\
  if NilsReactionCore.Hotbar.GunBreaker.HeartOfStone() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone if MT",
			["throttleTime"] = 0,
			["time"] = 92.9,
			["timeRange"] = true,
			["timelineIndex"] = 19,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2.5,
			["used"] = false,
			["uuid"] = "048f5722-0d67-b13d-ace4-ec7e852cdedf",
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
			["uuid"] = "3bbeaefe-b9fb-b003-9ad6-969ada443acf",
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
			["uuid"] = "b5766285-3628-9ab4-9105-298e2b69ef54",
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
			["uuid"] = "8230dd51-e6a1-7747-8a52-4fa9389d4c83",
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
			["uuid"] = "e2af46f9-d448-1192-a75c-2048e5385a13",
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
			["uuid"] = "a4a2d612-4e34-729e-8443-fae9ef2ae328",
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
			["uuid"] = "6ffa4b44-f40c-bcb6-bd20-7738ce62bce4",
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
			["uuid"] = "69228153-67f3-6a5f-9e2b-5f6688f706f0",
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
			["uuid"] = "108cca81-cf82-2a98-b161-b1c7aef18f38",
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
			["uuid"] = "51b59592-9424-4519-b766-9f89e32714b1",
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
			["uuid"] = "80891fa3-cd92-bceb-b38d-3b0ca23002fa",
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
			["uuid"] = "3fd3b5c8-8633-cdee-9dbe-a7964cd69ebb",
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
			["uuid"] = "d9abef4c-eac5-a2ab-b22c-8ecd354b2b93",
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
			["uuid"] = "fc1ddbbc-af0b-1e3b-9dba-547386d930c2",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfStone() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone",
			["throttleTime"] = 0,
			["time"] = 190.2,
			["timeRange"] = true,
			["timelineIndex"] = 32,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "94b7f071-b041-4623-adde-93f2c563e1f3",
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
			["uuid"] = "97040094-ef5a-1a71-994d-0471b0d8891b",
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
			["uuid"] = "918e9b38-1fbe-ce2e-afee-dbb53c56dede",
		},
		[3] = {
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
			["time"] = 193.3,
			["timeRange"] = true,
			["timelineIndex"] = 33,
			["timerEndOffset"] = 8,
			["timerOffset"] = 0,
			["timerStartOffset"] = 5,
			["used"] = false,
			["uuid"] = "72c37068-d62c-86b1-a452-c5e6d2da6f75",
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
			["execute"] = "if NilsReactionCore.Hotbar.Toggles.NoMercy.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn off NoMercy",
			["throttleTime"] = 0,
			["time"] = 213,
			["timeRange"] = true,
			["timelineIndex"] = 36,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "a6af4eb7-7b60-7483-be35-b009afbb369d",
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
			["uuid"] = "ed33c9d1-0469-60b8-8b9b-fcd0d5bd2008",
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
			["uuid"] = "45992dc9-f725-8c55-9217-431593b36f6e",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfLight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfLight",
			["throttleTime"] = 0,
			["time"] = 229.2,
			["timeRange"] = true,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 3,
			["used"] = false,
			["uuid"] = "c4bdbaff-a981-0b77-9f2b-5149a2b8c9b3",
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
			["uuid"] = "2d248daa-054c-1be4-b1c6-7ee2b021831e",
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
			["uuid"] = "56182977-cbb3-d68c-8a08-be776f1e8d84",
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
			["uuid"] = "b59146c1-12b4-b3b4-970f-f816a158c6cc",
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
			["uuid"] = "b015e96c-cdec-65d6-8ecc-3e58e2b084f2",
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
			["uuid"] = "754b341d-b60f-bae8-bbd4-9d143e6a36ae",
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
			["uuid"] = "a6ef31dd-d499-3339-a41b-26d54db5c09d",
		},
	},
	[41] = {
		[1] = {
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
			["time"] = 257.4,
			["timeRange"] = true,
			["timelineIndex"] = 41,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "6049fe31-619a-e873-850d-7220adea2b24",
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
			["uuid"] = "9f67b8c0-25b9-ffeb-a849-995558a4630d",
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
			["uuid"] = "b7a31346-f881-3fb1-8cb5-a4b747922169",
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
			["uuid"] = "4d0f1358-ee5a-05bc-9ac7-ecb61a0ab092",
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
			["uuid"] = "ecc5283f-c286-5988-ad7d-e862e5799772",
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
			["uuid"] = "f4470fd1-6181-834e-999d-bb892177e992",
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
			["uuid"] = "d80000c9-602c-32e7-8347-b28ecbd2f80f",
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
			["uuid"] = "b1b3c04e-7634-87e0-a5d1-db70068290c2",
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
			["uuid"] = "096ff515-79bf-985d-8551-ad86b91afdac",
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
			["uuid"] = "bb2c3239-feab-0b63-9fbc-3df2a7871b47",
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
					["conditions"] = multiRefObjects[1],
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
			["uuid"] = "7f98b23c-2ca5-902a-be90-0d1dcbbc6acb",
		},
		[2] = {
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
			["time"] = 350.5,
			["timeRange"] = true,
			["timelineIndex"] = 46,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "7b684c9b-c594-3bfd-ac1c-35bb744d3d72",
		},
	},
	[48] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfLight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfLight",
			["throttleTime"] = 0,
			["time"] = 368.6,
			["timeRange"] = true,
			["timelineIndex"] = 48,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 3,
			["used"] = false,
			["uuid"] = "c7935f14-e00a-5010-9d87-14b996a90802",
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
			["uuid"] = "652ef816-f642-2291-b16c-4cc6f33ddbd3",
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
			["uuid"] = "468e3580-5c5e-6277-8335-3d3f0ea8f1b6",
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
			["uuid"] = "451cf584-3b24-8cc7-9512-7e5c544bd91d",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfStone() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone",
			["throttleTime"] = 0,
			["time"] = 378,
			["timeRange"] = true,
			["timelineIndex"] = 49,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "bbe318cf-1cbc-a723-9346-4e81e1f06141",
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
			["uuid"] = "dda1239e-7fc3-c04f-a78e-218129236236",
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
			["uuid"] = "604c24da-d873-f050-9b2d-b0b4b8a339b1",
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
			["uuid"] = "43458a09-0995-4519-8adb-247c1149191f",
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
			["uuid"] = "a01e75a6-9cd2-584a-af8f-b32e65a8685f",
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
  NilsReactionCore.Hotbar.Toggles.RoughDivide.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isNotTimeline,NilsReactionCore.params.on, 4500)\
  self.used = true\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "RoughDivide Off by buff",
			["throttleTime"] = 0,
			["time"] = 427.9,
			["timeRange"] = true,
			["timelineIndex"] = 58,
			["timerEndOffset"] = 43,
			["timerOffset"] = 0,
			["timerStartOffset"] = -1,
			["used"] = false,
			["uuid"] = "a52e7fc2-ffcb-0e46-9b64-1ea36e9fd944",
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
			["uuid"] = "4549713c-8359-d82c-b4b1-639107046a3f",
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
			["uuid"] = "798cdd88-0f58-395b-918d-e2df894f358f",
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
			["uuid"] = "274d1b58-5fb9-49f2-a497-856af01c8bf1",
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
			["uuid"] = "f74682dc-d01a-b257-8c86-9cb77f5548cd",
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
			["uuid"] = "89c4cc30-181c-ef53-a29a-1351ec79b0bb",
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
  if NilsReactionCore.Hotbar.GunBreaker.HeartOfStone() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone if MT",
			["throttleTime"] = 0,
			["time"] = 491.6,
			["timeRange"] = true,
			["timelineIndex"] = 66,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2.5,
			["used"] = false,
			["uuid"] = "d7642dfb-d7e1-6378-8540-a47224e11e04",
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
			["uuid"] = "89359295-0f86-4058-a2f3-4642bb4ae160",
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
			["uuid"] = "433d75af-7113-924b-9acc-b0f42190563f",
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
			["uuid"] = "4aa925a0-11d9-2dd2-9175-55835b7c141d",
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
			["uuid"] = "b560bfbb-85d6-8652-bf88-89eb5a2b6fa2",
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
			["uuid"] = "c0afda84-5671-efb0-81b8-089640fc0822",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfLight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfLight",
			["throttleTime"] = 0,
			["time"] = 530,
			["timeRange"] = true,
			["timelineIndex"] = 71,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 3,
			["used"] = false,
			["uuid"] = "aad26da7-7670-b350-81a6-9ca216d36daa",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfStone() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone",
			["throttleTime"] = 0,
			["time"] = 530,
			["timeRange"] = true,
			["timelineIndex"] = 71,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "b933ebbf-fc96-ba79-aa27-455eb3ef579f",
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
			["uuid"] = "99ad7c50-f407-9693-badf-10b2d96d2aa5",
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
			["uuid"] = "17da0623-b232-8533-81e2-361d02206e92",
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
					["buffIDList"] = multiRefObjects[2],
					["category"] = 2,
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
					["comparator"] = 2,
					["conditionLua"] = "",
					["conditionType"] = 5,
					["conditions"] = multiRefObjects[1],
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
					["buffIDList"] = multiRefObjects[2],
					["category"] = 2,
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
					["comparator"] = 2,
					["conditionLua"] = "",
					["conditionType"] = 2,
					["conditions"] = multiRefObjects[1],
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
					["buffIDList"] = multiRefObjects[2],
					["category"] = 2,
					["clusterMinTarget"] = 1,
					["clusterRadius"] = 8,
					["clusterRange"] = 30,
					["comparator"] = 1,
					["conditionLua"] = "",
					["conditionType"] = 5,
					["conditions"] = multiRefObjects[1],
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
			["uuid"] = "40dd3693-e9b0-f386-a02d-71226d22ba51",
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
			["uuid"] = "d4474605-948a-9424-a7c3-3f12a0376fd9",
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
			["uuid"] = "15a0231c-b155-d14e-9895-80b75c3c989d",
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
			["uuid"] = "7769ba8d-4046-430b-bdee-3adbfdd0eddf",
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
			["uuid"] = "bf72aafe-5578-4513-8cd0-e33244b940cb",
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
			["uuid"] = "f5ad5ff9-e20c-3263-94e7-3e52ad9f0a74",
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
			["uuid"] = "6ea6b052-c4cc-69b8-9274-f705fc3ccd54",
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
			["uuid"] = "8801c6d4-0396-2267-977b-7857b3da6567",
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
			["uuid"] = "0a09044e-3b53-314d-b8be-d4cb4e0f8941",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfLight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfLight",
			["throttleTime"] = 0,
			["time"] = 618.2,
			["timeRange"] = true,
			["timelineIndex"] = 85,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 3,
			["used"] = false,
			["uuid"] = "6eb1a5e4-9332-b027-805f-54235dbdb71c",
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
			["uuid"] = "920c2f4c-7b9a-a336-b640-f4c5268a1241",
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
			["uuid"] = "231cb844-938f-27ea-9c92-a20d785ed08d",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfStone() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone",
			["throttleTime"] = 0,
			["time"] = 655.4,
			["timeRange"] = true,
			["timelineIndex"] = 90,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "ce21a933-b871-eb9b-840a-06ebcf141ce2",
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
			["uuid"] = "d5072769-deca-bbef-a045-6e4e5eca1bf9",
		},
		[2] = {
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
			["name"] = "Cooldown",
			["throttleTime"] = 0,
			["time"] = 663.6,
			["timeRange"] = true,
			["timelineIndex"] = 91,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "48e2288d-e0e6-4c06-8ac3-a1d1a8ebec4e",
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
			["uuid"] = "456cc091-b705-0698-99d8-2ddb2706c782",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfStone() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfStone",
			["throttleTime"] = 0,
			["time"] = 672.7,
			["timeRange"] = true,
			["timelineIndex"] = 94,
			["timerEndOffset"] = 1,
			["timerOffset"] = 0,
			["timerStartOffset"] = -0.5,
			["used"] = false,
			["uuid"] = "1b584f01-0c11-c3e2-8b05-a393f4701664",
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
			["uuid"] = "708bf230-2657-453c-9bb2-ad0b5eca2229",
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
			["execute"] = "if NilsReactionCore.Hotbar.Toggles.NoMercy.Execute(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline) then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Turn off NoMercy",
			["throttleTime"] = 0,
			["time"] = 709.9,
			["timeRange"] = true,
			["timelineIndex"] = 104,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "43fd2a61-c6e8-3b0a-b709-b7dc9ff450e7",
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
			["time"] = 709.9,
			["timeRange"] = true,
			["timelineIndex"] = 104,
			["timerEndOffset"] = 2,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "3d36fd64-a5c0-00a4-8c6e-ae75cc16da75",
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
			["uuid"] = "b7a2505c-ba93-137e-a6d1-a0cf5bf0bf78",
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
			["uuid"] = "400596db-d22e-406e-b59c-4656816d7944",
		},
		[2] = {
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
			["time"] = 738.3,
			["timeRange"] = true,
			["timelineIndex"] = 109,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "592e8f53-9077-df37-bdff-74348a8d2fdf",
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
			["time"] = 738.3,
			["timeRange"] = true,
			["timelineIndex"] = 109,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "1ae237c8-b89c-6610-9895-9f54676b03be",
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
			["uuid"] = "ab93c93c-b35b-2be4-92d2-d5eab3f57845",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Target.IsEntityTheTargetOfAnAttack(9353, 19835, Player.id) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.Invulnerability() then self.used = true end\
end",
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
			["uuid"] = "1edc523a-8ac8-d5ba-99b1-687a7d036cdb",
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
			["uuid"] = "be7e66ee-b6d3-071e-b411-73341d99e658",
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
			["uuid"] = "641be1f9-08aa-1fc8-826d-3dff7473e593",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Helpers.Target.IsEntityTheTargetOfAnAttack(9353, 19835, Player.id) then\
  if NilsReactionCore.Helpers.Tanks.Cooldown.Invulnerability() then self.used = true end\
end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Invuln",
			["throttleTime"] = 0,
			["time"] = 764.3,
			["timeRange"] = true,
			["timelineIndex"] = 112,
			["timerEndOffset"] = 5.5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 4.5,
			["used"] = false,
			["uuid"] = "4e0d2567-ae4c-8e68-9b8e-e73ea27e2677",
		},
		[4] = {
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
			["time"] = 764.3,
			["timeRange"] = true,
			["timelineIndex"] = 112,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "7a04d7f2-c415-c53c-869b-5eac433bc8ec",
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
			["uuid"] = "02463a0e-f3aa-9964-987d-73637abca706",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = false,
			["execute"] = "if NilsReactionCore.Hotbar.GunBreaker.HeartOfLight() then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaNeedsWeaveWindow"] = false,
			["luaReturnsAction"] = false,
			["name"] = "HeartOfLight",
			["throttleTime"] = 0,
			["time"] = 784.3,
			["timeRange"] = true,
			["timelineIndex"] = 114,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 3,
			["used"] = false,
			["uuid"] = "31cb6ec0-70f1-6b66-b0d0-6f08a1514b74",
		},
		[3] = {
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
			["time"] = 784.3,
			["timeRange"] = true,
			["timelineIndex"] = 114,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "c17755d3-7bc5-7af2-b08a-b2b9d5eb77ac",
		},
	},
	[115] = {
	},
	["mapID"] = 909,
	["version"] = 1,
}
return obj1
