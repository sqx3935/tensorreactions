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
		["execute"] = "-- if fey union is on cooldown, rest can be ignored\
local feyUnionActionskill = ActionList:Get(1, 7568)\
if feyUnionActionskill.cdmax - feyUnionActionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
feyUnionActionskill:Cast(Player.id)\
\
\
\
feyUnionActionskill:Cast(Player.id)",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "sch-general-changes",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 6,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "bd9f38ed-895d-7b4d-82f7-f5742642e58e",
	},
	[2] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 9,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
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
		["uuid"] = "e466b109-2521-f962-8205-1828de3b6ad2",
	},
	[3] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 28 or Player.level < 32 or (xivopeners_sch ~= nil and xivopeners_sch.openerStarted == true) then\
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
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
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
		["uuid"] = "bda83fc6-3c1e-8699-b29d-9279ae2b3c93",
	},
	[4] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
		["execute"] = "if player.incombat == false then\
 self.eventConditionMismatch = true -- suppressing the log\
	self.used = true \
	return nil\
end\
\
wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Logic.Knockback(eventArgs.entityID, 0, eventArgs.spellID, true)\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end\
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = true,
		["name"] = "Cast: Knockback",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "876952fe-ee22-dfe3-aa5a-2758fbf90339",
	},
	[5] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 28 or Player.level < 30 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sch ~= nil and xivopeners_sch.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
\
-- skip entities that are not attackable\
local ent = EntityList:Get(eventArgs.entityID)\
if ent == nil or ent.attackable == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if target already has buff\
if HasBuff(Player.id, 317) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if Sereph is out (guide says not to do both, let me know if this causes issues)\
local g = Player.gauge\
local serephguage = 0\
if (table.valid(g)) then\
		for i, k in pairs(g) do\
  		if i == 3 then\
						serephguage = k\
    end\
  end\
