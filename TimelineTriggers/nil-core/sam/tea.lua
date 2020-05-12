-- Persistent Data
local multiRefObjects = {
{},
} -- multiRefObjects
local obj1 = {
	[3] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4,
					["actionID"] = -1,
					["actionLua"] = "local LL = TensorCore.getEntityByGroup(\"ContentID\", {contentid = 9211, subgroup = \"Nearest\"})\
local LH = TensorCore.getEntityByGroup(\"ContentID\", {contentid = 9212, subgroup = \"Nearest\"})\
if LL and LH then\
		TensorCore.resetTTKTargets(LL.id, LH.id)\
end",
					["allowInterrupt"] = false,
					["conditions"] = {
					},
					["endIfUsed"] = false,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = false,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = 1,
					["targetType"] = 1,
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
			["luaReturnsAction"] = false,
			["name"] = "reset ttk",
			["throttleTime"] = 0,
			["time"] = 19.5,
			["timeRange"] = false,
			["timelineIndex"] = 3,
			["timerEndOffset"] = 0,
			["timerOffset"] = 2.5,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "b3dc595b-0ac7-7cb5-9f86-fd331526a2f8",
		},
	},
	[37] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north off",
			["throttleTime"] = 0,
			["time"] = 142.1,
			["timeRange"] = false,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 0,
			["timerOffset"] = -6,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "c52f3e5a-792e-059e-8dbf-f17eb2e471f1",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 142.1,
			["timeRange"] = false,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 1,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "1dd6b288-eaef-4fee-9a9b-06d8b5e43874",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion Off",
			["throttleTime"] = 0,
			["time"] = 142.1,
			["timeRange"] = false,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 0,
			["timerOffset"] = -10,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "b0906004-d7da-1b8d-ae84-b3d5f53758b7",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 142.1,
			["timeRange"] = true,
			["timelineIndex"] = 37,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "2cd831b9-dbda-99df-b90a-8395a7342cbb",
		},
	},
	[39] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 1,
					["actionID"] = 7548,
					["actionLua"] = "",
					["allowInterrupt"] = false,
					["conditions"] = {
						[1] = 1,
					},
					["endIfUsed"] = false,
					["gVar"] = "ACR_TensorRequiem_CD",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = true,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = false,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = 1,
					["targetType"] = 1,
					["untarget"] = false,
					["useForWeaving"] = false,
					["usePot"] = false,
					["used"] = false,
					["variableTogglesType"] = 1,
				},
				[2] = {
					["aType"] = 4,
					["actionID"] = -1,
					["actionLua"] = "data.limitCutNumber = nil\
data.limitCutTime = nil\
self.used = true",
					["allowInterrupt"] = false,
					["conditions"] = {
						[1] = 1,
					},
					["endIfUsed"] = false,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = false,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = 1,
					["targetType"] = 1,
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
					["comparator"] = 1,
					["conditionLua"] = "if data.limitCutNumber ~= nil and data.limitCutTime ~= nil then\
    local delays = {9500, 11000, 14100, 15500, 18600, 20000, 23200, 24600}\
				local delay = delays[data.limitCutNumber]\
    if delay and TimeSince(data.limitCutTime) > delay - 5000 then\
        return true\
    end\
end\
\
return false",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[1],
					["contentid"] = -1,
					["enmityValue"] = 0,
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
					["partyTargetType"] = 1,
					["rangeCheckSourceSubType"] = 1,
					["rangeCheckSourceType"] = 1,
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
			["luaReturnsAction"] = false,
			["name"] = "arm's length",
			["throttleTime"] = 0,
			["time"] = 200,
			["timeRange"] = true,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 35,
			["timerOffset"] = 0,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "f44483e0-3bab-6fb4-8ec0-c7df7eb8da3b",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local delays = {9500, 11000, 14100, 15500, 18600, 20000, 23200, 24600}\
if table.valid(data.partyLimitCutNumbers) and Argus then\
    for markerID, entityID in pairs(data.partyLimitCutNumbers) do\
        local ent = EntityList:Get(entityID)\
        if ent then\
            if markerID % 2 == 1 then -- odd, draw cone\
                Argus.addTimedConeFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 25, math.rad(90), ent.pos.h, 30, {r = 1, g = 0, b = 0}, 0.1, 0.5, delays[markerID] - 4000, ent.id, nil, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
            else -- draw line from previous even target to current marker target\
                local prevTarget = EntityList:Get(data.partyLimitCutNumbers[markerID - 1])\
                if prevTarget then\
                    Argus.addTimedRectFilled(4000, prevTarget.pos.x, prevTarget.pos.y, prevTarget.pos.z, 50, 10, prevTarget.pos.h, {r = 1, g = 0, b = 0}, 0.1, 0.5, delays[markerID] - 4000, prevTarget.id, ent.id, true, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
                end\
            end\
        end\
    end\
				data.partyLimitCutNumbers = nil\
				self.used = true\
end\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "aoe draws",
			["throttleTime"] = 0,
			["time"] = 200,
			["timeRange"] = true,
			["timelineIndex"] = 39,
			["timerEndOffset"] = 35,
			["timerOffset"] = 0,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "c796c2e1-fb36-95ef-9b60-16cf3fd2b727",
		},
	},
	[58] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north on",
			["throttleTime"] = 0,
			["time"] = 229.1,
			["timeRange"] = false,
			["timelineIndex"] = 58,
			["timerEndOffset"] = 0,
			["timerOffset"] = -6,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "81f023fb-f490-ff92-9a80-3975c213d8fb",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 229.1,
			["timeRange"] = false,
			["timelineIndex"] = 58,
			["timerEndOffset"] = 1,
			["timerOffset"] = -4,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "7d4c906e-f1c0-aff2-912c-736d0bf41954",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion Off",
			["throttleTime"] = 0,
			["time"] = 229.1,
			["timeRange"] = false,
			["timelineIndex"] = 58,
			["timerEndOffset"] = 0,
			["timerOffset"] = -10,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "82f7e730-6e02-32a7-9f2c-55d3a8da5429",
		},
		[4] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "if NilsReactionCore.Hotbar.Samurai.ThirdEye() == true then self.used = true end",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Third Eye",
			["throttleTime"] = 0,
			["time"] = 229.1,
			["timeRange"] = true,
			["timelineIndex"] = 58,
			["timerEndOffset"] = 0,
			["timerOffset"] = -4,
			["timerStartOffset"] = -3,
			["used"] = false,
			["uuid"] = "a03f83cd-5cb5-5876-8490-ee58819d8710",
		},
	},
	[81] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4,
					["actionID"] = -1,
					["actionLua"] = "local time = 7500\
local angle = 90\
local t = TensorCore.getEntityByGroup(\"ContentID\", {contentid = 9216, subgroup = \"Nearest\"})\
if t and Argus then\
				Argus.addTimedConeFilled(time, t.pos.x, t.pos.y, t.pos.z, 25, math.rad(angle), t.pos.h, 30, {r = 1, g = 0, b = 0}, 0.1, 0.5, 0, t.id, nil, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
