-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "-- ** Contributors **\
--[[\
		* Nil (maintainer)\
		* \
]]\
\
-- *************************************************************************************\
\
--[[ ** Verson 2 **\
* complete refactor\
* added reactions for Anamnesis Anyder\
]]\
";
		["executeType"] = 2;
		["name"] = "mch-general-changes";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "4657b7c0-78b1-a331-b467-a0702959cc0f";
	};
	[2] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["name"] = "-- Actions --";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "6a6514b6-d79a-d111-bc86-7917dd5266cb";
	};
	[3] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 31 or (xivopeners_mch ~= nil and xivopeners_mch.openerStarted == true) then\
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
local ent = EntityList:Get(eventArgs.entityID)\
if contentTable[localmapid] and ent ~= nil then if contentTable[localmapid][eventArgs.spellID] then if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then actionskill:Cast() end end end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil\
";
		["executeType"] = 2;
		["name"] = "Cast: Knockback";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "ee38a37d-ccf7-c52b-b877-af72d8f9d1c5";
	};
	[4] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 31 or (xivopeners_mch ~= nil and xivopeners_mch.openerStarted == true) then\
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
local ent = EntityList:Get(eventArgs.entityID)\
if contentTable[localmapid] and ent ~= nil then\
    if contentTable[localmapid][eventArgs.spellID] then\
        if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then\
										Player:ClearTarget()\
										self.eventConditionMismatch = true -- suppressing the log\
										self.used = true\
										return nil\
								end\
    end\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil\
";
		["executeType"] = 2;
		["name"] = "Cast: Stop Casting";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "13f1217d-9a73-fa5a-815b-f66a0d887f3b";
	};
	[5] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 31 or (xivopeners_mch ~= nil and xivopeners_mch.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 7551)\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
local ent = EntityList:Get(eventArgs.entityID)\
if ent ~= nil then\
		local cinfo = ent.castinginfo\
		if cinfo.castinginterruptible == true and cinfo.casttime <= 4 then actionskill:Cast(eventArgs.entityID) end\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil";
		["executeType"] = 2;
		["name"] = "Cast: Head Graze";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "7d355744-3d70-6681-843a-cae8bc8c4c78";
	};
	[6] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 31 or (xivopeners_mch ~= nil and xivopeners_mch.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
-- check if already have sheild samba, tact, or troub\
if HasBuff(Player.id, 1826) or HasBuff(Player.id, 1934) or HasBuff(Player.id, 1951) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 16889)\
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
        [9669] = 4, -- Landwaster\
        [9760] = 2.5, -- Dark Ultima\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11308] = 4, -- Solar Storm\
        [11318] = 3.5, -- Dust Storm\
        [11325] = 4, -- Water IV\
        [11364] = 4, -- Incinerate\
        [11484] = 4, -- Fire IV\
        [11612] = 4, -- Incinerate\
        [11613] = 4, -- Incinerate\
    },\
    -- Dohn Mheg\
    [821] = {\
        [7822] = 3, -- Landsblood\
        [8915] = 4, -- Tiiimbeeer\
        [13708] = 4, -- Virtuosic Capriccio\
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
        [15524] = 4, -- Confession of Faith\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14139] = 4, -- Energy Burst\
        [14206] = 4, -- Noahionto\
        [14439] = 4, -- Divine Light\
    },\
    -- Malikah's Well\
    [836] = {\
        [15590] = 4, -- Head Toss\
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
        [17108] = 4, -- Cosmic Kiss\
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
    },\
    -- The Crown of the Immaculate\
    [848] = {\
        [16072] = 6, -- Scold's Bridle\
        [16106] = 5, -- Shadowreaver\
        [16190] = 5, -- Light Pillar\
    },\
    -- The Core\
    [853] = {\
        [15736] = 6, -- Vice and Virtue\
        [15738] = 6, -- Vice and Virtue\
        [15755] = 5, -- Frago Maximus\
        [15759] = 4, -- Mana Burst\
        [17656] = 5.5, -- Delta Attack\
    },\
    -- The Halo\
    [854] = {\
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
								[19328] = 4, -- Flying Fount	\
				},\
}\
\
local localmapid = Player.localmapid\
local ent = EntityList:Get(eventArgs.entityID)\
if contentTable[localmapid] and ent ~= nil then if contentTable[localmapid][eventArgs.spellID] then if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then actionskill:Cast() end end end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil\
";
		["executeType"] = 2;
		["name"] = "Cast: Tactician";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "3af94a54-b2cd-63d3-832d-17f7c067d4a5";
	};
}
return obj1