end\
\
if serephguage > 0 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 16538)\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- Map, spell id, timer\
local contentTable = {\
			--	[339] = {\
			--				[18644] = 3, -- succor\
			--	},\
    -- The Royal City of Rabanastre\
    [734] = {\
        [9686] = 5, -- Demolish\
        [9688] = 5, -- Quake IV\
        [9774] = 5, -- Fire IV\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11308] = 5, -- Solar Storm\
        [11325] = 5, -- Water IV\
        [11364] = 5, -- Incinerate\
        [11484] = 5, -- Fire IV\
        [11612] = 5, -- Incinerate\
    },\
    -- Dohn Mheg\
    [821] = {\
        [7822] = 3, -- Landsblood\
        [8915] = 6, -- Tiiimbeeer\
        [13708] = 5, -- Virtuosic Capriccio\
    },\
    -- Mt. Gulg\
    [822] = {\
        [15612] = 3, -- Cyclone Wing\
        [15627] = 4, -- Sacrament of Penance\
        [15636] = 4, -- Orison Fortissimo\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15499] = 3, -- Lozatl's Scorn\
        [15506] = 3, -- Soundwave\
        [15515] = 3, -- Glossolalia\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14139] = 4, -- Energy Burst\
        [14206] = 4, -- Noahionto\
        [14433] = 5, -- Heavenly Judgment\
        [14439] = 4, -- Divine Light\
    },\
    -- Malikah's Well\
    [836] = {\
        [15601] = 4, -- Intestinal Crank\
    },\
    -- Holminster Switch\
    [837] = {\
        [15813] = 4, -- The Path of Light\
        [15824] = 4, -- Scold's Bridle\
        [15832] = 4, -- Scavenger's Daughter\
    },\
    -- Amaurot\
    [838] = {\
        [15587] = 4, -- Shadow Wreck\
    },\
    -- The Twinning\
    [840] = {\
        [15716] = 4, -- Beastly Roar\
        [15868] = 3, -- High-tension Discharger\
    },\
    -- Akadaemia Anyder\
    [841] = {\
        [15878] = 3.5, -- Marine Mayhem\
        [15895] = 3, -- Arbor Storm\
        [15908] = 4, -- Thunderbolt\
        [17164] = 5, -- Noahionto\
    },\
    -- The Crown of the Immaculate\
    [848] = {\
        [16072] = 6, -- Scold's Bridle\
        [16106] = 5, -- Shadowreaver\
        [16190] = 5, -- Light Pillar\
    },\
    -- The Core\
    [853] = {\
        [15728] = 4, -- Eden's Gravity\
        [15736] = 6, -- Vice and Virtue\
        [15738] = 6, -- Vice and Virtue\
        [15743] = 4, -- Dimensional Shift\
        [15755] = 5, -- Frago Maximus\
        [15759] = 4, -- Mana Burst\
        [17656] = 5.5, -- Delta Attack\
    },\
    -- The Halo\
    [854] = {\
        [15971] = 4, -- Doomvoid Cleaver\
        [15984] = 6, -- Entropy\
        [15986] = 6, -- Quietus\
    },\
    -- The Nereus Trench\
    [855] = {\
        [16348] = 4, -- Tidal Roar\
        [16350] = 5, -- Tidal Rage\
        [16395] = 5, -- Tidal Rage\
        [17436] = 6, -- Tsunami\
    },\
    -- Atlas Peak\
    [856] = {\
        [16660] = 4, -- Voice of the Land\
        [16682] = 3.6, -- Tumult\
        [16699] = 6, -- Earthen Fury\
        [17384] = 6, -- Earthen Fury\
    },\
    -- The Dancing Plague\
    [858] = {\
        [15667] = 6, -- Being Mortal\
        [15674] = 4, -- Puck's Caprice\
        [15681] = 5, -- Puck's Breath\
        [15691] = 4, -- Bright Sabbath\
    },\
    -- The Copied Factory\
    [882] = {\
        [18261] = 4, -- Diffuse Laser\
        [18437] = 4, -- Laser-resistance Test\
        [18639] = 4, -- Forceful Impact\
        [18668] = 5, -- Total Annihilation Maneuver\
        [18675] = 5, -- Shrapnel Impact\
        [18678] = 4, -- Laser Saturation\
        [18753] = 5, -- 360-degree Bombing Maneuver\
    },\
    -- The Grand Cosmos\
    [884] = {\
        [18204] = 4, -- Ode to Lost Love\
        [18277] = 6, -- Culling Blade\
        [18282] = 5, -- Dark Pulse\
        [18851] = 4, -- Immortal Anathema\
    },\
    -- The Dying Gasp\
    [885] = {\
        [18344] = 5, -- Shadow Spread\
        [18360] = 5, -- Quake III\
        [18367] = 5, -- Annihilation\
        [18380] = 5, -- Blight\
        [18384] = 4, -- Shadow Flare\
        [18398] = 5, -- Again the Martyr\
        [18419] = 5, -- Gigantomachy\
        [18420] = 5, -- Quadrastrike\
    },\
    -- Ashfall\
    [903] = {\
        [19415] = 5, -- Superstorm\
    },\
    -- The Gandof Thunder Plains\
    [906] = {\
        [19381] = 5, -- Judgment Volts\
    },\
    -- Ashfall\
    [907] = {\
        [19447] = 5, -- Superstorm\
        [19465] = 5, -- Touchdown\
        [19476] = 5, -- Inferno Howl\
        [19448] = 5, -- Firestorm\
    },\
    -- Cinder Drift\
    [912] = {\
        [19134] = 5, -- Optimized Ultima\
        [20050] = 5, -- Dalamud Impact\
    },\
				-- Anamnesis Anyder\
				[898] = {\
								[19288] = 5, -- The Final Verse\
								[19295] = 5, -- Wanderer's Pyre\
								[19306] = 5, -- Inscrutability\
								[19315] = 5, -- Inscrutability\
								[19321] = 5, -- Ectoplasmic Ray\
								[19322] = 5, -- Ectoplasmic Ray\
								[19324] = 5, -- Seabed Ceremony\
								[19328] = 5, -- Flying Fount\
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
end",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Fey Illumination",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "52ae51c1-2221-8299-9aff-29762e8937ed",
	},
	[6] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 28 or Player.level < 30 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sch ~= nil and xivopeners_sch.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if target already has buff\
if HasBuff(Player.id, 297) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if Sereph is out (guide says not to do both, let me know if this causes issues)\
local g = Player.gauge\
local serephguage = 0\
if (table.valid(g)) then\
		for i, k in pairs(g) do\
  		if i == 3 then\
						serephguage = k\
    end\
  end\