self.used = true",
					["allowInterrupt"] = false,
					["conditions"] = {
					},
					["endIfUsed"] = false,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = false,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = 1,
					["targetType"] = 1,
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
			["luaReturnsAction"] = false,
			["name"] = "draw apoc ray",
			["throttleTime"] = 0,
			["time"] = 382.1,
			["timeRange"] = false,
			["timelineIndex"] = 81,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "f82672ba-1fe4-e2b4-b277-402f034c177f",
		},
	},
	[86] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north off",
			["throttleTime"] = 0,
			["time"] = 423.7,
			["timeRange"] = false,
			["timelineIndex"] = 86,
			["timerEndOffset"] = 0,
			["timerOffset"] = -30,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "a807542c-8a4a-fcef-826d-820a4e298836",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 423.7,
			["timeRange"] = false,
			["timelineIndex"] = 86,
			["timerEndOffset"] = 1,
			["timerOffset"] = -30,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "ec471692-67e8-10c0-ab8d-a184373f8508",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion Off",
			["throttleTime"] = 0,
			["time"] = 423.7,
			["timeRange"] = false,
			["timelineIndex"] = 86,
			["timerEndOffset"] = 0,
			["timerOffset"] = -30,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "6ed9ebd1-f4e9-ef43-b2bd-d1bd2353b58d",
		},
	},
	[88] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion On",
			["throttleTime"] = 0,
			["time"] = 500,
			["timeRange"] = false,
			["timelineIndex"] = 88,
			["timerEndOffset"] = 0,
			["timerOffset"] = -1,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "97dd53a8-102b-34e7-b3ff-adf80d25a9f4",
		},
	},
	[95] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north on",
			["throttleTime"] = 0,
			["time"] = 511.4,
			["timeRange"] = false,
			["timelineIndex"] = 95,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "483790b4-aaeb-f775-ad87-e5619540b1dc",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 511.4,
			["timeRange"] = false,
			["timelineIndex"] = 95,
			["timerEndOffset"] = 1,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "06291c70-ccf3-e210-b375-3b9123451cc7",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion On",
			["throttleTime"] = 0,
			["time"] = 511.4,
			["timeRange"] = false,
			["timelineIndex"] = 95,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "edb4e3de-e8dc-5969-a35e-1f1469f229c4",
		},
	},
	[101] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north off",
			["throttleTime"] = 0,
			["time"] = 541,
			["timeRange"] = false,
			["timelineIndex"] = 101,
			["timerEndOffset"] = 0,
			["timerOffset"] = -12,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "73c18cbe-92be-ebd9-b4fc-af0dd40bb5e7",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 541,
			["timeRange"] = false,
			["timelineIndex"] = 101,
			["timerEndOffset"] = 1,
			["timerOffset"] = -12,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "012bd738-40d5-90e3-8f3f-4fbe9215c472",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion Off",
			["throttleTime"] = 0,
			["time"] = 541,
			["timeRange"] = false,
			["timelineIndex"] = 101,
			["timerEndOffset"] = 0,
			["timerOffset"] = -12,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "8e979d04-b924-7bc6-9cbb-6bf273ac6334",
		},
	},
	[114] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north on",
			["throttleTime"] = 0,
			["time"] = 600.3,
			["timeRange"] = false,
			["timelineIndex"] = 114,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "b66de6c1-f347-da8a-a523-41f61ea3b4c4",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 600.3,
			["timeRange"] = false,
			["timelineIndex"] = 114,
			["timerEndOffset"] = 1,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "c0bd1ca2-7c9f-7ca5-84ae-e86e5ad195f6",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion On",
			["throttleTime"] = 0,
			["time"] = 600.3,
			["timeRange"] = false,
			["timelineIndex"] = 114,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "1b2ec31c-feb6-1e80-84b3-03540dfd6c51",
		},
	},
	[120] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north off",
			["throttleTime"] = 0,
			["time"] = 632.3,
			["timeRange"] = false,
			["timelineIndex"] = 120,
			["timerEndOffset"] = 0,
			["timerOffset"] = -7,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "83b9e006-b4ce-b4f0-b3f9-ba15c52f0867",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 632.3,
			["timeRange"] = false,
			["timelineIndex"] = 120,
			["timerEndOffset"] = 1,
			["timerOffset"] = -7,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "2afd09ce-687f-bc49-8f86-e99bb7e4f2a3",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion Off",
			["throttleTime"] = 0,
			["time"] = 632.3,
			["timeRange"] = false,
			["timelineIndex"] = 120,
			["timerEndOffset"] = 0,
			["timerOffset"] = -7,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "6cd14a07-bc04-ff17-89b3-fe990b21f6eb",
		},
	},
	[125] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4,
					["actionID"] = -1,
					["actionLua"] = "local time = 7500\
local angle = 90\
local t = TensorCore.getEntityByGroup(\"ContentID\", {contentid = 9216, subgroup = \"Nearest\"})\
if t and Argus then\
				Argus.addTimedConeFilled(time, t.pos.x, t.pos.y, t.pos.z, 25, math.rad(angle), t.pos.h, 30, {r = 1, g = 0, b = 0}, 0.1, 0.5, 0, nil, nil, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
