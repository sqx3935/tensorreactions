-- Persistent Data
local multiRefObjects = {
{};
} -- multiRefObjects
local obj1 = {
	[2] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "-- checks and loads dependancy functions in the event that you do not have my general dependancies loaded.\
if data.nilsPlayground == nil then data.nilsPlayground = {} end\
if data.nilsPlayground.CustomConditionChecks == nil then data.nilsPlayground.CustomConditionChecks = {} end\
  \
  function data.nilsPlayground.CustomConditionChecks.inOpener()\
    -- try not to execute while opener is running\
    if xivopeners_mnk ~= nil and xivopeners_mnk.openerStarted == true then\
      return true\
    end\
    \
    -- if xivopener is not running nor sally sam opener, then return false that it is safe to execute.\
    return false\
  end\
  \
  -- ** Abilities activation **\
    \
  if data.nilsPlayground.ExecuteFeint == nil then\
    function data.nilsPlayground.ExecuteFeint()\
      if data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
\
      local target = Player:GetTarget()\
      if target == nil or not table.valid(target) or target.attackable or HasBuff(target.id, 1195) then return false end\
  \
      local actionskill = ActionList:Get(1, 7549)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      \
      actionskill:Cast(target.id) end\
      return true\
    end\
  end\
  \
\
    function data.nilsPlayground.ExecuteArmsLength()\
      if data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
      local actionskill = ActionList:Get(1, 7548)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      actionskill:Cast(Player.id) end\
      if MoogleTTS ~= nil then MoogleTTS.Speak(\"knockback\") end\
    end\
  \
   if data.nilsPlayground.ExecuteSprint == nil then\
    function data.nilsPlayground.ExecuteSprint()\
      if data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
  \
      local actionskill = ActionList:Get(1, 3)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      actionskill:Cast(Player.id) end\
    end\
  end\
  \
  if data.nilsPlayground.ExecuteTrueNorth == nil then\
    function data.nilsPlayground.ExecuteTrueNorth()\
      if HasBuff(Player.id, 1250) or data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
  \
      local actionskill = ActionList:Get(1, 7546)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      actionskill:Cast(Player.id) end\
    end\
  end\
\
if data.nilsPlayground.ExecuteRiddleOfEarth == nil then\
  function data.nilsPlayground.ExecuteRiddleOfEarth()\
    local actionskill = ActionList:Get(1, 7394)\
    if actionskill.cdmax - actionskill.cd > .5 then return false end\
    actionskill:Cast(Player.id)\
  end\
end\
\
if data.nilsPlayground.ExecuteMantra == nil then\
  function data.nilsPlayground.ExecuteMantra()\
    local actionskill = ActionList:Get(1, 65)\
    if actionskill.cdmax - actionskill.cd > .5 then return false end\
    actionskill:Cast(Player.id)\
  end\
end\
\
\
  -- ***************************\
  \
  d(\"timeline dependancy loaded\")\
  self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Dependancies";
			["time"] = 14.5;
			["timeRange"] = true;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 14;
			["timerOffset"] = 0;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "de2aedf5-f4ee-7f81-b3ce-dd1066b49e05";
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
			["time"] = 14.5;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "c3c7ffc1-ee8e-21dc-929b-b74ece555fb4";
		};
	};
	[14] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
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
			["uuid"] = "d5eaa174-a434-30c5-a5b1-da74f1ef5207";
		};
	};
	[22] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 111.2;
			["timeRange"] = true;
			["timelineIndex"] = 22;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "9cedfbce-30be-2ccd-ad84-0c36dbe3ed11";
		};
	};
	[24] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 134.7;
			["timeRange"] = true;
			["timelineIndex"] = 24;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "340a6783-43cb-fa73-b16f-7d589fe08459";
		};
	};
	[27] = {
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
					["buffIDList"] = multiRefObjects[1];
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
			["time"] = 157.6;
			["timeRange"] = true;
			["timelineIndex"] = 27;
			["timerEndOffset"] = 5;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "49212e41-2734-7403-bb05-6c4e51fd3a45";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill =  ActionList:Get(1, 7546)\
if actionskill.cdmax - actionskill.cd < 1 then \
  actionskill:Get(1, 7546):Cast(Player.id)\
  self.used = true\
end		\
\
\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "True North";
			["time"] = 157.6;
			["timeRange"] = true;
			["timelineIndex"] = 27;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "536fb05f-50a2-0d89-966a-1ec62f24fa9d";
		};
	};
	[31] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 196.9;
			["timeRange"] = true;
			["timelineIndex"] = 31;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "0b230044-fb61-e05f-9ba8-af1c35142f99";
		};
	};
	[32] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteFeint() == true then\
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
			["uuid"] = "698e5251-0854-8366-aac1-e636c743dcd6";
		};
	};
	[35] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill =  ActionList:Get(1, 7394)\