end\
\
if serephguage > 0 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
\
-- action cooldown can be skipped, you can pretty much cast back to back\
\
-- Map, spell id, timer\
local contentTable = {\
    -- The Royal City of Rabanastre\
    [734] = {\
        [9669] = 5, -- Landwaster\
        [9686] = 4, -- Demolish\
        [9688] = 4, -- Quake IV\
        [9774] = 4, -- Fire IV\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11308] = 5, -- Solar Storm\
        [11325] = 4, -- Water IV\
        [11364] = 5, -- Incinerate\
        [11484] = 5, -- Fire IV\
        [11612] = 5, -- Incinerate\
    },\
    -- Dohn Mheg\
    [821] = {\
        [7822] = 3, -- Landsblood\
        [8915] = 6, -- Tiiimbeeer\
        [13708] = 5, -- Virtuosic Capriccio\
    },\
    -- Mt. Gulg\
    [822] = {\
        [15612] = 3, -- Cyclone Wing\
        [15627] = 4, -- Sacrament of Penance\
        [15636] = 4, -- Orison Fortissimo\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15499] = 3, -- Lozatl's Scorn\
        [15506] = 3, -- Soundwave\
        [15515] = 3, -- Glossolalia\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14139] = 4, -- Energy Burst\
        [14206] = 4, -- Noahionto\
        [14433] = 5, -- Heavenly Judgment\
        [14439] = 4, -- Divine Light\
    },\
    -- Malikah's Well\
    [836] = {\
        [15601] = 4, -- Intestinal Crank\
    },\
    -- Holminster Switch\
    [837] = {\
        [15813] = 4, -- The Path of Light\
        [15824] = 4, -- Scold's Bridle\
        [15832] = 4, -- Scavenger's Daughter\
    },\
    -- Amaurot\
    [838] = {\
        [15587] = 4, -- Shadow Wreck\
    },\
    -- The Twinning\
    [840] = {\
        [15716] = 4, -- Beastly Roar\
        [15868] = 3, -- High-tension Discharger\
    },\
    -- Akadaemia Anyder\
    [841] = {\
        [15878] = 3.5, -- Marine Mayhem\
        [15895] = 3, -- Arbor Storm\
        [15908] = 4, -- Thunderbolt\
        [17164] = 5, -- Noahionto\
    },\
    -- The Crown of the Immaculate\
    [848] = {\
        [16072] = 6, -- Scold's Bridle\
        [16106] = 5, -- Shadowreaver\
        [16190] = 5, -- Light Pillar\
    },\
    -- The Core\
    [853] = {\
        [15728] = 4, -- Eden's Gravity\
        [15736] = 6, -- Vice and Virtue\
        [15738] = 6, -- Vice and Virtue\
        [15743] = 4, -- Dimensional Shift\
        [15755] = 5, -- Frago Maximus\
        [15759] = 4, -- Mana Burst\
        [17656] = 5.5, -- Delta Attack\
    },\
    -- The Halo\
    [854] = {\
        [15971] = 4, -- Doomvoid Cleaver\
        [15984] = 6, -- Entropy\
        [15986] = 6, -- Quietus\
    },\
    -- The Nereus Trench\
    [855] = {\
        [16348] = 4, -- Tidal Roar\
        [16350] = 5, -- Tidal Rage\
        [16395] = 5, -- Tidal Rage\
        [17436] = 6, -- Tsunami\
    },\
    -- Atlas Peak\
    [856] = {\
        [16660] = 4, -- Voice of the Land\
        [16682] = 3.6, -- Tumult\
        [16699] = 6, -- Earthen Fury\
        [17384] = 6, -- Earthen Fury\
    },\
    -- The Dancing Plague\
    [858] = {\
        [15667] = 6, -- Being Mortal\
        [15674] = 4, -- Puck's Caprice\
        [15681] = 5, -- Puck's Breath\
        [15691] = 4, -- Bright Sabbath\
    },\
    -- The Copied Factory\
    [882] = {\
        [18261] = 4, -- Diffuse Laser\
        [18437] = 4, -- Laser-resistance Test\
        [18639] = 4, -- Forceful Impact\
        [18668] = 5, -- Total Annihilation Maneuver\
        [18675] = 5, -- Shrapnel Impact\
        [18678] = 4, -- Laser Saturation\
        [18753] = 5, -- 360-degree Bombing Maneuver\
    },\
    -- The Grand Cosmos\
    [884] = {\
        [18204] = 4, -- Ode to Lost Love\
        [18277] = 6, -- Culling Blade\
        [18282] = 5, -- Dark Pulse\
        [18851] = 4, -- Immortal Anathema\
    },\
    -- The Dying Gasp\
    [885] = {\
        [18344] = 5, -- Shadow Spread\
        [18360] = 5, -- Quake III\
        [18367] = 5, -- Annihilation\
        [18380] = 5, -- Blight\
        [18384] = 4, -- Shadow Flare\
        [18398] = 4, -- Again the Martyr\
        [18419] = 5, -- Gigantomachy\
        [18420] = 4, -- Quadrastrike\
    },\
    -- Ashfall\
    [903] = {\
        [19415] = 4, -- Superstorm\
    },\
    -- The Gandof Thunder Plains\
    [906] = {\
        [19381] = 4, -- Judgment Volts\
    },\
    -- Ashfall\
    [907] = {\
        [19447] = 4, -- Superstorm\
        [19465] = 4, -- Touchdown\
        [19476] = 4, -- Inferno Howl\
        [19448] = 4, -- Firestorm\
    },\
    -- Cinder Drift\
    [912] = {\
        [19134] = 4, -- Optimized Ultima\
        [20050] = 4, -- Dalamud Impact\
    },\
				-- Anamnesis Anyder\
				[898] = {\
								[19288] = 4, -- The Final Verse\
								[19295] = 4, -- Wanderer's Pyre\
								[19306] = 4, -- Inscrutability\
								[19315] = 4, -- Inscrutability\
								[19321] = 4, -- Ectoplasmic Ray\
								[19322] = 4, -- Ectoplasmic Ray\
								[19324] = 4, -- Seabed Ceremony\
								[19328] = 4, -- Flying Fount\
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
		actionskill:Cast(eventArgs.targetID)\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Adloquium",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "559dc354-856c-d7a1-a0d0-a5dc59938b1e",
	},
	[7] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 28 or Player.level < 30 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sch ~= nil and xivopeners_sch.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if target already has buff\
