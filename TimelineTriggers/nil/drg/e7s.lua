-- Persistent Data
local multiRefObjects = {
{};{};
} -- multiRefObjects
local obj1 = {
	[2] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "-- LIBRARY REQUIRED\
-- Install https://github.com/nil2share/tensorreactions/tree/master/Nil%20Reaction%20Library into C:\\MINIONAPP\\Bots\\FFXIVMinion64\\LuaMods\\Nil Reaction Library\
\
";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "dragoon-timeline-e7s-changes";
			["throttleTime"] = 0;
			["time"] = 13;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "799167c7-6c30-bc57-82ae-231b7329b48e";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Handler.Reset()\
self.used = true\
";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Reset Toggle Controls";
			["throttleTime"] = 0;
			["time"] = 13;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "de975e26-e848-527f-bb87-ae3f0ae848ef";
		};
	};
	[20] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOff(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump off";
			["throttleTime"] = 0;
			["time"] = 111;
			["timeRange"] = false;
			["timelineIndex"] = 20;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "ae377689-bc47-bf01-ae37-71351722eca5";
		};
	};
	[22] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["name"] = "";
					["potType"] = 1;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 5;
					["untarget"] = false;
					["useForWeaving"] = false;
					["usePot"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = 149;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[2];
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["inRangeValue"] = 0;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "";
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["rangeCheckSourceSubType"] = 1;
					["rangeCheckSourceType"] = 1;
					["rangeSourceContentID"] = -1;
					["rangeSourceName"] = "";
					["setEventTargetSubtype"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "Retarget boss when stuned";
			["throttleTime"] = 0;
			["time"] = 116.7;
			["timeRange"] = true;
			["timelineIndex"] = 22;
			["timerEndOffset"] = 25;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "00c4ad46-807e-7178-be0c-6d2ebc366ddc";
		};
	};
	[23] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOn(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump on";
			["throttleTime"] = 0;
			["time"] = 122.9;
			["timeRange"] = false;
			["timelineIndex"] = 23;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "8bd3e487-b153-8ced-a500-ebf06b42086a";
		};
	};
	[32] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.PotionOff(NilsReactionLibrary.params.isTimeline)\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "turn off pots";
			["throttleTime"] = 0;
			["time"] = 163.3;
			["timeRange"] = false;
			["timelineIndex"] = 32;
			["timerEndOffset"] = 2;
			["timerOffset"] = -1;
			["timerStartOffset"] = -1;
			["used"] = false;
			["uuid"] = "07b80f0a-d0e0-998c-a36e-8814c452422b";
		};
	};
	[37] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOff(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump off";
			["throttleTime"] = 0;
			["time"] = 174.5;
			["timeRange"] = false;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "fbd0d3ca-9da7-795a-8b7f-071c104b26e2";
		};
	};
	[38] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["name"] = "";
					["potType"] = 1;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 5;
					["untarget"] = false;
					["useForWeaving"] = false;
					["usePot"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = 149;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[2];
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["inRangeValue"] = 0;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "";
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["rangeCheckSourceSubType"] = 1;
					["rangeCheckSourceType"] = 1;
					["rangeSourceContentID"] = -1;
					["rangeSourceName"] = "";
					["setEventTargetSubtype"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "Retarget boss when stuned";
			["throttleTime"] = 0;
			["time"] = 177.5;
			["timeRange"] = true;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 25;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "60626eb7-a099-42a8-8629-2bbd83715766";
		};
	};
	[45] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.CDOff(NilsReactionLibrary.params.isTimeline)\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD Off";
			["throttleTime"] = 0;
			["time"] = 191.7;
			["timeRange"] = false;
			["timelineIndex"] = 45;
			["timerEndOffset"] = 1;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "8166e2d8-39a9-d5f3-b1b5-f010f52e41fe";
		};
	};
	[47] = {
	};
	[51] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["name"] = "";
					["potType"] = 1;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 5;
					["untarget"] = false;
					["useForWeaving"] = false;
					["usePot"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[2];
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["inRangeValue"] = 0;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "";
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["rangeCheckSourceSubType"] = 1;
					["rangeCheckSourceType"] = 1;
					["rangeSourceContentID"] = -1;
					["rangeSourceName"] = "";
					["setEventTargetSubtype"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["throttleTime"] = 0;
			["time"] = 205.6;
			["timeRange"] = true;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "4b891a8c-a1a4-81cc-9c56-fb596c60e4ff";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.CDOn(NilsReactionLibrary.params.isTimeline)\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD On";
			["throttleTime"] = 0;
			["time"] = 205.6;
			["timeRange"] = false;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 1;
			["timerOffset"] = -2;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "8191d42e-07ba-b128-ae0a-30f9ca484fa3";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOn(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump on";
			["throttleTime"] = 0;
			["time"] = 205.6;
			["timeRange"] = false;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 2;
			["timerOffset"] = -0.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "4d71485e-ab56-9308-bde1-a59485c1fcf4";
		};
	};
	[52] = {
	};
	[57] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOff(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump off";
			["throttleTime"] = 0;
			["time"] = 254.5;
			["timeRange"] = false;
			["timelineIndex"] = 57;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "23ceeeb1-2b85-9c6c-bf0a-b7d1ee456310";
		};
	};
	[58] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["name"] = "";
					["potType"] = 1;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 5;
					["untarget"] = false;
					["useForWeaving"] = false;
					["usePot"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = 149;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[2];
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["inRangeValue"] = 0;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "";
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["rangeCheckSourceSubType"] = 1;
					["rangeCheckSourceType"] = 1;
					["rangeSourceContentID"] = -1;
					["rangeSourceName"] = "";
					["setEventTargetSubtype"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "Retarget boss when stuned";
			["throttleTime"] = 0;
			["time"] = 264.3;
			["timeRange"] = true;
			["timelineIndex"] = 58;
			["timerEndOffset"] = 25;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "39828cc4-9cca-4046-bae3-f504c58ee17d";
		};
	};
	[69] = {
	};
	[71] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Logic.Toggles.CDOff(NilsReactionLibrary.params.isTimeline) == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD Off";
			["throttleTime"] = 0;
			["time"] = 500;
			["timeRange"] = true;
			["timelineIndex"] = 71;
			["timerEndOffset"] = 1;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "2e5c016b-b295-f85a-a7aa-517c06b576e8";
		};
	};
	[74] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.PotionOn(NilsReactionLibrary.params.isTimeline)\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "turn on pots";
			["throttleTime"] = 0;
			["time"] = 510.3;
			["timeRange"] = false;
			["timelineIndex"] = 74;
			["timerEndOffset"] = 2;
			["timerOffset"] = -1;
			["timerStartOffset"] = -1;
			["used"] = false;
			["uuid"] = "d498d4ab-157c-f0a5-9504-c57772007d73";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["name"] = "";
					["potType"] = 1;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 5;
					["untarget"] = false;
					["useForWeaving"] = false;
					["usePot"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = {
					};
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable then return false end\
return true\
";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[2];
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["inRangeValue"] = 0;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "";
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["rangeCheckSourceSubType"] = 1;
					["rangeCheckSourceType"] = 1;
					["rangeSourceContentID"] = -1;
					["rangeSourceName"] = "";
					["setEventTargetSubtype"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["throttleTime"] = 0;
			["time"] = 510.3;
			["timeRange"] = true;
			["timelineIndex"] = 74;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "5a5a01ed-ab21-ed88-8221-641a4acd48ce";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.CDOn(NilsReactionLibrary.params.isTimeline)\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD On";
			["throttleTime"] = 0;
			["time"] = 510.3;
			["timeRange"] = false;
			["timelineIndex"] = 74;
			["timerEndOffset"] = 1;
			["timerOffset"] = -0.5;
			["timerStartOffset"] = -0.5;
			["used"] = false;
			["uuid"] = "fc7191af-6a4c-2ebd-8807-38f4162e275f";
		};
		[4] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOn(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump on";
			["throttleTime"] = 0;
			["time"] = 510.3;
			["timeRange"] = false;
			["timelineIndex"] = 74;
			["timerEndOffset"] = 2;
			["timerOffset"] = -0.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "46ee9d5d-3422-85c5-94eb-3e7323e73e30";
		};
	};
	[103] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOff(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump off";
			["throttleTime"] = 0;
			["time"] = 646.4;
			["timeRange"] = true;
			["timelineIndex"] = 103;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "92dd7675-723b-7710-b7f9-97587158d71a";
		};
	};
	[107] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["name"] = "";
					["potType"] = 1;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 5;
					["untarget"] = false;
					["useForWeaving"] = false;
					["usePot"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[2];
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["inRangeValue"] = 0;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "";
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["rangeCheckSourceSubType"] = 1;
					["rangeCheckSourceType"] = 1;
					["rangeSourceContentID"] = -1;
					["rangeSourceName"] = "";
					["setEventTargetSubtype"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["throttleTime"] = 0;
			["time"] = 673.5;
			["timeRange"] = true;
			["timelineIndex"] = 107;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "6c6080f8-52db-d831-abe4-cb5f8da9b17d";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local target = Player:GetTarget()\
if target ~= nil and table.valid(target) and target.attackable and target.hp.percent < 2 then\
  if NilsReactionLibrary.Logic.Toggles.BurnBossOn(NilsReactionLibrary.params.isTimeline) == true then\
    self.used = true\
  end\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Burn Boss";
			["throttleTime"] = 0;
			["time"] = 673.5;
			["timeRange"] = true;
			["timelineIndex"] = 107;
			["timerEndOffset"] = 200;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "639c7268-4c8b-930c-bef9-eeb91b5a2846";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOn(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump on";
			["throttleTime"] = 0;
			["time"] = 673.5;
			["timeRange"] = true;
			["timelineIndex"] = 107;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "e7bfa386-7507-5033-bb01-9305032a8713";
		};
	};
	[108] = {
	};
	[110] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOff(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump off";
			["throttleTime"] = 0;
			["time"] = 716.9;
			["timeRange"] = true;
			["timelineIndex"] = 110;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "6425eef1-6435-533c-abe2-ae5a9c2a262f";
		};
	};
	[111] = {
	};
	[112] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOn(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump on";
			["throttleTime"] = 0;
			["time"] = 728.3;
			["timeRange"] = true;
			["timelineIndex"] = 112;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "a9794141-1850-d228-a9d8-eee20121b233";
		};
	};
	[115] = {
	};
	[117] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOff(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump off";
			["throttleTime"] = 0;
			["time"] = 795.1;
			["timeRange"] = true;
			["timelineIndex"] = 117;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "f35a6696-aafd-4955-b5a9-c851ef94f501";
		};
	};
	[118] = {
	};
	[119] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Logic.Toggles.JumpsOn(NilsReactionLibrary.params.isTimeline)";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Jump on";
			["throttleTime"] = 0;
			["time"] = 806.5;
			["timeRange"] = true;
			["timelineIndex"] = 119;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "24d8a5b7-81ee-b5bb-b98b-adc9ff5d5d29";
		};
	};
	["mapID"] = 908;
	["version"] = 6;
}
return obj1