if actionskill.cdmax - actionskill.cd < 1 then \
  actionskill:Get(1, 7546):Cast(Player.id)\
  self.used = true\
end		";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 221.4;
			["timeRange"] = true;
			["timelineIndex"] = 35;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "756e345f-ae51-3f4e-9622-d25b38f803af";
		};
	};
	[37] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 231.1;
			["timeRange"] = true;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "6227af72-fdeb-a1a1-be41-2dabe391e9ea";
		};
	};
	[38] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 237.1;
			["timeRange"] = true;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "d62285e8-2732-51da-8524-2f3f3d44f32a";
		};
	};
	[40] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 253.3;
			["timeRange"] = true;
			["timelineIndex"] = 40;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "c6e97f63-eaf0-87a2-b124-779ab2477b2e";
		};
	};
	[48] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 292.9;
			["timeRange"] = true;
			["timelineIndex"] = 48;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "1de31724-ce1b-44d8-a70a-c8ccc8dc5d74";
		};
	};
	[50] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 314.3;
			["timeRange"] = true;
			["timelineIndex"] = 50;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "098ea8c7-48dd-55aa-8fec-19c7cc65dbd4";
		};
	};
	[53] = {
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
					["buffIDList"] = multiRefObjects[1];
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
			["time"] = 337.2;
			["timeRange"] = true;
			["timelineIndex"] = 53;
			["timerEndOffset"] = 5;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "41ea3590-e4e7-de1a-935c-0674712c85dd";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill =  ActionList:Get(1, 7546)\
if actionskill.cdmax - actionskill.cd < 1 then \
  actionskill:Get(1, 7546):Cast(Player.id)\
  self.used = true\
end		\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "True North";
			["time"] = 337.2;
			["timeRange"] = true;
			["timelineIndex"] = 53;
			["timerEndOffset"] = 2;
			["timerOffset"] = 0;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "baa24032-a804-dca2-a410-d134668479a4";
		};
	};
	[57] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 375.5;
			["timeRange"] = true;
			["timelineIndex"] = 57;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "7e8b3529-0812-ca8a-b417-78f570ff0fb2";
		};
	};
	[58] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteFeint() == true then\
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
			["uuid"] = "04e6f1cc-002b-d639-aa23-f05b971e94c0";
		};
	};
	[61] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill =  ActionList:Get(1, 7394)\
if actionskill.cdmax - actionskill.cd < 1 then \
  actionskill:Get(1, 7546):Cast(Player.id)\
  self.used = true\
