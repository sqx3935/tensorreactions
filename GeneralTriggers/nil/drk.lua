-- Persistent Data
local multiRefObjects = {

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
--[[ ** Verson 3 **\
* filter added to `onentitychanneling` to ignore friendly targets\
* cleaned up code to make it more readable and simplify fall through\
* added on death monitor and updated general reactions to check the time\
]]\
\
--[[ ** Verson 2 **\
* massive refactor\
]]\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "drk-general-changes",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 0,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "2225abce-79ff-bae6-81ef-85b57a57f451",
	},
	[2] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
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
		["uuid"] = "2c699ee5-d73e-5dd5-8daf-35c068a635e4",
	},
	[3] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 32 or Player.level < 32 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_drk ~= nil and xivopeners_drk.openerStarted == true) or (Goliath ~= nil and Goliath_Toggle(1, 2) == true) then\
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
local actionskill = ActionList:Get(1, 7548)\
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
        [9660] = 4, -- Command Tower\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11344] = 4, -- Tsunami\
        [11369] = 4, -- Ventilate\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15520] = 4, -- Heaving Breath\
    },\
    -- Malikah's Well\
    [836] = {\
        [15596] = 4, -- High Pressure\
    },\
    -- The Halo\
    [850] = {\
        [15941] = 4, -- Empty Hate\
    },\
    -- The Nereus Trench\
    [851] = {\
        [16339] = 4, -- Tidal Wave\
    },\
    -- Atlas Peak\
    [852] = {\
        [16630] = 4, -- Geocrush\
    },\
    -- The Halo\
    [854] = {\
        [15962] = 4, -- Empty Hate\
    },\
    -- The Nereus Trench\
    [855] = {\
        [16370] = 4, -- Tidal Wave\
    },\
    -- Atlas Peak\
    [856] = {\
        [16659] = 4, -- Geocrush\
        [16694] = 4, -- Dual Earthen Fists\
    },\
    -- The Copied Factory\
    [882] = {\
        [18627] = 4, -- Shockwave\
    },\
    -- The Gandof Thunder Plains\
    [906] = {\
        [19404] = 3.5, -- Levinforce\
    },\
    -- Cinder Drift\
    [912] = {\
        [19182] = 4, -- Screech\
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
		actionskill:Cast(Player.id)\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Knockback",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "478f454f-1cd3-b4cb-b525-fc2d383522a2",
	},
	[4] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 32 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_drk ~= nil and xivopeners_drk.openerStarted == true) or (Goliath ~= nil and Goliath_Toggle(1, 2) == true) then\
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
-- Map, spell id, timer\
local contentTable = {\
    -- The Rak'tika Greatwood\
    [817] = {\
        [17856] = 1.5, -- Petro Eyes\
    },\
    -- Dohn Mheg\
    [821] = {\
        [13552] = 1.5, -- Imp Choir\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14200] = 1.5, -- Devitalize\
        [14423] = 1.5, -- Judgment Blade\
        [14430] = 1.5, -- Mortal Blow\
    },\
    -- Cinder Drift\
    [912] = {\
        [19198] = 1.5, -- Negative Aura\
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
		Player:ClearTarget()\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Stop Casting",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "72a8456a-d78e-a76a-91b3-1ffb4cc6e0bf",
	},
	[5] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 32 or Player.level < 18 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_drk ~= nil and xivopeners_drk.openerStarted == true) or (Goliath ~= nil and Goliath_Toggle(1, 2) == true) then\
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
local actionskill = ActionList:Get(1, 7538)\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- keep in queue if event time does not match, otherwise complete the reation\
local cinfo = ent.castinginfo\
if cinfo.castinginterruptible == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if cinfo.casttime <= 4  then \
		actionskill:Cast(eventArgs.entityID)\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Interject",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "c392c80e-dbbb-737a-bfb0-18b8fdf1ef1e",
	},
	[6] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "-- *** WARNING ***\
-- TENSOR DRIFT BREAKS THIS IF IN STUTTER MODE\
-- ***************\
\
if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
if data.nilsPlayground.Toggles == nil then data.nilsPlayground.Toggles = {} end\
if data.nilsPlayground.Toggles.PlungeMove == nil then data.nilsPlayground.Toggles.PlungeMove = { IsActive = false, TimelineActive = false, LastMove = 0} end\
\
\
if Player.job ~= 32 or Player.incombat == false or Player.alive == false then\
		if SallyDRK ~= nil and SallyDRK.SkillSettings.Plunge.enabled == false then SallyDRK.SkillSettings.Plunge.enabled = true end\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true 	\
return nil\
end\
\
if Player:IsMoving() then\
		if SallyDRK ~= nil and SallyDRK.SkillSettings.Plunge.enabled == true then SallyDRK.SkillSettings.Plunge.enabled = false end\
		data.nilsPlayground.Toggles.PlungeMove.LastMoved = Now()\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if data.nilsPlayground.Toggles.PlungeMove.LastMoved ~= nil and TimeSince(data.nilsPlayground.Toggles.PlungeMove.LastMoved) > 1200 and SallyDRK.SkillSettings.Plunge.enabled == false then\
		if SallyDRK ~= nil and SallyDRK.SkillSettings.Plunge.enabled == false then SallyDRK.SkillSettings.Plunge.enabled = true end\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "Move: Toggle Plung",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "37413426-0d93-5200-b942-b01853827783",
	},
}
return obj1
