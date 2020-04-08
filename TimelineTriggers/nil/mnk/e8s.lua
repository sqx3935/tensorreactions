-- Persistent Data
local multiRefObjects = {
{};{};{};
} -- multiRefObjects
local obj1 = {
	[2] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "-- ** Contributors **\
--[[\
		* Nil (maintainer)\
]]\
\
-- *************************************************************************************\
\
-- LIBRARY REQUIRED\
\
-- Install https://github.com/nil2share/tensorreactions/tree/master/Nil%20Reaction%20Library into C:\\MINIONAPP\\Bots\\FFXIVMinion64\\LuaMods\\Nil Reaction Library\
\
--[[ ** ChangeLog **\
* [\"4.0.0\"] = \"Initial release \"\
*	[\"4.1.0\"] = \"timeline reaction\",\
]]\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "monk-timeline-e8s-changes";
			["time"] = 16;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "60e755b5-29f3-29bb-85a4-d4b1b38807d3";
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
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Reset Toggle Controls";
			["time"] = 16;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "6356341b-fdb3-c706-97b8-87b0ce7866c5";
		};
	};
	[8] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 63.7;
			["timeRange"] = true;
			["timelineIndex"] = 8;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "595f91ac-a5a4-9d24-ba6f-608aba4ff695";
		};
	};
	[11] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 76.9;
			["timeRange"] = true;
			["timelineIndex"] = 11;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "2d01d6c3-9609-1504-8d60-e813850d3777";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Sprint()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
						[2] = 2;
						[3] = 3;
						[4] = 4;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = true;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
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
					["buffID"] = 240;
					["buffIDList"] = multiRefObjects[3];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 496;
					["buffIDList"] = multiRefObjects[3];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[3] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1186;
					["buffIDList"] = multiRefObjects[3];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[4] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 3;
					["buffDuration"] = 15;
					["buffID"] = 240;
					["buffIDList"] = multiRefObjects[3];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "Sprint early if Heavy";
			["time"] = 76.9;
			["timeRange"] = true;
			["timelineIndex"] = 11;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "fb9c1473-5944-3bc9-a7b1-5ce58594d318";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Sprint()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Sprint";
			["time"] = 76.9;
			["timeRange"] = true;
			["timelineIndex"] = 11;
			["timerEndOffset"] = 3;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "19c5d1b2-629e-2fee-bb34-027b30d3f2bb";
		};
	};
	[20] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Feint()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Feint";
			["time"] = 101.7;
			["timeRange"] = true;
			["timelineIndex"] = 20;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "de6ad837-8323-32dc-880a-38572e16c19a";
		};
	};
	[24] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 137.4;
			["timeRange"] = true;
			["timelineIndex"] = 24;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "830b84aa-8759-3cea-9a1c-2d1796f22106";
		};
	};
	[33] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 193.3;
			["timeRange"] = true;
			["timelineIndex"] = 33;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "a0f94639-1e7e-6f91-b20d-84f29f77e6c6";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Logic.Toggles.PotionOff(NilsReactionLibrary.params.isTimeline) == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Potion Off";
			["time"] = 193.3;
			["timeRange"] = true;
			["timelineIndex"] = 33;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -10;
			["used"] = false;
			["uuid"] = "797cd297-cf86-d320-97e9-2a19e6dfcac8";
		};
	};
	[34] = {
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
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD Off";
			["time"] = 201.5;
			["timeRange"] = true;
			["timelineIndex"] = 34;
			["timerEndOffset"] = 1;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "bfb6a299-6be3-7553-86e5-a5dd73ac8de0";
		};
	};
	[36] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Logic.Toggles.CDOn(NilsReactionLibrary.params.isTimeline) == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD On";
			["time"] = 213;
			["timeRange"] = true;
			["timelineIndex"] = 36;
			["timerEndOffset"] = 6;
			["timerOffset"] = 0;
			["timerStartOffset"] = 4;
			["used"] = false;
			["uuid"] = "9c7e7c3c-3779-bc05-9800-654376b476b3";
		};
	};
	[37] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = 9320;
					["targetName"] = "Aqueous Aether";
					["targetSubType"] = 1;
					["targetType"] = 3;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target aqueous aether";
			["time"] = 229.2;
			["timeRange"] = true;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "e4b4bad2-385a-2e69-94f0-66ad16008c14";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 2;
						[2] = 1;
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "Aqueous Aether";
					["targetSubType"] = 2;
					["targetType"] = 5;
					["untarget"] = false;
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
					["conditionLua"] = "local target = Player:GetTarget()\
return target == nil or target.hp.current == 0";
					["conditionType"] = 1;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "target others";
			["time"] = 229.2;
			["timeRange"] = true;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 65;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "a7836270-c12b-6039-9eee-619813d14487";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.LegSweep(0, 50)\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = true;
			["luaReturnsAction"] = true;
			["name"] = "Leg Sweep";
			["time"] = 229.2;
			["timeRange"] = true;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "1fc9b7ca-d156-7018-99cc-9d88ee332d0a";
		};
	};
	[39] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = 9320;
					["targetName"] = "Aqueous Aether";
					["targetSubType"] = 1;
					["targetType"] = 3;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target aqueous aether";
			["time"] = 243.3;
			["timeRange"] = true;
			["timelineIndex"] = 39;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "a0100af3-dc90-5e63-99db-fd7ee9cf81bb";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.LegSweep(0, 50)\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = true;
			["luaReturnsAction"] = true;
			["name"] = "Leg Sweep";
			["time"] = 243.3;
			["timeRange"] = true;
			["timelineIndex"] = 39;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "5ae81743-986c-2cdc-9dc8-75725762cc04";
		};
	};
	[41] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = 9320;
					["targetName"] = "Aqueous Aether";
					["targetSubType"] = 1;
					["targetType"] = 3;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target aqueous aether";
			["time"] = 257.4;
			["timeRange"] = true;
			["timelineIndex"] = 41;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "06e528e8-56b1-461e-a090-5a19261d7641";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.LegSweep(0, 50)\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = true;
			["luaReturnsAction"] = true;
			["name"] = "Leg Sweep";
			["time"] = 257.4;
			["timeRange"] = true;
			["timelineIndex"] = 41;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "a6961424-7cdc-7eb1-9783-ef821cec0da7";
		};
	};
	[43] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = 9320;
					["targetName"] = "Aqueous Aether";
					["targetSubType"] = 1;
					["targetType"] = 3;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target aqueous aether";
			["time"] = 271.5;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "8ba7b171-f7e0-294a-8089-5ccb2d708ca1";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
						[2] = 2;
					};
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorMagnum_CD";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
				[2] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if not FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 3;
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
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
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 30;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 1;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["contentid"] = 9319;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[3] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 30;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "do not suicide on electric aether";
			["time"] = 271.5;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -1;
			["used"] = false;
			["uuid"] = "fc8e0455-1ef8-01a6-857f-99d8ed23fe84";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.LegSweep(0, 50)\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = true;
			["luaReturnsAction"] = true;
			["name"] = "Leg Sweep";
			["time"] = 271.5;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "84b9bf48-d592-455f-85a3-8bd3f2605899";
		};
	};
	[45] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Logic.Toggles.CDOn(NilsReactionLibrary.params.isTimeline) == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD On";
			["time"] = 292.6;
			["timeRange"] = true;
			["timelineIndex"] = 45;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 1;
			["used"] = false;
			["uuid"] = "47e75ff7-d883-7481-b7d7-57f0950f81d5";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Logic.Toggles.DOTOn(NilsReactionLibrary.params.isTimeline) == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Dot On";
			["time"] = 292.6;
			["timeRange"] = true;
			["timelineIndex"] = 45;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 1;
			["used"] = false;
			["uuid"] = "a5916937-42bc-4bc5-8a20-d8e847a3324a";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Logic.Toggles.PotionOn(NilsReactionLibrary.params.isTimeline) == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Potion On";
			["time"] = 292.6;
			["timeRange"] = true;
			["timelineIndex"] = 45;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = 5;
			["used"] = false;
			["uuid"] = "1d4d02d6-26ff-a815-8404-2506554d4b9d";
		};
	};
	[46] = {
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
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 5;
					["untarget"] = false;
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
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["time"] = 350.5;
			["timeRange"] = true;
			["timelineIndex"] = 46;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "0a67829c-5f8a-4675-91f8-c7fd52a81112";
		};
	};
	[48] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 368.6;
			["timeRange"] = true;
			["timelineIndex"] = 48;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "a23f2326-70f1-4eea-8a0f-417ed585f572";
		};
	};
	[49] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 378;
			["timeRange"] = true;
			["timelineIndex"] = 49;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "a0737d41-f464-8c36-a874-1f114b3824e2";
		};
	};
	[53] = {
	};
	[58] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 427.9;
			["timeRange"] = true;
			["timelineIndex"] = 58;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "a0164d64-ecaf-1e8d-b362-fc1e3a3866aa";
		};
	};
	[66] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Feint()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Feint";
			["time"] = 491.6;
			["timeRange"] = true;
			["timelineIndex"] = 66;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "e3e8ec5f-346f-3e4c-9847-60f8eca13ff0";
		};
	};
	[72] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable assist";
			["time"] = 535.1;
			["timeRange"] = true;
			["timelineIndex"] = 72;
			["timerEndOffset"] = 0;
			["timerOffset"] = -2.2000000476837;
			["timerStartOffset"] = -2.4000000953674;
			["used"] = false;
			["uuid"] = "693992fb-e96b-c25b-ace8-5eb1c5805cc0";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Knockback()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, true, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = true;
			["luaReturnsAction"] = true;
			["name"] = "Knockback";
			["time"] = 535.1;
			["timeRange"] = true;
			["timelineIndex"] = 72;
			["timerEndOffset"] = -0.60000002384186;
			["timerOffset"] = 0;
			["timerStartOffset"] = -1.6000000238419;
			["used"] = false;
			["uuid"] = "96f5d371-a9bc-f459-b5c4-6ca80d4dddfd";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if not FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 5;
						[2] = 1;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
				[2] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if not FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 2;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
				[3] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if not FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 3;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 3;
					["buffID"] = 1209;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 5;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = 7548;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 2;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
				[3] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 5;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = 7559;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "reenable assist";
			["time"] = 535.1;
			["timeRange"] = true;
			["timelineIndex"] = 72;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -1.3999999761581;
			["used"] = false;
			["uuid"] = "1931480f-e8ed-d800-8ba1-aecccf8e94f4";
		};
	};
	[86] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 620.4;
			["timeRange"] = true;
			["timelineIndex"] = 86;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "266c6c38-873d-86ad-9bdc-1aaa2ddb95d3";
		};
	};
	[88] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 630.8;
			["timeRange"] = true;
			["timelineIndex"] = 88;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "53983e99-a998-b1cf-aa06-51918e889fb5";
		};
	};
	[90] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 655.4;
			["timeRange"] = true;
			["timelineIndex"] = 90;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "6638b3d0-49a4-fbbb-bdbd-50e439250953";
		};
	};
	[93] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Sprint()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Sprint";
			["time"] = 668.6;
			["timeRange"] = true;
			["timelineIndex"] = 93;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "eb129c14-b7f4-6f43-b138-1edcda169775";
		};
	};
	[97] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 1;
					["actionID"] = 7394;
					["actionLua"] = "";
					["allowInterrupt"] = true;
					["conditions"] = {
						[1] = 1;
						[2] = 4;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["luaReturnsAction"] = false;
					["setTarget"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 1;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 1;
					["actionID"] = 7394;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
					["contentid"] = -1;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 0;
					["inCombatType"] = 1;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["partyHpType"] = 1;
					["partyHpValue"] = 0;
					["partyMpType"] = 1;
					["partyMpValue"] = 0;
					["partyTargetContentID"] = -1;
					["partyTargetName"] = "";
					["partyTargetNumber"] = 1;
					["partyTargetSubType"] = 1;
					["partyTargetType"] = 1;
					["setFirstMatch"] = false;
				};
			};
			["enabled"] = false;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 676.8;
			["timeRange"] = true;
			["timelineIndex"] = 97;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4.803;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "201ea083-44ac-b469-9a50-8f99137f5da6";
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
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Burn Boss";
			["time"] = 676.8;
			["timeRange"] = true;
			["timelineIndex"] = 97;
			["timerEndOffset"] = 200;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "333e642d-a2ef-f45f-8e67-33039d265f87";
		};
	};
	[109] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 738.3;
			["timeRange"] = true;
			["timelineIndex"] = 109;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "7ae26c50-6184-e6d3-bec2-7072b4b62772";
		};
	};
	[110] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 745.5;
			["timeRange"] = true;
			["timelineIndex"] = 110;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "f4fab776-ca3d-6fe7-a630-cba5af5c3496";
		};
	};
	[111] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 757.1;
			["timeRange"] = true;
			["timelineIndex"] = 111;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "c1874306-804e-551f-b081-c390b326ec11";
		};
	};
	[112] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 764.3;
			["timeRange"] = true;
			["timelineIndex"] = 112;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "3846a157-005c-0860-9661-21586029b655";
		};
	};
	[113] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 777;
			["timeRange"] = true;
			["timelineIndex"] = 113;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "e8afb8d0-1583-863f-850b-90285fa1a33b";
		};
	};
	[114] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 784.3;
			["timeRange"] = true;
			["timelineIndex"] = 114;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "81170634-2890-76fe-ab94-b2507a2364d2";
		};
	};
	[115] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.RiddleOfEarth()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Riddle of Earth";
			["time"] = 798.1;
			["timeRange"] = true;
			["timelineIndex"] = 115;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "7a54d8d5-8460-4fb7-a46b-af109e788c9a";
		};
	};
	["mapID"] = 909;
	["version"] = 1;
}
return obj1
