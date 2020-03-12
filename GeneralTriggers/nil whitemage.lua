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
* massive refactor\
]]\
";
		["executeType"] = 2;
		["name"] = "whm-general-changes";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "aeb34900-f079-b760-a3eb-0615d70bdce8";
	};
	[2] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 9;
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
		["uuid"] = "f26a171c-827a-5888-9fd9-d9fb7aa6c174";
	};
	[3] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 24 or Player.level < 32 or (xivopeners_whm ~= nil and xivopeners_whm.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 7559)\
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
if contentTable[localmapid] and ent ~= nil then\
    if contentTable[localmapid][eventArgs.spellID] then\
        if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then\
\
										actionskill:Cast(Player.id)\
\
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
		["uuid"] = "c134e079-82f7-1080-be18-d08f00532599";
	};
	[4] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 24 or Player.level < 32 or (xivopeners_whm ~= nil and xivopeners_whm.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 7559)\
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
if contentTable[localmapid] and ent ~= nil then\
    if contentTable[localmapid][eventArgs.spellID] then\
        if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then\
\
										actionskill:Cast(Player.id)\
\
								end\
    end\
end\
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
		["uuid"] = "159cbf80-647d-8278-85c1-59d0587974b7";
	};
	[5] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 24 or Player.level < 30 or (xivopeners_whm ~= nil and xivopeners_whm.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if target already has buff\
-- NOTE: no idea why it is on twice, i assume one of party and one for self\
if HasBuff(Player.id, 1872) or HasBuff(Player.id, 1873) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- TODO : need to add a check to see if seraph is out before this is viable\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 16536)\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if \
\
-- Map, spell id, timer\
local contentTable = {\
    -- Atlas Peak\
    [856] = {\
        [16821] = 2, -- Aftershock\
        [16655] = 4, -- Curumbling Down\
    },\
}\
\
local localmapid = Player.localmapid\
local ent = EntityList:Get(eventArgs.entityID)\
if contentTable[localmapid] and ent ~= nil then if contentTable[localmapid][eventArgs.spellID] then if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then actionskill:Cast() end end end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil";
		["executeType"] = 2;
		["name"] = "Cast: Temperance";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "192e2871-ac63-f98a-a7a6-bdcbd31ffe6c";
	};
	[6] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 24 or Player.level < 30 or (xivopeners_whm ~= nil and xivopeners_whm.openerStarted == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- skip if target already has buff\
if HasBuff(eventArgs.targetID, 1218) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 7432)\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if \
\
-- Map, spell id, timer\
local contentTable = {\
    -- The Royal City of Rabanastre\
    [734] = {\
        [9687] = 4, -- Rock Cutter\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11326] = 4, -- Tide Pod\
        [11354] = 5, -- Destroy\
        [11377] = 5, -- Destroy\
        [11483] = 4, -- Fire\
        [11598] = 4.5, -- Rake\
    },\
    -- Dohn Mheg\
    [821] = {\
        [8857] = 4, -- Candy Cane\
        [13732] = 4, -- Crippling Blow\
    },\
    -- Mt. Gulg\
    [822] = {\
        [15625] = 4, -- Catechism\
        [15634] = 4, -- Sacrament Sforzando\
    },\
    -- The Qitana Ravel\
    [823] = {\
        [15497] = 4, -- Stonefist\
        [15505] = 4, -- Ripper Fang\
        [15513] = 4, -- Rend\
    },\
    -- The Orbonne Monastery\
    [826] = {\
        [14137] = 4, -- Arm Shot\
        [14438] = 4, -- Thunder Slash\
        [14506] = 4, -- Redemption\
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
    },\
    -- Akadaemia Anyder\
    [841] = {\
        [15876] = 4, -- Protolithic Puncture\
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
    -- The Copied Factory\
    [882] = {\
        [18260] = 4, -- Precision Guided Missile\
        [18638] = 4, -- Clanging Blow\
        [18672] = 4, -- Clanging Blow\
        [18677] = 4, -- Neutralization\
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
    -- Ashfall\
    [907] = {\
        [19471] = 4.5, -- Meteor Strike\
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
local ent = EntityList:Get(eventArgs.entityID)\
if contentTable[localmapid] and ent ~= nil then if contentTable[localmapid][eventArgs.spellID] then if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then actionskill:Cast(eventArgs.targetID) end end end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil";
		["executeType"] = 2;
		["name"] = "Cast:Divine Benison";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "89a1c593-a0f3-01f3-9d45-96539e9dacef";
	};
}
return obj1
