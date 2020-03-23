-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "-- ** Verson 1 **\
-- added all the stuff";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "dragoon-timeline-e5s-changes";
			["time"] = 12;
			["timeRange"] = false;
			["timelineIndex"] = 1;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "9011087b-a4dc-c9c7-9ae6-c43f21e0983b";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "-- used to load custom functions that are used for this timeline\
\
if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
\
if data.nilsPlayground.CustomConditionChecks == nil then data.nilsPlayground.CustomConditionChecks = {} end\
\
\
if (_G[\"data.nilsPlayground.CustomConditionChecks.NoDRGOpener\"] == nil) then\
		function data.nilsPlayground.CustomConditionChecks.NoDRGOpener()\
    -- try not to execute while opener is running\
    if xivopeners_drg ~= nil and xivopeners_drg.openerStarted == true then return false end\
\
    -- if xivopener is not running, then return true that it is safe to execute.\
    return true\
		end\
end\
\
\
\
\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Load Dependancies";
			["time"] = 12;
			["timeRange"] = true;
			["timelineIndex"] = 1;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = -10;
			["used"] = false;
			["uuid"] = "0f9f32d0-9742-8a4a-a8ed-44f95cefc96d";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Combat.Toggles.Control.Reset() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Reset Toggle Controls";
			["time"] = 12;
			["timeRange"] = false;
			["timelineIndex"] = 1;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "377c3adf-dfd8-1d5f-8da6-e088df50ce96";
		};
	};
	[2] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteSprint() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Sprint";
			["time"] = 22.2;
			["timeRange"] = true;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "b4a550f7-bb14-7816-b915-0569be93c0d8";
		};
	};
	[9] = {
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
			["time"] = 73.4;
			["timeRange"] = true;
			["timelineIndex"] = 9;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "7d41ec80-f79a-c564-a807-11027cbd4429";
		};
	};
	[14] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Knockback()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Knockback";
			["time"] = 96.2;
			["timeRange"] = true;
			["timelineIndex"] = 14;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "b04e10b0-c812-8f8a-a967-aebc1624ce22";
		};
	};
	[19] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 3;
					["actionID"] = -1;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["conditions"] = {
					};
					["endIfUsed"] = true;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["time"] = 128.6;
			["timeRange"] = true;
			["timelineIndex"] = 19;
			["timerEndOffset"] = 5;
			["timerOffset"] = 3.715;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "7d654b61-1ea7-6e53-b73d-c2b127de622f";
		};
	};
	[21] = {
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
			["time"] = 138.1;
			["timeRange"] = true;
			["timelineIndex"] = 21;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "589bf113-c022-7565-9ba8-13e8ae8a5d6b";
		};
	};
	[28] = {
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
			["time"] = 198.5;
			["timeRange"] = true;
			["timelineIndex"] = 28;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "8f14b16a-3f54-3df3-8472-d15c280da985";
		};
	};
	[33] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteSprint() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Sprint";
			["time"] = 244.6;
			["timeRange"] = true;
			["timelineIndex"] = 33;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "3fc5eaac-8b00-8e3f-9b02-afcb9fa538ae";
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
						[1] = 1;
					};
					["endIfUsed"] = true;
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
			["time"] = 265.6;
			["timeRange"] = true;
			["timelineIndex"] = 39;
			["timerEndOffset"] = 10;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -15;
			["used"] = false;
			["uuid"] = "d53fdea1-ad29-3abc-8f4d-d95b1718f9e3";
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
					["endIfUsed"] = true;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["time"] = 267.3;
			["timeRange"] = true;
			["timelineIndex"] = 41;
			["timerEndOffset"] = 5;
			["timerOffset"] = 3.715;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "84ed3a48-79e1-0510-961d-6da87deb9d4a";
		};
	};
	[47] = {
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
			["time"] = 305.2;
			["timeRange"] = true;
			["timelineIndex"] = 47;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "4f407d0f-3079-85d9-b4db-556da0aa784b";
		};
	};
	[63] = {
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
			["time"] = 380.1;
			["timeRange"] = true;
			["timelineIndex"] = 63;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "a654ad4c-5462-aa11-87fb-39bf89f6f3f6";
		};
	};
	[66] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteSprint() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Sprint";
			["time"] = 411.7;
			["timeRange"] = true;
			["timelineIndex"] = 66;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "56ca85db-23ef-04a4-93d5-4c5c1905673d";
		};
	};
	[72] = {
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
			["time"] = 432.7;
			["timeRange"] = true;
			["timelineIndex"] = 72;
			["timerEndOffset"] = 10;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -15;
			["used"] = false;
			["uuid"] = "e5cb96eb-e25d-c183-9e26-89b84c33c22c";
		};
	};
	[81] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.Knockback()\
if wasSuccessful == true then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = true;
			["name"] = "Knockback";
			["time"] = 477;
			["timeRange"] = true;
			["timelineIndex"] = 81;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "a0b10127-bfbb-a217-b81c-7911c7ca8329";
		};
	};
	[85] = {
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
			["time"] = 510;
			["timeRange"] = true;
			["timelineIndex"] = 85;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "379e7cac-a4c3-69e3-b54b-3520619c59c8";
		};
	};
	[102] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteSprint() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Sprint";
			["time"] = 612.3;
			["timeRange"] = true;
			["timelineIndex"] = 102;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "36976e6c-eb89-8966-99a3-7c54cec2d76f";
		};
	};
	["mapID"] = 906;
	["version"] = 4;
}
return obj1
