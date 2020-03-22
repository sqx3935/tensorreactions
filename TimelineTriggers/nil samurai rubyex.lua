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
]]\
\
-- *************************************************************************************\
\
-- LIBRARY REQUIRED\
\
-- Install https://github.com/nil2share/tensorreactions/tree/master/Nil%20Reaction%20Library into C:\\MINIONAPP\\Bots\\FFXIVMinion64\\LuaMods\\Nil Reaction Library\
\
\
--[[ ** Verson 1 **\
* Initial release\
]]\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Readme";
			["time"] = 14.5;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "4a961ac1-9803-ff7a-b4a6-6e4bb78eb60b";
		};
	};
	[14] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if data.nilsPlayground.ExecuteFeint() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Feint";
			["time"] = 72.6;
			["timeRange"] = true;
			["timelineIndex"] = 14;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "fad95358-1501-950b-9a23-089fde74b231";
		};
	};
	[22] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.Actions. == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 111.2;
			["timeRange"] = true;
			["timelineIndex"] = 22;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "8c3e0b9b-2ca0-1e74-9a08-e2a718d3bc2b";
		};
	};
	[24] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 134.7;
			["timeRange"] = true;
			["timelineIndex"] = 24;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "9c7764f5-b27c-846f-a295-676c79dab6a5";
		};
	};
	[27] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "SallySAM.SkillSettings.TrueNorth.enabled = false\
self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "True North off";
			["time"] = 157.6;
			["timeRange"] = true;
			["timelineIndex"] = 27;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "cfab12b3-6a5c-1f4b-a0be-3ee032288d06";
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
			["eventArgs"] = {
			};
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = true;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["time"] = 157.6;
			["timeRange"] = true;
			["timelineIndex"] = 27;
			["timerEndOffset"] = 5;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "2a0d52b1-bc59-fe00-8275-45eb76117020";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.TrueNorth() == true then\
  SallySAM.SkillSettings.TrueNorth.enabled = true\
  self.used = true\
end\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "True North and back on";
			["time"] = 157.6;
			["timeRange"] = true;
			["timelineIndex"] = 27;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "18f5f998-086c-77c9-b9f5-181abc77b33e";
		};
	};
	[31] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 196.9;
			["timeRange"] = true;
			["timelineIndex"] = 31;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "22d2d7b9-f391-cb04-a58a-2d73a13186f2";
		};
	};
	[32] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.Actions.Feint() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Feint";
			["time"] = 205.2;
			["timeRange"] = true;
			["timelineIndex"] = 32;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "6b8371fa-63c0-4367-9031-2bba46858642";
		};
	};
	[35] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "local actionskill = ActionList:Get(1, 7498)\
if actionskill.cdmax - actionskill.cd < 1 then\
  -- if sally installed, use hotbar, otherwise use base\
		if SallySAM ~= nil then SallySAM.HotBarConfig.ThirdEye.enabled = false else	actionskill:Cast(Player.id) end\
end		";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 221.4;
			["timeRange"] = true;
			["timelineIndex"] = 35;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "04f8d3d7-e284-8a0c-b46f-1f4cb0f37702";
		};
	};
	[37] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 231.1;
			["timeRange"] = true;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "ef559f90-963e-66e5-9159-2530558e1112";
		};
	};
	[38] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 237.1;
			["timeRange"] = true;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "c99089bc-a00e-0add-85e5-5f6330d4f74a";
		};
	};
	[40] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 253.3;
			["timeRange"] = true;
			["timelineIndex"] = 40;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "91823356-93d8-8781-9aa3-77c6db4baabf";
		};
	};
	[48] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 292.9;
			["timeRange"] = true;
			["timelineIndex"] = 48;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "0b59f36d-7fe8-276f-83e4-4e56b31dbcc5";
		};
	};
	[50] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 314.3;
			["timeRange"] = true;
			["timelineIndex"] = 50;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "e2ffd7dc-e034-c340-959e-fbf2042e07bf";
		};
	};
	[53] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "SallySAM.SkillSettings.TrueNorth.enabled = false\
self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "True North off";
			["time"] = 337.2;
			["timeRange"] = true;
			["timelineIndex"] = 53;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "a4fd770d-7def-9d4a-82ef-c17fc6a57af0";
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
			["time"] = 337.2;
			["timeRange"] = true;
			["timelineIndex"] = 53;
			["timerEndOffset"] = 5;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "01d80826-3426-d7f4-883c-bc4b18fff8f3";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill =  ActionList:Get(1, 7546)\