if HasBuff(Player.id, 297) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if Sereph is out (guide says not to do both, let me know if this causes issues)\
local g = Player.gauge\
local serephguage = 0\
if (table.valid(g)) then\
		for i, k in pairs(g) do\
  		if i == 3 then\
						serephguage = k\
    end\
  end\
end\
\
if serephguage > 0 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 186)\
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
        [9669] = 5, -- Landwaster\
        [9686] = 4, -- Demolish\
        [9688] = 4, -- Quake IV\
        [9774] = 4, -- Fire IV\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11308] = 5, -- Solar Storm\
        [11325] = 4, -- Water IV\
        [11364] = 5, -- Incinerate\
        [11484] = 5, -- Fire IV\
        [11612] = 5, -- Incinerate\
    },\
    -- Dohn Mheg\
    [821] = {\
        [7822] = 3, -- Landsblood\
        [8915] = 6, -- Tiiimbeeer\
        [13708] = 5, -- Virtuosic Capriccio\
    },\
    -- Mt. Gulg\
    [822] = {\
        [15612] = 3, -- Cyclone Wing\
        [15627] = 4, -- Sacrament of Penance\
        [15636] = 4, -- Orison Fortissimo\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15499] = 3, -- Lozatl's Scorn\
        [15506] = 3, -- Soundwave\
        [15515] = 3, -- Glossolalia\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14139] = 4, -- Energy Burst\
        [14206] = 4, -- Noahionto\
        [14433] = 5, -- Heavenly Judgment\
        [14439] = 4, -- Divine Light\
    },\
    -- Malikah's Well\
    [836] = {\
        [15601] = 4, -- Intestinal Crank\
    },\
    -- Holminster Switch\
    [837] = {\
        [15813] = 4, -- The Path of Light\
        [15824] = 4, -- Scold's Bridle\
        [15832] = 4, -- Scavenger's Daughter\
    },\
    -- Amaurot\
    [838] = {\
        [15587] = 4, -- Shadow Wreck\
    },\
    -- The Twinning\
    [840] = {\
        [15716] = 4, -- Beastly Roar\
        [15868] = 3, -- High-tension Discharger\
    },\
    -- Akadaemia Anyder\
    [841] = {\
        [15878] = 3.5, -- Marine Mayhem\
        [15895] = 3, -- Arbor Storm\
        [15908] = 4, -- Thunderbolt\
        [17164] = 5, -- Noahionto\
    },\
    -- The Crown of the Immaculate\
    [848] = {\
        [16072] = 6, -- Scold's Bridle\
        [16106] = 5, -- Shadowreaver\
        [16190] = 5, -- Light Pillar\
    },\
    -- The Core\
    [853] = {\
        [15728] = 4, -- Eden's Gravity\
        [15736] = 6, -- Vice and Virtue\
        [15738] = 6, -- Vice and Virtue\
        [15743] = 4, -- Dimensional Shift\
        [15755] = 5, -- Frago Maximus\
        [15759] = 4, -- Mana Burst\
        [17656] = 5.5, -- Delta Attack\
    },\
    -- The Halo\
    [854] = {\
        [15971] = 4, -- Doomvoid Cleaver\
        [15984] = 6, -- Entropy\
        [15986] = 6, -- Quietus\
    },\
    -- The Nereus Trench\
    [855] = {\
        [16348] = 4, -- Tidal Roar\
        [16350] = 5, -- Tidal Rage\
        [16395] = 5, -- Tidal Rage\
        [17436] = 6, -- Tsunami\
    },\
    -- Atlas Peak\
    [856] = {\
        [16660] = 4, -- Voice of the Land\
        [16682] = 3.6, -- Tumult\
        [16699] = 6, -- Earthen Fury\
        [17384] = 6, -- Earthen Fury\
    },\
    -- The Dancing Plague\
    [858] = {\
        [15667] = 6, -- Being Mortal\
        [15674] = 4, -- Puck's Caprice\
        [15681] = 5, -- Puck's Breath\
        [15691] = 4, -- Bright Sabbath\
    },\
    -- The Copied Factory\
    [882] = {\
        [18261] = 4, -- Diffuse Laser\
        [18437] = 4, -- Laser-resistance Test\
        [18639] = 4, -- Forceful Impact\
        [18668] = 5, -- Total Annihilation Maneuver\
        [18675] = 5, -- Shrapnel Impact\
        [18678] = 4, -- Laser Saturation\
        [18753] = 5, -- 360-degree Bombing Maneuver\
    },\
    -- The Grand Cosmos\
    [884] = {\
        [18204] = 4, -- Ode to Lost Love\
        [18277] = 6, -- Culling Blade\
        [18282] = 5, -- Dark Pulse\
        [18851] = 4, -- Immortal Anathema\
    },\
    -- The Dying Gasp\
    [885] = {\
        [18344] = 5, -- Shadow Spread\
        [18360] = 5, -- Quake III\
        [18367] = 5, -- Annihilation\
        [18380] = 5, -- Blight\
        [18384] = 4, -- Shadow Flare\
        [18398] = 4, -- Again the Martyr\
        [18419] = 5, -- Gigantomachy\
        [18420] = 4, -- Quadrastrike\
    },\
    -- Ashfall\
    [903] = {\
        [19415] = 4, -- Superstorm\
    },\
    -- The Gandof Thunder Plains\
    [906] = {\
        [19381] = 4, -- Judgment Volts\
    },\
    -- Ashfall\
    [907] = {\
        [19447] = 4, -- Superstorm\
        [19465] = 4, -- Touchdown\
        [19476] = 4, -- Inferno Howl\
        [19448] = 4, -- Firestorm\
    },\
    -- Cinder Drift\
    [912] = {\
        [19134] = 4, -- Optimized Ultima\
        [20050] = 4, -- Dalamud Impact\
    },\
				-- Anamnesis Anyder\
				[898] = {\
								[19288] = 4, -- The Final Verse\
								[19295] = 4, -- Wanderer's Pyre\
								[19306] = 4, -- Inscrutability\
								[19315] = 4, -- Inscrutability\
								[19321] = 4, -- Ectoplasmic Ray\
								[19322] = 4, -- Ectoplasmic Ray\
								[19324] = 4, -- Seabed Ceremony\
								[19328] = 4, -- Flying Fount\
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
		actionskill:Cast(eventArgs.targetID)\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Excogitation",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "a59477a4-bd1a-a309-a48a-6952f3cf6769",
	},
	[8] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 3,
		["execute"] = "if Player.job ~= 28 or Player.level < 30 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sch ~= nil and xivopeners_sch.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if target already has buff\
if HasBuff(Player.id, 297) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if Sereph is out (guide says not to do both, let me know if this causes issues)\
local g = Player.gauge\
local serephguage = 0\
if (table.valid(g)) then\
		for i, k in pairs(g) do\
  		if i == 3 then\
						serephguage = k\
    end\
  end\
end\
\
if serephguage > 0 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 186)\
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
        [9669] = 5, -- Landwaster\
        [9686] = 4, -- Demolish\
        [9688] = 4, -- Quake IV\
        [9774] = 4, -- Fire IV\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11308] = 5, -- Solar Storm\
        [11325] = 4, -- Water IV\
        [11364] = 5, -- Incinerate\
        [11484] = 5, -- Fire IV\
        [11612] = 5, -- Incinerate\
    },\
    -- Dohn Mheg\
    [821] = {\
        [7822] = 3, -- Landsblood\
        [8915] = 6, -- Tiiimbeeer\
        [13708] = 5, -- Virtuosic Capriccio\
    },\
    -- Mt. Gulg\
    [822] = {\
        [15612] = 3, -- Cyclone Wing\
        [15627] = 4, -- Sacrament of Penance\
        [15636] = 4, -- Orison Fortissimo\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15499] = 3, -- Lozatl's Scorn\
        [15506] = 3, -- Soundwave\
        [15515] = 3, -- Glossolalia\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14139] = 4, -- Energy Burst\
        [14206] = 4, -- Noahionto\
        [14433] = 5, -- Heavenly Judgment\
        [14439] = 4, -- Divine Light\
    },\
    -- Malikah's Well\
    [836] = {\
        [15601] = 4, -- Intestinal Crank\
    },\
    -- Holminster Switch\
    [837] = {\
        [15813] = 4, -- The Path of Light\
        [15824] = 4, -- Scold's Bridle\
        [15832] = 4, -- Scavenger's Daughter\
    },\
    -- Amaurot\
    [838] = {\
        [15587] = 4, -- Shadow Wreck\
    },\
    -- The Twinning\
    [840] = {\
        [15716] = 4, -- Beastly Roar\
        [15868] = 3, -- High-tension Discharger\
    },\
    -- Akadaemia Anyder\
    [841] = {\
        [15878] = 3.5, -- Marine Mayhem\
        [15895] = 3, -- Arbor Storm\
        [15908] = 4, -- Thunderbolt\
        [17164] = 5, -- Noahionto\
    },\
    -- The Crown of the Immaculate\
    [848] = {\
        [16072] = 6, -- Scold's Bridle\
        [16106] = 5, -- Shadowreaver\
        [16190] = 5, -- Light Pillar\
    },\
    -- The Core\
    [853] = {\
        [15728] = 4, -- Eden's Gravity\
        [15736] = 6, -- Vice and Virtue\
        [15738] = 6, -- Vice and Virtue\
        [15743] = 4, -- Dimensional Shift\
        [15755] = 5, -- Frago Maximus\
        [15759] = 4, -- Mana Burst\
        [17656] = 5.5, -- Delta Attack\
    },\
    -- The Halo\
    [854] = {\
        [15971] = 4, -- Doomvoid Cleaver\
        [15984] = 6, -- Entropy\
        [15986] = 6, -- Quietus\
    },\
    -- The Nereus Trench\
    [855] = {\
        [16348] = 4, -- Tidal Roar\
        [16350] = 5, -- Tidal Rage\
        [16395] = 5, -- Tidal Rage\
        [17436] = 6, -- Tsunami\
    },\
    -- Atlas Peak\
    [856] = {\
        [16660] = 4, -- Voice of the Land\
        [16682] = 3.6, -- Tumult\
        [16699] = 6, -- Earthen Fury\
        [17384] = 6, -- Earthen Fury\
    },\
    -- The Dancing Plague\
    [858] = {\
        [15667] = 6, -- Being Mortal\
        [15674] = 4, -- Puck's Caprice\
        [15681] = 5, -- Puck's Breath\
        [15691] = 4, -- Bright Sabbath\
    },\
    -- The Copied Factory\
    [882] = {\
        [18261] = 4, -- Diffuse Laser\
        [18437] = 4, -- Laser-resistance Test\
        [18639] = 4, -- Forceful Impact\
        [18668] = 5, -- Total Annihilation Maneuver\
        [18675] = 5, -- Shrapnel Impact\
        [18678] = 4, -- Laser Saturation\
        [18753] = 5, -- 360-degree Bombing Maneuver\
    },\
    -- The Grand Cosmos\
    [884] = {\
        [18204] = 4, -- Ode to Lost Love\
        [18277] = 6, -- Culling Blade\
        [18282] = 5, -- Dark Pulse\
        [18851] = 4, -- Immortal Anathema\
    },\
    -- The Dying Gasp\
    [885] = {\
        [18344] = 5, -- Shadow Spread\
        [18360] = 5, -- Quake III\
        [18367] = 5, -- Annihilation\
        [18380] = 5, -- Blight\
        [18384] = 4, -- Shadow Flare\
        [18398] = 4, -- Again the Martyr\
        [18419] = 5, -- Gigantomachy\
        [18420] = 4, -- Quadrastrike\
    },\
    -- Ashfall\
    [903] = {\
        [19415] = 4, -- Superstorm\
    },\
    -- The Gandof Thunder Plains\
    [906] = {\
        [19381] = 4, -- Judgment Volts\
    },\
    -- Ashfall\
    [907] = {\
        [19447] = 4, -- Superstorm\
        [19465] = 4, -- Touchdown\
        [19476] = 4, -- Inferno Howl\
        [19448] = 4, -- Firestorm\
    },\
    -- Cinder Drift\
    [912] = {\
        [19134] = 4, -- Optimized Ultima\
        [20050] = 4, -- Dalamud Impact\
    },\
				-- Anamnesis Anyder\
				[898] = {\
								[19288] = 4, -- The Final Verse\
								[19295] = 4, -- Wanderer's Pyre\
								[19306] = 4, -- Inscrutability\
								[19315] = 4, -- Inscrutability\
								[19321] = 4, -- Ectoplasmic Ray\
								[19322] = 4, -- Ectoplasmic Ray\
								[19324] = 4, -- Seabed Ceremony\
								[19328] = 4, -- Flying Fount\
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
end",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Succor",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "9ad5c5e7-5a2d-c55d-adf2-ad1fab51f92f",
	},
	[9] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "-- ONLY ENABLE IF YOU UNDERSTAND WHY --\
\
if Player.job ~= 28 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_sch ~= nil and xivopeners_sch.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
local target = Player:GetTarget()\
if target == nil or not table.valid(target) or not target.attackable then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local action = ActionList:Get(1, 3557)\
if action.cdmax - action.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- open world checks, instances are regular parties (even from PF)\
local plist = EntityList.crossworldparty\
if (table.valid(plist)) then\
    for i, member in pairs(plist) do\
        if HasBuff(member.id, 141) then -- battle voice\
            return true\
        end\
    end\
