-- Persistent Data
local multiRefObjects = {

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
  * Yang Xiao Long\
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
]]";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "samurai-timeline-e7s-changes";
			["time"] = 13;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "104457d9-8d2a-fc67-939c-721707434426";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Control.Reset()\
self.used = true\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Reset Toggle Controls";
			["time"] = 13;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "f3746546-d845-5e66-ad27-3b35b54e0991";
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
					["buffID"] = 149;
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
			["name"] = "Retarget boss when stuned";
			["time"] = 116.7;
			["timeRange"] = true;
			["timelineIndex"] = 22;
			["timerEndOffset"] = 25;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "4807646e-285e-4478-a9a0-a9466898a308";
		};
	};
	[27] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.ThirdEye()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Third Eye";
			["time"] = 139.9;
			["timeRange"] = true;
			["timelineIndex"] = 27;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "6ed0ab5b-5d48-22d5-9fc8-898fff7e0be1";
		};
	};
	[36] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.ThirdEye()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Third Eye";
			["time"] = 170.4;
			["timeRange"] = true;
			["timelineIndex"] = 36;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "80f30fe3-7103-eb6c-8b81-43f668fabc26";
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
					["buffID"] = 149;
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
			["name"] = "Retarget boss when stuned";
			["time"] = 177.5;
			["timeRange"] = true;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 25;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "9e3741f9-9e45-244d-aaf3-1e34814008ea";
		};
	};
	[45] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Samurai.CD(true, true)\
self.used = true\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD Off";
			["time"] = 191.7;
			["timeRange"] = true;
			["timelineIndex"] = 45;
			["timerEndOffset"] = 1;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "70d02754-e5e7-7c82-9e49-1cc728347145";
		};
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
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false";
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
			["time"] = 205.6;
			["timeRange"] = true;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "446ef7d3-767e-502c-9b4a-9366915d6f43";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Samurai.CD(false, true)\
self.used = true\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD On";
			["time"] = 205.6;
			["timeRange"] = true;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "488d895c-366b-9959-8185-6221a2fdec9c";
		};
	};
	[52] = {
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
					["buffID"] = 149;
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
			["name"] = "Retarget boss when stuned";
			["time"] = 264.3;
			["timeRange"] = true;
			["timelineIndex"] = 58;
			["timerEndOffset"] = 25;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "f3d181d5-9417-f62e-859e-4af204080d0f";
		};
	};
	[64] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Samurai.CD(true, true)\
self.used = true\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD Off";
			["time"] = 323.4;
			["timeRange"] = true;
			["timelineIndex"] = 64;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "d8b27835-1d98-ed1f-8516-2f75413a2527";
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
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.ThirdEye()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Third Eye";
			["time"] = 500;
			["timeRange"] = true;
			["timelineIndex"] = 71;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "8118bc6d-526b-b7b9-a338-a877ecf73009";
		};
	};
	[74] = {
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
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false";
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
			["time"] = 510.3;
			["timeRange"] = true;
			["timelineIndex"] = 74;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "3669d4b7-be43-b9dd-92c1-526c99759592";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Samurai.CD(false, true)\
self.used = true\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD On";
			["time"] = 510.3;
			["timeRange"] = true;
			["timelineIndex"] = 74;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "8f78a95f-0dfe-c6d9-b7b4-77ef257e48b2";
		};
	};
	[87] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.ThirdEye()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Third Eye";
			["time"] = 565.5;
			["timeRange"] = true;
			["timelineIndex"] = 87;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "da113366-17a7-79d2-85f4-ae65193d8271";
		};
	};
	[97] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.ThirdEye()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Third Eye";
			["time"] = 617.3;
			["timeRange"] = true;
			["timelineIndex"] = 97;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "6dbf5f2f-40db-b2ea-ae94-b8d6f545e2b9";
		};
	};
	[101] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.ThirdEye()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Third Eye";
			["time"] = 636.2;
			["timeRange"] = true;
			["timelineIndex"] = 101;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "2d3674d8-57be-90ec-ad16-935990623787";
		};
	};
	[103] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Samurai.CD(true, true)\
self.used = true\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD Off";
			["time"] = 646.4;
			["timeRange"] = true;
			["timelineIndex"] = 103;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "49ac854f-d415-fa65-acf1-d5185ed0b728";
		};
	};
	[106] = {
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
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "if not Player:GetTarget() then return true end\
return false";
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
			["time"] = 673.5;
			["timeRange"] = true;
			["timelineIndex"] = 107;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "6b282f4a-6219-3bba-9feb-2d2a2ce407ed";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "NilsReactionLibrary.Combat.Toggles.Samurai.CD(false, true)\
self.used = true\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "CD On";
			["time"] = 673.5;
			["timeRange"] = true;
			["timelineIndex"] = 107;
			["timerEndOffset"] = 1;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "38c63c7c-a897-affd-8651-5b2375e0abbe";
		};
	};
	[108] = {
	};
	[110] = {
	};
	[111] = {
	};
	[112] = {
	};
	[113] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.ThirdEye()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Third Eye";
			["time"] = 736.6;
			["timeRange"] = true;
			["timelineIndex"] = 113;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "d636adea-36a6-3b24-b822-a2bd21e51f9f";
		};
	};
	[114] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.ThirdEye()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Third Eye";
			["time"] = 746.2;
			["timeRange"] = true;
			["timelineIndex"] = 114;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "e26f0bbf-279a-bdd3-b23f-815c28cf80cd";
		};
	};
	[115] = {
	};
	[117] = {
	};
	[118] = {
	};
	[119] = {
	};
	[120] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.ThirdEye()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Third Eye";
			["time"] = 814.8;
			["timeRange"] = true;
			["timelineIndex"] = 120;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "bea1830c-577b-5753-8205-13f9d94ccdae";
		};
	};
	[121] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.ThirdEye()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Third Eye";
			["time"] = 824.3;
			["timeRange"] = true;
			["timelineIndex"] = 121;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "9d4fbad6-c8ca-5cba-9558-50ffc55c261f";
		};
	};
	["mapID"] = 908;
	["version"] = 6;
}
return obj1