self.used = true",
					["allowInterrupt"] = false,
					["conditions"] = {
					},
					["endIfUsed"] = false,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = false,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = 1,
					["targetType"] = 1,
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
			["luaReturnsAction"] = false,
			["name"] = "draw apoc ray",
			["throttleTime"] = 0,
			["time"] = 650.9,
			["timeRange"] = false,
			["timelineIndex"] = 125,
			["timerEndOffset"] = 0,
			["timerOffset"] = 0,
			["timerStartOffset"] = 0,
			["used"] = false,
			["uuid"] = "b4ab2f0b-4a21-401c-8ce6-1a7c2f06a590",
		},
	},
	[126] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 1,
					["actionID"] = 7548,
					["actionLua"] = "",
					["allowInterrupt"] = false,
					["conditions"] = {
						[1] = 1,
					},
					["endIfUsed"] = false,
					["gVar"] = "ACR_TensorRequiem_CD",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = true,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = false,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = 1,
					["targetType"] = 1,
					["untarget"] = false,
					["useForWeaving"] = false,
					["usePot"] = false,
					["used"] = false,
					["variableTogglesType"] = 1,
				},
				[2] = {
					["aType"] = 4,
					["actionID"] = -1,
					["actionLua"] = "data.limitCutNumber = nil\
data.limitCutTime = nil\
self.used = true",
					["allowInterrupt"] = false,
					["conditions"] = {
						[1] = 1,
					},
					["endIfUsed"] = false,
					["gVar"] = "",
					["gVarIndex"] = 1,
					["gVarValue"] = 1,
					["ignoreWeaveRules"] = false,
					["luaReturnsAction"] = false,
					["name"] = "",
					["potType"] = 1,
					["setTarget"] = false,
					["stopCasting"] = false,
					["stopMoving"] = false,
					["targetContentID"] = -1,
					["targetName"] = "",
					["targetSubType"] = 1,
					["targetType"] = 1,
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
					["comparator"] = 1,
					["conditionLua"] = "if data.limitCutNumber ~= nil and data.limitCutTime ~= nil then\
    local delays = {9200, 10700, 13400, 15000, 17700, 19200, 22000, 23400}\
				local delay = delays[data.limitCutNumber]\
    if delay and TimeSince(data.limitCutTime) > delay - 5000 then\
        return true\
    end\
end\
\
return false",
					["conditionType"] = 1,
					["conditions"] = multiRefObjects[1],
					["contentid"] = -1,
					["enmityValue"] = 0,
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
					["partyTargetType"] = 1,
					["rangeCheckSourceSubType"] = 1,
					["rangeCheckSourceType"] = 1,
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
			["luaReturnsAction"] = false,
			["name"] = "arm's length",
			["throttleTime"] = 0,
			["time"] = 650.9,
			["timeRange"] = true,
			["timelineIndex"] = 126,
			["timerEndOffset"] = 35,
			["timerOffset"] = 0,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "6ba36a60-597d-5967-822b-63110693148e",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "local delays = {9200, 10700, 13400, 15000, 17700, 19200, 22000, 23400}\
if table.valid(data.partyLimitCutNumbers) and Argus then\
    for markerID, entityID in pairs(data.partyLimitCutNumbers) do\
        local ent = EntityList:Get(entityID)\
        if ent then\
            if markerID % 2 == 1 then -- odd, draw cone\
                Argus.addTimedConeFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 25, math.rad(90), ent.pos.h, 30, {r = 1, g = 0, b = 0}, 0.1, 0.5, delays[markerID] - 4000, ent.id, nil, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
            else -- draw line from previous even target to current marker target\
                local prevTarget = EntityList:Get(data.partyLimitCutNumbers[markerID - 1])\
                if prevTarget then\
                    Argus.addTimedRectFilled(4000, prevTarget.pos.x, prevTarget.pos.y, prevTarget.pos.z, 50, 10, prevTarget.pos.h, {r = 1, g = 0, b = 0}, 0.1, 0.5, delays[markerID] - 4000, prevTarget.id, ent.id, true, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
                end\
            end\
        end\
    end\
				data.partyLimitCutNumbers = nil\
				self.used = true\
end\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "aoe draws",
			["throttleTime"] = 0,
			["time"] = 650.9,
			["timeRange"] = true,
			["timelineIndex"] = 126,
			["timerEndOffset"] = 35,
			["timerOffset"] = 0,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "3ef4e836-b374-4e72-b8b0-69a072cf36ff",
		},
	},
	[141] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north on",
			["throttleTime"] = 0,
			["time"] = 674.2,
			["timeRange"] = false,
			["timelineIndex"] = 141,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "b8a18cee-f386-2d55-a889-a5ddc3756278",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 674.2,
			["timeRange"] = false,
			["timelineIndex"] = 141,
			["timerEndOffset"] = 1,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "06bf8450-52fa-6935-908f-e9ba1d73f92d",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion On",
			["throttleTime"] = 0,
			["time"] = 674.2,
			["timeRange"] = false,
			["timelineIndex"] = 141,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "f30914c6-ab07-61f1-bd7c-fcc4f35e766b",
		},
	},
	[152] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north off",
			["throttleTime"] = 0,
			["time"] = 787.4,
			["timeRange"] = false,
			["timelineIndex"] = 152,
			["timerEndOffset"] = 0,
			["timerOffset"] = -30,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "0d4edad2-69cc-ca97-8b24-e2d6d8bd9a1f",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 787.4,
			["timeRange"] = false,
			["timelineIndex"] = 152,
			["timerEndOffset"] = 1,
			["timerOffset"] = -30,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "52304ea6-d95c-53c1-aa3a-f636b11e407f",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion Off",
			["throttleTime"] = 0,
			["time"] = 787.4,
			["timeRange"] = false,
			["timelineIndex"] = 152,
			["timerEndOffset"] = 0,
			["timerOffset"] = -30,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "b0693cbe-b79d-0273-961b-799721d17a20",
		},
	},
	[153] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north on",
			["throttleTime"] = 0,
			["time"] = 845.4,
			["timeRange"] = false,
			["timelineIndex"] = 153,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "86539ed3-8f5b-f6e2-9053-e7099f4d5643",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 845.4,
			["timeRange"] = false,
			["timelineIndex"] = 153,
			["timerEndOffset"] = 1,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "f371725c-7f77-59fc-a756-0509e09c4745",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion On",
			["throttleTime"] = 0,
			["time"] = 845.4,
			["timeRange"] = false,
			["timelineIndex"] = 153,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "b707200b-4473-9adc-ab3d-807eb9fcb900",
		},
	},
	[168] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north off",
			["throttleTime"] = 0,
			["time"] = 985.6,
			["timeRange"] = false,
			["timelineIndex"] = 168,
			["timerEndOffset"] = 0,
			["timerOffset"] = -15,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "3130fadf-6e0a-510b-bb32-7bbf524151db",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 985.6,
			["timeRange"] = false,
			["timelineIndex"] = 168,
			["timerEndOffset"] = 1,
			["timerOffset"] = -15,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "93398964-eb9a-319d-ba67-f58cb182ee68",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion Off",
			["throttleTime"] = 0,
			["time"] = 985.6,
			["timeRange"] = false,
			["timelineIndex"] = 168,
			["timerEndOffset"] = 0,
			["timerOffset"] = -15,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "7e067f90-b973-24d3-a9b0-53e46e9c66c6",
		},
	},
	[173] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north on",
			["throttleTime"] = 0,
			["time"] = 998.8,
			["timeRange"] = false,
			["timelineIndex"] = 173,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "448dc5ba-1a0c-2bab-b818-f562b11fe681",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 998.8,
			["timeRange"] = false,
			["timelineIndex"] = 173,
			["timerEndOffset"] = 1,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "06ab5f81-2d51-623f-8c4c-810c73c0b782",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion On",
			["throttleTime"] = 0,
			["time"] = 998.8,
			["timeRange"] = false,
			["timelineIndex"] = 173,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "67017833-a3a1-4c25-870f-b6074d1b381d",
		},
	},
	[186] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.off, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north off",
			["throttleTime"] = 0,
			["time"] = 1073.3,
			["timeRange"] = false,
			["timelineIndex"] = 186,
			["timerEndOffset"] = 0,
			["timerOffset"] = -10,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "80633a0b-ae91-4efe-85c3-ed6619f67c96",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD Off",
			["throttleTime"] = 0,
			["time"] = 1073.3,
			["timeRange"] = false,
			["timelineIndex"] = 186,
			["timerEndOffset"] = 1,
			["timerOffset"] = -10,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "984e1f13-52ad-e327-b145-45d084aa60f2",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOff(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion Off",
			["throttleTime"] = 0,
			["time"] = 1073.3,
			["timeRange"] = false,
			["timelineIndex"] = 186,
			["timerEndOffset"] = 0,
			["timerOffset"] = -10,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "3be2da5d-9920-72d1-8085-2746175ee55c",
		},
	},
	[192] = {
		[1] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Toggles.Samurai.SmartTrueNorth(NilsReactionCore.params.on, NilsReactionCore.params.isTimeline)\
self.used = true\
",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "true north on",
			["throttleTime"] = 0,
			["time"] = 1098.5,
			["timeRange"] = false,
			["timelineIndex"] = 192,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "dc627339-0ed0-4471-add8-8e32589b01f4",
		},
		[2] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.CDOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "CD On",
			["throttleTime"] = 0,
			["time"] = 1098.5,
			["timeRange"] = false,
			["timelineIndex"] = 192,
			["timerEndOffset"] = 1,
			["timerOffset"] = -5,
			["timerStartOffset"] = -4,
			["used"] = false,
			["uuid"] = "4659cd9c-3fe6-0091-b153-f7cb8f85e234",
		},
		[3] = {
			["actions"] = {
			},
			["conditions"] = {
			},
			["enabled"] = true,
			["execute"] = "NilsReactionCore.Logic.Toggles.PotionOn(NilsReactionCore.params.isTimeline)\
self.used = true",
			["executeType"] = 2,
			["lastUse"] = 0,
			["loop"] = false,
			["luaReturnsAction"] = false,
			["name"] = "Potion On",
			["throttleTime"] = 0,
			["time"] = 1098.5,
			["timeRange"] = false,
			["timelineIndex"] = 192,
			["timerEndOffset"] = 0,
			["timerOffset"] = -5,
			["timerStartOffset"] = -10,
			["used"] = false,
			["uuid"] = "6b331b9c-f991-6c53-97e0-4c2a6c40a578",
		},
	},
	["mapID"] = 887,
	["version"] = 1,
}
return obj1
