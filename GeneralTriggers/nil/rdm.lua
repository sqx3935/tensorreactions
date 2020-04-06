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
		["execute"] = "";
		["executeType"] = 1;
		["luaReturnsAction"] = false;
		["name"] = "-- Actions --";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "4af213cf-260d-ce8f-9e96-f08572df690f";
	};
	[2] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 35 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or Player.level < 32 or (xivopeners_rdm ~= nil and xivopeners_rdm.openerStarted == true) or (SallyRDM ~= nil and SallyRDM.SkillSettings.Opener.enabled == true) or HasBuff(eventArgs.entityID, 1203) then\
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
local actionskill = ActionList:Get(1, 7560)\
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
        [9670] = 4, -- Landwaster\
        [9774] = 4, -- Fire IV\
        [9869] = 4, -- Pomp And Circumstance\
    },\
    -- The Ridorana Lighthouse\
    [776] = {\
        [11308] = 4, -- Solar Storm\
        [11316] = 5, -- Death Strike\
        [11325] = 4, -- Water IV\
        [11364] = 5, -- Incinerate\
        [11484] = 5, -- Fire IV\
        [11612] = 5, -- Incinerate\
        [11613] = 5, -- Incinerate\
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
        [15559] = 5, -- the Burning Sky\
        [15567] = 3, -- Shrill Shriek\
        [15587] = 4, -- Shadow Wreck\
    },\
    -- The Twinning\
    [840] = {\
        [15716] = 4, -- Beastly Roar\
        [15853] = 3, -- Thunder Beam\
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
        [15691] = 4, -- Bright Sabbath\
    },\
    -- The Copied Factory\
    [882] = {\
        [18261] = 4, -- Diffuse Laser\
        [18437] = 2, -- Laser-resistance Test\
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
								[19306] = 4, -- Inscrutability\
								[19315] = 4, -- Inscrutability\
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
\
		-- if sally installed, use hotbar, otherwise use base\
		if SallyRDM ~= nil then SallyRDM.HotBarConfig.Addle.enabled = false else	actionskill:Cast(eventArgs.entityID) end \
\
  self.eventConditionMismatch = true -- suppressing the log\
  self.used = true\
  return nil\
end\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Addle";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "be5f5b27-65f9-521a-bbd9-38904c2f0b26";
	};
	[3] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "if Player.job ~= 35 or (data.nilsPlayground ~= nil and data.nilsPlayground.timeOfDeath ~= nil and TimeSince(data.nilsPlayground.timeOfDeath) < 5000) or Player.level < 32 or (xivopeners_rdm ~= nil and xivopeners_rdm.openerStarted == true) or (SallyRDM ~= nil and SallyRDM.SkillSettings.Opener.enabled == true) then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 7520)\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- open world checks, instances are regular parties (even from PF)\
local hasRaidbuff = false\
local plist = EntityList.crossworldparty\
if (table.valid(plist)) then\
    for i, member in pairs(plist) do\
        if HasBuff(member.id, 141) then -- battle voice\
            local hasRaidbuff = true\
        end\
    end\
else\
    plist = EntityList.myparty\
    if (table.valid(plist)) then\
        for i, member in pairs(plist) do\
            if HasBuff(member.id, 141) then  -- battle voice\
                local hasRaidbuff = true\
            end\
        end\
    end\
end\
\
local target = Player:GetTarget()\
if target ~= nil and table.valid(target) then\
    -- 638 vulnability/trick attack, 1221 Chain Stratagem\
    if HasBuff(target.id, 638) or HasBuff(target.id, 1221) then local hasRaidbuff = true end\
end\
\
-- 786 Battle litany, 1185 Brotherhood, 1822 Technical Finish, 1239 Embolden ,1213 Devotion\
if HasBuff(Player.id, 786) or HasBuff(Player.id, 1185) or HasBuff(Player.id, 1822) or HasBuff(Player.id, 1239) or HasBuff(Player.id, 1213) then local hasRaidbuff = true end\
\
if hasRaidbuff then if SallyRDM ~= nil then SallyRDM.HotBarConfig.Embolden.enabled = false else	actionskill:Cast(Player.id) end end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Cast: Embolden";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "67b57e7c-6a08-10fa-b185-2635737c4d38";
	};
	[4] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "NilsReactionLibrary.Combat.Toggles.Handler.Jumps()\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "QT: Jumps Blacklist";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "0d5e7c10-ddb0-eff1-ab20-e30dc2c480e2";
	};
	[5] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
if data.nilsPlayground.timeOfDeath == nil then data.nilsPlayground.timeOfDeath = 0 end\
\
if Player.job ~= 35 or Player.alive == true then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
data.nilsPlayground.timeOfDeath = Now()\
\
if SallyRDM ~= nil then\
  -- reset hotbar\
  SallyRDM.HotBarConfig.Addle.enabled = true\
  SallyRDM.HotBarConfig.Corps.enabled = true\
		SallyRDM.HotBarConfig.Displacement.enabled = true\
		SallyRDM.HotBarConfig.Embolden.enabled = true\
		SallyRDM.HotBarConfig.Lucid.enabled = true\
  SallyRDM.HotBarConfig.Manafication.enabled = true\
  SallyRDM.HotBarConfig.Sprint.enabled = true\
  SallyRDM.HotBarConfig.SureCast.enabled = true\
  SallyRDM.HotBarConfig.SwiftCast.enabled = true\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Reset: on death";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "902f4b9a-cfce-5c29-91b8-0d7ff9361c33";
	};
	[6] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 9;
		["execute"] = "if Player.job ~= 35 or SallyRDM == nil then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
\
-- reset hotbar\
SallyRDM.HotBarConfig.Addle.enabled = true\
SallyRDM.HotBarConfig.Corps.enabled = true\
SallyRDM.HotBarConfig.Displacement.enabled = true\
SallyRDM.HotBarConfig.Embolden.enabled = true\
SallyRDM.HotBarConfig.Lucid.enabled = true\
SallyRDM.HotBarConfig.Manafication.enabled = true\
SallyRDM.HotBarConfig.Sprint.enabled = true\
SallyRDM.HotBarConfig.SureCast.enabled = true\
SallyRDM.HotBarConfig.SwiftCast.enabled = true\
\
-- reset quick toggles\
SallyRDM.SkillSettings.Accel.enabled = true\
SallyRDM.SkillSettings.DelayMelee.enabled = true\
SallyRDM.SkillSettings.DualCastRaise.enabled = true\
SallyRDM.SkillSettings.Embolden.enabled = true\
SallyRDM.SkillSettings.JumpIn.enabled = true\
SallyRDM.SkillSettings.JumpOut.enabled = true\
SallyRDM.SkillSettings.Manafication.enabled = true\
SallyRDM.SkillSettings.MeleeCombo.enabled = true\
SallyRDM.SkillSettings.Opener.enabled = false\
-- SallyRDM.SkillSettings.Potion.enabled = true\
SallyRDM.SkillSettings.RepriseMovement.enabled = true\
SallyRDM.SkillSettings.SwiftRaise.enabled = true\
SallyRDM.SkillSettings.UseAOE.enabled = true\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["luaReturnsAction"] = false;
		["name"] = "Reset: toggles on wipe";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "861d938d-ef33-8a4d-92dc-5a6f271dc82f";
	};
}
return obj1