if actionskill.cdmax - actionskill.cd < 1 then \
  if SallySAM ~= nil then SallySAM.HotBarConfig.TrueNorth.enabled = true = false else	actionskill:Get(1, 7546):Cast(Player.id) end\
  SallySAM.SkillSettings.TrueNorth.enabled = true\
  self.used = true\
end		\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "True North and back on";
			["time"] = 337.2;
			["timeRange"] = true;
			["timelineIndex"] = 53;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "75da2dbe-1358-760c-81a9-cd21d92009e7";
		};
	};
	[57] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 375.5;
			["timeRange"] = true;
			["timelineIndex"] = 57;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "ed8ca0a4-1e02-185e-adb7-9d5a07811f41";
		};
	};
	[58] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Combat.Actions.Feint() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Feint";
			["time"] = 383.8;
			["timeRange"] = true;
			["timelineIndex"] = 58;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "448993e6-e2d7-10d8-b783-6bbbcce264ca";
		};
	};
	[61] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 7498)\
if actionskill.cdmax - actionskill.cd < 1 then\
  -- if sally installed, use hotbar, otherwise use base\
		if SallySAM ~= nil then SallySAM.HotBarConfig.ThirdEye.enabled = false else	actionskill:Cast(Player.id) end\
end		";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 399.9;
			["timeRange"] = true;
			["timelineIndex"] = 61;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "7dc94a35-4d54-3cfd-a90a-ad93de7b0033";
		};
	};
	[63] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 409.5;
			["timeRange"] = true;
			["timelineIndex"] = 63;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "5b1a7bb8-65a5-1cce-9719-4feb3d301296";
		};
	};
	[65] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 415.4;
			["timeRange"] = true;
			["timelineIndex"] = 65;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "70ac978d-8d97-7efa-a4b8-e30e52d94169";
		};
	};
	[75] = {
	};
	[82] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.Actions.Feint() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Feint";
			["time"] = 1052;
			["timeRange"] = true;
			["timelineIndex"] = 82;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "63a88724-5cbe-9c29-8d2c-729cfdec4dbe";
		};
	};
	[88] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 1106;
			["timeRange"] = true;
			["timelineIndex"] = 88;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "7bd4b594-cf64-1419-af6f-713df685edf4";
		};
	};
	[92] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.Actions.Knockback() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Arm's Length";
			["time"] = 1156;
			["timeRange"] = true;
			["timelineIndex"] = 92;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "136a875e-1075-60a6-840d-310a00de07a3";
		};
	};
	[101] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 1208.6;
			["timeRange"] = true;
			["timelineIndex"] = 101;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "2f8d16ec-bcad-d920-a087-10715818c259";
		};
	};
	[103] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 1235.1;
			["timeRange"] = true;
			["timelineIndex"] = 103;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "b53c7485-4c69-d8ce-9c0d-3e3c798b0199";
		};
	};
	[104] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if NilsReactionLibrary.Combat.Actions.ThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Third Eye";
			["time"] = 1245.2;
			["timeRange"] = true;
			["timelineIndex"] = 104;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "8b2b88fb-81d7-0d77-b8e9-4afd38105797";
		};
	};
	["mapID"] = 912;
	["version"] = 2;
}
return obj1
