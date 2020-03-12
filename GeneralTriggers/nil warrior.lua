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
		* Rhakin\
]]\
\
-- *************************************************************************************\
\
--[[ ** Verson 3 **\
* fixed an opps on the player alive check\
]]\
\
--[[ ** Verson 2 **\
* massive refactor, removes the need to have sally vs other reactions\
]]\
";
		["executeType"] = 2;
		["name"] = "warrior-general-changes";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 0;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "56826b54-c6c5-d545-bce6-1afda454c7a9";
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
		["uuid"] = "d3b0aa39-c52d-402d-bf43-f8c182d1d13b";
	};
	[3] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 21 or Player.level < 32 or (xivopeners_war ~= nil and xivopeners_war.openerStarted == true) or (SallyWAR ~= nil and SallyWAR.SkillSettings.Opener.enabled == true) or (Goliath ~= nil and Goliath_Toggle(1, 2) == true) then\
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
if contentTable[localmapid] and ent ~= nil then\
    if contentTable[localmapid][eventArgs.spellID] then\
        if ent.castinginfo.casttime - ent.castinginfo.channeltime <= tonumber(contentTable[localmapid][eventArgs.spellID]) then\
\
										-- if sally installed, use hotbar, otherwise use base\
										if SallyWAR ~= nil then SallyWAR.HotBarConfig.Armslength.enabled = false else	actionskill:Cast() end \
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
		["uuid"] = "6df25657-b516-a801-88db-ab06142b2dfa";
	};
	[4] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 21 or (xivopeners_war ~= nil and xivopeners_war.openerStarted == true) or (SallyWAR ~= nil and SallyWAR.SkillSettings.Opener.enabled == true)  or (Goliath ~= nil and Goliath_Toggle(1, 2) == true)  then\
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
		["uuid"] = "e0f02dcf-2558-c44d-82b5-601f85e0c354";
	};
	[5] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "if Player.job ~= 21 or Player.level < 18 or (xivopeners_war ~= nil and xivopeners_war.openerStarted == true) or (SallyWAR ~= nil and SallyWAR.SkillSettings.Opener.enabled == true) or (Goliath ~= nil and Goliath_Toggle(1, 2) == true)  then\
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
local ent = EntityList:Get(eventArgs.entityID)\
if ent ~= nil then\
		local cinfo = ent.castinginfo\
		if cinfo.castinginterruptible == true and cinfo.casttime <= 4 then\
				-- if sally installed, use hotbar, otherwise use base\
				if SallyWAR ~= nil then SallyWAR.HotBarConfig.Interject.enabled = false else	actionskill:Cast(eventArgs.entityID) end\
  end\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil";
		["executeType"] = 2;
		["name"] = "Cast: Interject";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "41037981-e3fc-f399-ab2d-f24e0c6dbcb9";
	};
	[6] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "if Player.job ~= 21 or Player.level < 58 or (xivopeners_war ~= nil and xivopeners_war.openerStarted == true) or (SallyWAR ~= nil and SallyWAR.SkillSettings.Opener.enabled == true) or (Goliath ~= nil and Goliath_Toggle(1, 2) == true)  then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 3552)\
local isActionAvailable = actionskill.cdmax - actionskill.cd < 1\
\
if isActionAvailable == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- check regen buffs\
local hasRegen = false\
if  HasBuff(Player.id, 158) or HasBuff(Player.id, 150) or HasBuff(Player.id, 839) then\
		hasRegen = true\
end\
\
if hasRegen and Player.hp.percent < 30 then\
		-- if sally installed, use hotbar, otherwise use base\
		if SallyWAR ~= nil then SallyWAR.HotBarConfig.Equilibrium.enabled = false else	actionskill:Cast() end \
\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if hasRegen == false and Player.hp.percent < 40 then\
	 if SallyWAR ~= nil then SallyWAR.HotBarConfig.Equilibrium.enabled = false else	actionskill:Cast() end \
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil\
\
\
\
";
		["executeType"] = 2;
		["name"] = "Cast: Equilibrium";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "94481fe2-5147-9eed-9798-4af3a9fb0f8a";
	};
	[7] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "if Player.job ~= 21 or Player.level < 56 or (xivopeners_war ~= nil and xivopeners_war.openerStarted == true) or (SallyWAR ~= nil and SallyWAR.SkillSettings.Opener.enabled == true) or (Goliath ~= nil and Goliath_Toggle(1, 2) == true)  then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 3551) -- raws id, they share the same cooldown and raw is lower level skill\
if actionskill.cdmax - actionskill.cd > 1 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- limit this to only happen when you have a target, should prevent it from trying to go off during cut scene\
local target = Player:GetTarget()\
if target == nil or not table.valid(target) or not target.attackable then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if inner release is about to come off cooldown, hold it\
local innerRelease = ActionList:Get(1, 7389)\
if innerRelease.cdmax - innerRelease.cd <= 5 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if player is below level 76, just cast raw as Nascent is not available\
if Player.level < 76 then\
		if SallyWAR ~= nil then SallyWAR.HotBarConfig.RawIntuition.enabled = false else	ActionList:Get(1, 3551):Cast() end\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if more then three mobs on you, use raw intuition\
if TableSize(EntityList(\"attackable,aggro,targetingme,maxdistance=30,distanceto=\" .. tostring(Player.id))) >= 3 then\
		if SallyWAR ~= nil then SallyWAR.HotBarConfig.RawIntuition.enabled = false else	ActionList:Get(1, 3551):Cast() end\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if there is another tank use it on them\
local plist = EntityList(\"alive,myparty,friendly,maxdistance=30,distanceto=\" .. tostring(Player.id))\
for i, member in pairs(plist) do\
		if (member.job == 19 or member.job == 21 or member.job == 22 or member.job == 37) and MissingBuff(member,1858) then\
				-- currently sallywar nascent only supports a fixed target, until that is fixed, have to use basic function\
				-- Nascent Flash		\
				ActionList:Get(1, 16464):Cast(member.id)\
				self.eventConditionMismatch = true -- suppressing the log\
				self.used = true \
				return nil\
		end\
end\
\
-- otherwise just targer the lowest health member\
local plistOne = EntityList(\"alive,myparty,friendly,lowesthealth, maxdistance=30,distanceto=\" .. tostring(Player.id))\
-- support for npc team (ex. Trust)\
if not table.valid(plistOne) then \
		plistOne = EntityList(\"alive,chartype=9,targetable,maxdistance=30,distanceto=\" .. tostring(Player.id))\
end\
for i, member in pairs(plistOne) do\
		if MissingBuff(member,1858) then\
				-- Nascent Flash		\
				ActionList:Get(1, 16464):Cast(member.id)\
				self.eventConditionMismatch = true -- suppressing the log\
				self.used = true \
				return nil\
		end\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil\
\
\
";
		["executeType"] = 2;
		["name"] = "Cast: NascentorRaw";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "97e042bf-e2cd-0327-bd68-d2eb98b9c811";
	};
}
return obj1