end		";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 399.9;
			["timeRange"] = true;
			["timelineIndex"] = 61;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "99f41489-7e8b-fc54-a66e-0b3bdcec8144";
		};
	};
	[63] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 409.5;
			["timeRange"] = true;
			["timelineIndex"] = 63;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "2bc16f58-351b-6b92-9332-6d8beab5512e";
		};
	};
	[65] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 415.4;
			["timeRange"] = true;
			["timelineIndex"] = 65;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "c3b60eb8-bb6b-110f-aec3-25c7ffc5e9f4";
		};
	};
	[67] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 431.7;
			["timeRange"] = true;
			["timelineIndex"] = 67;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "4dd892cd-89d8-4752-97e6-0e79eed989ac";
		};
	};
	[75] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["eventArgs"] = {
			};
			["execute"] = "-- checks and loads dependancy functions in the event that you do not have my general dependancies loaded.\
if data.nilsPlayground == nil then data.nilsPlayground = {} end\
if data.nilsPlayground.CustomConditionChecks == nil then data.nilsPlayground.CustomConditionChecks = {} end\
  \
  function data.nilsPlayground.CustomConditionChecks.inOpener()\
    -- try not to execute while opener is running\
    if xivopeners_mnk ~= nil and xivopeners_mnk.openerStarted == true then\
      return true\
    end\
    \
    -- if xivopener is not running nor sally sam opener, then return false that it is safe to execute.\
    return false\
  end\
  \
  -- ** Abilities activation **\
    \
  if data.nilsPlayground.ExecuteFeint == nil then\
    function data.nilsPlayground.ExecuteFeint()\
      if data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
\
      local target = Player:GetTarget()\
      if target == nil or not table.valid(target) or target.attackable or HasBuff(target.id, 1195) then return false end\
  \
      local actionskill = ActionList:Get(1, 7549)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      \
      actionskill:Cast(target.id) end\
      return true\
    end\
  end\
  \
\
    function data.nilsPlayground.ExecuteArmsLength()\
      if data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
      local actionskill = ActionList:Get(1, 7548)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      actionskill:Cast(Player.id) end\
      if MoogleTTS ~= nil then MoogleTTS.Speak(\"knockback\") end\
    end\
  \
   if data.nilsPlayground.ExecuteSprint == nil then\
    function data.nilsPlayground.ExecuteSprint()\
      if data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
  \
      local actionskill = ActionList:Get(1, 3)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      actionskill:Cast(Player.id) end\
    end\
  end\
  \
  if data.nilsPlayground.ExecuteTrueNorth == nil then\
    function data.nilsPlayground.ExecuteTrueNorth()\
      if HasBuff(Player.id, 1250) or data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
  \
      local actionskill = ActionList:Get(1, 7546)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      actionskill:Cast(Player.id) end\
    end\
  end\
\
if data.nilsPlayground.ExecuteRiddleOfEarth == nil then\
  function data.nilsPlayground.ExecuteRiddleOfEarth()\
    local actionskill = ActionList:Get(1, 7394)\
    if actionskill.cdmax - actionskill.cd > .5 then return false end\
    actionskill:Cast(Player.id)\
  end\
end\
\
if data.nilsPlayground.ExecuteMantra == nil then\
  function data.nilsPlayground.ExecuteMantra()\
    local actionskill = ActionList:Get(1, 65)\
    if actionskill.cdmax - actionskill.cd > .5 then return false end\
    actionskill:Cast(Player.id)\
  end\
end\
\
\
  -- ***************************\
  \
  d(\"timeline dependancy loaded\")\
  self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Dependancies";
			["time"] = 1007;
			["timeRange"] = true;
			["timelineIndex"] = 75;
			["timerEndOffset"] = 14;
			["timerOffset"] = 0;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "9a45b897-044e-752a-9e07-52e9d72cab81";
		};
	};
	[82] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteFeint() == true then\
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
			["uuid"] = "5d31f73e-233f-d51d-8e80-21d22844c56c";
		};
	};
	[92] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteArmsLength() == true then\
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
			["uuid"] = "e0562516-885b-26f8-9206-a6fbab4c6f66";
		};
	};
	[103] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 1235.1;
			["timeRange"] = true;
			["timelineIndex"] = 103;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "dec835d6-7b0b-0ef4-af7d-700985475a3b";
		};
	};
	[104] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteRiddleOfEarth() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Riddle of Earth";
			["time"] = 1245.2;
			["timeRange"] = true;
			["timelineIndex"] = 104;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "5a96e3ab-956f-2120-b09b-2e5059c7d21f";
		};
	};
	["mapID"] = 912;
	["version"] = 2;
}
return obj1
