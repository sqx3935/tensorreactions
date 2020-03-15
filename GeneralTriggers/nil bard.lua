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
--[[ ** Verson 3 **\
* filter added to `onentitychanneling` to ignore friendly targets\
* cleaned up code to make it more readable and simplify fall through\
* added on death monitor and updated general reactions to check the time\
]]\
\
--[[ ** Verson 2 **\
* complete refactor\
* added reactions for Anamnesis Anyder\
]]\
";
		["executeType"] = 2;
		["name"] = "bard-general-changes";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "c3907204-61a9-00f7-b6f4-cda93b35ac30";
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
		["uuid"] = "dc35ba2c-8d12-d4e5-a648-a5e8bf69d4d4";
	};
	[3] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 23 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_brd ~= nil and xivopeners_brd.openerStarted == true) then\
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
end";
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
		["uuid"] = "9db1c2a4-8c5c-753f-9e59-5fd836f96152";
	};
	[4] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 23 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_brd ~= nil and xivopeners_brd.openerStarted == true) then\
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
		["uuid"] = "2075d45b-0778-c5ee-977a-760469f6476d";
	};
	[5] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 23 or Player.level < 24 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_brd ~= nil and xivopeners_brd.openerStarted == true) then\
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
local actionskill = ActionList:Get(1, 7551)\
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
end\
";
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
		["uuid"] = "a2327c2f-53ae-95f2-86c7-ebef5add7248";
	};
	[6] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 23 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_brd ~= nil and xivopeners_brd.openerStarted == true) then\
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
local actionskill = ActionList:Get(1, 7408)\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- Map, spell id, timer\
local contentTable = {\
    -- Dohn Mheg\
    [821] = {\
        [8857] = 4, -- Candy Cane\
        [13732] = 4, -- Crippling Blow\
    },\
    -- Mt. Gulg\
    [822] = {\
        [15611] = 3, -- Rake\
        [15625] = 4, -- Catechism\
        [15634] = 4, -- Sacrament Sforzando\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15497] = 4, -- Stonefist\
        [15505] = 4, -- Ripper Fang\
        [15513] = 4, -- Rend\
    },\
    -- Malikah's Well\
    [836] = {\
        [15589] = 4.5, -- Stone Flail\
        [15595] = 4.5, -- Efface\
    },\
    -- Holminster Switch\
    [837] = {\
        [15812] = 5, -- Pillory\
        [15823] = 4, -- The Tickler\
        [15831] = 4, -- Head Crusher\
    },\
    -- The Twinning\
    [840] = {\
        [15717] = 4, -- Augurium\
        [15853] = 3, -- Thunder Beam\
        [15867] = 3, -- Rail Cannon\
    },\
    -- Akadaemia Anyder\
    [841] = {\
        [15876] = 4, -- Protolithic Puncture\
        [15907] = 3, -- Shockbolt\
    },\
    -- The Crown of the Immaculate\
    [848] = {\
        [16073] = 5, -- Holy Sword\
        [16077] = 5, -- Righteous Bolt\
    },\
    -- The Core\
    [853] = {\
        [15752] = 6, -- Spear of Paradise\
        [17646] = 6, -- Vice and Virtue\
        [17648] = 6, -- Vice and Virtue\
    },\
    -- The Halo\
    [854] = {\
        [15969] = 5, -- Shadowflame\
        [15970] = 5, -- Shadowflame\
    },\
    -- The Nereus Trench\
    [855] = {\
        [16352] = 5, -- Rip Current\
    },\
    -- The Dancing Plague\
    [858] = {\
        [15660] = 5, -- Fae Light\
        [15670] = 4, -- Hard Swipe\
        [15671] = 4, -- Pummel\
        [15690] = 4, -- Divination Rune\
    },\
    -- The Grand Cosmos\
    [884] = {\
        [18203] = 4, -- Storm of Color\
        [18276] = 5, -- Captive Bolt\
        [18281] = 4, -- Shadowbolt\
        [18757] = 4, -- Peerless Valor\
    },\
    -- The Dying Gasp\
    [885] = {\
        [18342] = 5, -- Ravenous Assault\
        [18370] = 4, -- Fire IV\
        [18371] = 4, -- Blizzard IV\
        [18385] = 5, -- Height of Chaos\
    },\
				-- Anamnesis Anyder\
				[898] = {\
								[19305] = 4, -- Fetid Fang\
								[19314] = 4, -- Fetid Fang\
								[19340] = 4, -- Bonebreaker\
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
";
		["executeType"] = 2;
		["name"] = "Cast: Nature's Minne (Entity Target)";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "4ae6c8ac-5cba-42f7-a034-6332ed91822a";
	};
	[7] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 23 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_brd ~= nil and xivopeners_brd.openerStarted == true) then\
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
-- check if already have sheild samba, tact, or troub\
if HasBuff(Player.id, 1826) or HasBuff(Player.id, 1934) or HasBuff(Player.id, 1951) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 7405)\
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
\
";
		["executeType"] = 2;
		["name"] = "Cast: Troubadour";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "a8416959-8b5b-8e99-ba0d-ca9e364205e0";
	};
	[8] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 23 or Player.level < 15 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_brd ~= nil and xivopeners_brd.openerStarted == true) then\
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
local actionskill = ActionList:Get(1, 112)\
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
        [3343] = 3, -- The Ram's Voice\
        [9770] = 4, -- Soulfix\
        [9869] = 5, -- Pomp and Circumstance\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14159] = 4, -- T.G. Holy Sword\
    },\
    -- Malikah's Well\
    [836] = {\
        [15591] = 2.5, -- Right Round\
        [15597] = 7, -- Wellbore\
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
		actionskill:Cast(eventArgs.entityID)\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
";
		["executeType"] = 2;
		["name"] = "Cast: Repelling Shot";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "c7ba9921-7992-831e-b396-6cd03428a3ac";
	};
	[9] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "-- ONLY ENABLE IF YOU UNDERSTAND WHY --\
\
if Player.job ~= 23 or Player.level < 80 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or (xivopeners_brd ~= nil and xivopeners_brd.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local action = ActionList:Get(1, 118)\
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
        if HasBuff(member.id, 141) then -- battle voice (skip if there is double bard)\
            		self.eventConditionMismatch = true -- suppressing the log\
														self.used = true \
														return nil\
        end\
    end\
else\
    plist = EntityList.myparty\
    if (table.valid(plist)) then\
        for i, member in pairs(plist) do\
            if HasBuff(member.id, 141) then  -- battle voice (skip if there is double bard)\
            		self.eventConditionMismatch = true -- suppressing the log\
														self.used = true \
														return nil\
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
if HasBuff(Player.id, 786) or HasBuff(Player.id, 1185) or HasBuff(Player.id, 1822) or HasBuff(Player.id, 1239) or HasBuff(Player.id, 1213) then action:Cast(Player.id) end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["name"] = "Cast: Battle Voice";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "32c24259-9f87-d49d-8577-dfde7760b3c2";
	};
	[10] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
if data.nilsPlayground.timeOfDeath == nil then data.nilsPlayground.timeOfDeath = 0 end\
\
if Player.alive == true then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
data.nilsPlayground.timeOfDeath = Now()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["name"] = "Reset: on death";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "863f7e41-34f6-824f-8d7e-3ef4b64d555b";
	};
}
return obj1
