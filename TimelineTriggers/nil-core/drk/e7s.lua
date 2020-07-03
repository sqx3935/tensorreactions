-- Persistent Data
local multiRefObjects = {

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
			["time"] = 13,
			["timeRange"] = true,
			["timelineIndex"] = 2,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = -13,
			["used"] = false,
			["uuid"] = "2aed7bad-c3d0-61d2-8e8a-8f20127ff7f4",
		},
	},
	[3] = {
		[1] = {
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
			["time"] = 25.2,
			["timeRange"] = true,
			["timelineIndex"] = 3,
			["timerEndOffset"] = 4,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "b4efe7f7-bf30-4950-a718-0ac6009ab43c",
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
			["time"] = 25.2,
			["timeRange"] = true,
			["timelineIndex"] = 3,
			["timerEndOffset"] = 5,
			["timerOffset"] = 0,
			["timerStartOffset"] = 2,
			["used"] = false,
			["uuid"] = "723f45b2-b280-806d-b3b9-cf72ec5902c7",
		},
	},
	["mapID"] = 908,
	["version"] = 6,
}
return obj1