else\
    plist = EntityList.myparty\
    if (table.valid(plist)) then\
        for i, member in pairs(plist) do\
            if HasBuff(member.id, 141) then  -- battle voice\
                return true\
            end\
        end\
    end\
end\
\
local target = Player:GetTarget()\
if target ~= nil and table.valid(target) then\
    -- 638 vulnability/trick attack, 1221 Chain Stratagem\
    if HasBuff(target.id, 638) or HasBuff(target.id, 1221) then\
        return true\
    end\
end\
\
-- 786 Battle litany, 1185 Brotherhood, 1822 Technical Finish, 1239 Embolden ,1213 Devotion\
if HasBuff(Player.id, 786) or HasBuff(Player.id, 1185) or HasBuff(Player.id, 1822) or HasBuff(Player.id, 1239) or HasBuff(Player.id, 1213) then action:Cast(target.id) end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Cast: Chain Stratagem",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "bfb241f5-36ea-e46c-b38b-8a88a20ebc5b",
	},
	[10] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "-- Healing --",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 0,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "6a919f7a-2030-a0a4-9766-ef0bf79a455b",
	},
	[11] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "--[[\
NOT WORKING YET\
\
]]\
\
\
if Player.job ~= 28 or Player.level < 70 or (xivopeners_sch ~= nil and xivopeners_sch.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if fey union is on cooldown, rest can be ignored\
local feyUnionActionskill = ActionList:Get(1, 7437)\
if feyUnionActionskill.cdmax - feyUnionActionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
local feyIlluminationActionskill = ActionList:Get(1, 16538)\
local whisperingDawnActionskill = ActionList:Get(1, 16537)\
\
if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
if data.nilsPlayground.jobs == nil then \
  data.nilsPlayground.jobs = {\
      Paladin = {id = 19, role = \"tank\"},\
      Monk = {id = 20, role = \"dps\"},\
      Warrior = {id = 21, role = \"tank\"},\
      Dragoon = {id = 22, role = \"dps\"},\
      Bard = {id = 23, role = \"dps\"},\
      WhiteMage = {id = 24, role = \"healer\"},\
      BlackMage = {id = 25, role = \"dps\"},\
      Arcanist = {id = 26, role = \"dps\"},\
      Summoner = {id = 27, role = \"dps\"},\
      Scholar = {id = 28, role = \"healer\"},\
      Rogue = {id = 29, role = \"dps\"},\
      Ninja = {id = 30, role = \"dps\"},\
      Machinist = {id = 31, role = \"dps\"},\
      DarkKnight = {id = 32, role = \"tank\"},\
      Astrologian = {id = 33, role = \"healer\"},\
      Samurai = {id = 34, role = \"dps\"},\
      RedMage = {id = 35, role = \"dps\"},\
      Gunbreaker = {id = 37, role = \"tank\"},\
      Dancer = {id = 38, role = \"dps\"}\
  }\
end\
\
if data.nilsPlayground.CustomConditionChecks == nil then data.nilsPlayground.CustomConditionChecks = {} end\
if data.nilsPlayground.CustomConditionChecks.hasRegen == nil then\
		function data.nilsPlayground.CustomConditionChecks.hasRegen()\
    -- check regen buffs\
    if HasBuff(Player.id, 158) or HasBuff(Player.id, 150) or HasBuff(Player.id, 839) or HasBuff(Player.id, 84) then return true else return false end\
  end\
end\
\
\
\
-- otherwise just targer the lowest health member\
local plistOne = EntityList(\"alive,myparty,friendly,lowesthealth, maxdistance=30,distanceto=\" .. tostring(Player.id))\
-- support for npc team (ex. Trust)\
if not table.valid(plistOne) then \
		plistOne = EntityList(\"alive,chartype=9,targetable,maxdistance=30,distanceto=\" .. tostring(Player.id))\
end",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Heal: Fey Union",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "6762caf7-4a01-023b-8bc0-860b60d14026",
	},
	[12] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "local rundata =\
{\
        chat = \"\",\
        checkcd = true,\
        customid = 0,\
        dr = 500,\
        iconname = \"\",\
        iconnum = 0,\
        id = 7568,\
        isabi = true,\
        ismacro = false,\
        macroid = 0,\
        name = \"Esunae\",\
        name2 = \"\",\
        range = 0,\
        realid = 0,\
        str = \"\",\
        str2 = \"\",\
        ttype = 2,\
        type = 1,\
        use = true,\
        useicon = false,\
}\
---return true when success\
MCRAPI.Hotbar_SendSkill(rundata)\
self.used = true",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Reset: on death",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "afec987f-4a18-2e49-bcbb-15fd5c9ee9f0",
	},
	[13] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "function Sprint()\
local entity = EntityList:Get(Player.id)\
d(table.size(entity.buffs))\
  if (table.valid(entity) and table.valid(entity.buffs)) then\
d(\"1\")\
    for _, buff in pairs(entity.buffs) do\
      d(tostring(buff.isdebuff))\
      if (buff.IsDebuff and buff.id == debuffID) then\
        return buff\
      end\
\
      if (buff.IsDebuff and debuffID == 0 and anyDispellable) then\
        return buff\
      end\
    end\
  end\
end\
\
Sprint()\
self.used = true",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "test",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "35792ffc-a309-fc2b-af30-20ca25c29b07",
	},
}
return obj1
