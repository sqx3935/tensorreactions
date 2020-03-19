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
			["name"] = "samurai-timeline-e5s-changes";
			["time"] = 12;
			["timeRange"] = false;
			["timelineIndex"] = 1;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "949b47c6-c400-5adb-b1ce-ac51770516d7";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "-- checks and loads dependancy functions in the event that you do not have my general dependancies loaded.\
\
if data.nilsPlayground == nil then data.nilsPlayground = {} end\
if data.nilsPlayground.CustomConditionChecks == nil then data.nilsPlayground.CustomConditionChecks = {} end\
  \
  function data.nilsPlayground.CustomConditionChecks.inOpener()\
    -- try not to execute while opener is running\
    if xivopeners_sam ~= nil and xivopeners_sam.openerStarted == true then\
      return true\
    end\
  \
    -- checks to see if sally is installed and if its opener is running\
    if SallySAM ~= nil and SallySAM.SkillSettings.Opener.enabled == true then\
      return true\
    end\
  \
    -- if xivopener is not running nor sally sam opener, then return false that it is safe to execute.\
    return false\
  end\
  \
  -- ** Abilities activation **\
  \
  if data.nilsPlayground.ExecuteShadeShift == nil then\
    function data.nilsPlayground.ExecuteShadeShift()\
      \
      if data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
\
      -- ignore if have scholar shield\
      if HasBuff(Player.id,297) or Player.hp.percent > 75 then return false end\
  \
      local actionskill = ActionList:Get(1, 2241)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
  \
      -- if sally installed, use hotbar, otherwise use base\
       if SallySAM ~= nil then SallySAM.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast(Player.id) end \
      return true\
    end\
  end\
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
      -- if sally installed, use hotbar, otherwise use base\
  		  if SallySAM ~= nil then SallySAM.HotBarConfig.Feint.enabled = false else	actionskill:Cast(target.id) end\
      return true\
    end\
  end\
  \
  if data.nilsPlayground.ExecuteArmsLength == nil then\
    function data.nilsPlayground.ExecuteArmsLength()\
\
      if data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
\
      local actionskill = ActionList:Get(1, 7548)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      -- if sally installed, use hotbar, otherwise use base\
    		if SallySAM ~= nil then SallySAM.HotBarConfig.Armslength.enabled = false else	actionskill:Cast(Player.id) end\
      if MoogleTTS ~= nil then MoogleTTS.Speak(\"knockback\") end\
    end\
  end\
  \
  if data.nilsPlayground.ExecuteThirdEye == nil then\
    function data.nilsPlayground.ExecuteThirdEye()\
\
      if data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
\
      local actionskill = ActionList:Get(1, 7498)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      -- if sally installed, use hotbar, otherwise use base\
  		if SallySAM ~= nil then SallySAM.HotBarConfig.ThirdEye.enabled = false else	actionskill:Cast(Player.id) end\
    end\
  end\
\
  if data.nilsPlayground.ExecuteSprint == nil then\
    function data.nilsPlayground.ExecuteSprint()\
      if data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
  \
      local actionskill = ActionList:Get(1, 3)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      -- if sally installed, use hotbar, otherwise use base\
      if SallySAM ~= nil then SallySAM.HotBarConfig.Sprint.enabled = false else	actionskill:Cast(Player.id) end\
    end\
  end\
  \
  if data.nilsPlayground.ExecuteTrueNorth == nil then\
    function data.nilsPlayground.ExecuteTrueNorth()\
      if HasBuff(Player.id, 1250) or data.nilsPlayground.CustomConditionChecks.inOpener() == true then return false end\
  \
      local actionskill = ActionList:Get(1, 7546)\
      if actionskill.cdmax - actionskill.cd > .5 then return false end\
      -- if sally installed, use hotbar, otherwise use base\
      if SallySAM ~= nil then SallySAM.HotBarConfig.TrueNorth.enabled = false else	actionskill:Cast(Player.id) end\
    end\
  end\
\
  -- ***************************\
  \
  d(\"timeline dependancy loaded\")\
  self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Dependancies";
			["time"] = 12;
			["timeRange"] = true;
			["timelineIndex"] = 1;
			["timerEndOffset"] = 14;
			["timerOffset"] = 0;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "30a80468-f55f-28ff-a9ce-92a95bfa0a97";
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
			["name"] = "Sprint";
			["time"] = 22.2;
			["timeRange"] = true;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "d15de031-ab22-a47d-bbbb-a72515a16187";
		};
	};
	[7] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 63.3;
			["timeRange"] = true;
			["timelineIndex"] = 7;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "82c08a6c-89ff-3b0d-b2f9-1c833b2e0188";
		};
	};
	[9] = {
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
			["name"] = "Feint";
			["time"] = 73.4;
			["timeRange"] = true;
			["timelineIndex"] = 9;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "4b4eee78-93ef-1bf8-bd36-dc0a750f2ac0";
		};
	};
	[14] = {
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
			["name"] = "Arm's Length";
			["time"] = 96.2;
			["timeRange"] = true;
			["timelineIndex"] = 14;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "b54ffd00-3e5f-bcf2-89ce-32d923e78156";
		};
	};
	[21] = {
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
			["name"] = "Feint";
			["time"] = 138.1;
			["timeRange"] = true;
			["timelineIndex"] = 21;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "873cffeb-e619-c301-bb81-0cf747c11a84";
		};
	};
	[22] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 148.3;
			["timeRange"] = true;
			["timelineIndex"] = 22;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "ba9ae93e-f11f-28d6-87c7-220653a46c54";
		};
	};
	[28] = {
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
			["name"] = "Feint";
			["time"] = 198.5;
			["timeRange"] = true;
			["timelineIndex"] = 28;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "970ea36f-2e21-06f8-bf17-06c00cd62bab";
		};
	};
	[31] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 221.2;
			["timeRange"] = true;
			["timelineIndex"] = 31;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "ffe14381-23c6-7b5c-9cbf-e4d30008dea5";
		};
	};
	[32] = {
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
			["name"] = "Sprint";
			["time"] = 230.5;
			["timeRange"] = true;
			["timelineIndex"] = 32;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "0e60ff2b-063d-6420-870e-c82d40fac8b4";
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
			["name"] = "Sprint";
			["time"] = 244.6;
			["timeRange"] = true;
			["timelineIndex"] = 33;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "8a3f2a02-90f4-d04d-af32-31f72abad564";
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
			["name"] = "target boss";
			["time"] = 267.3;
			["timeRange"] = true;
			["timelineIndex"] = 41;
			["timerEndOffset"] = 5;
			["timerOffset"] = 3.715;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "9f5f84a5-71cc-b693-98fd-e02ba486779f";
		};
	};
	[47] = {
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
			["name"] = "Feint";
			["time"] = 305.2;
			["timeRange"] = true;
			["timelineIndex"] = 47;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "d6876946-23e8-4068-bcf6-726f35b0c9da";
		};
	};
	[52] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 317.4;
			["timeRange"] = true;
			["timelineIndex"] = 52;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "9377d8ae-f70b-32f8-98f0-479d8af71391";
		};
	};
	[63] = {
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
			["name"] = "Feint";
			["time"] = 380.1;
			["timeRange"] = true;
			["timelineIndex"] = 63;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "4c51577b-7c08-09d8-b3d0-9015f8492132";
		};
	};
	[64] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 388.3;
			["timeRange"] = true;
			["timelineIndex"] = 64;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "897665c2-09bc-21f0-a28d-57596bc14937";
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
			["name"] = "Sprint";
			["time"] = 411.7;
			["timeRange"] = true;
			["timelineIndex"] = 66;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "1c0c7b91-8b87-d6de-a88c-2ed179d9d1e0";
		};
	};
	[73] = {
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
			["name"] = "target boss";
			["time"] = 434.4;
			["timeRange"] = true;
			["timelineIndex"] = 73;
			["timerEndOffset"] = 5;
			["timerOffset"] = 3.715;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "a33d4417-39f7-352f-91c8-87bc915eddb0";
		};
	};
	[76] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 450.4;
			["timeRange"] = true;
			["timelineIndex"] = 76;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "4b47290e-3a6c-c370-a852-f6035d037787";
		};
	};
	[81] = {
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
			["name"] = "Arm's Length";
			["time"] = 477;
			["timeRange"] = true;
			["timelineIndex"] = 81;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "46c96c02-d898-1144-9517-e46a9ed80836";
		};
	};
	[82] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 487.4;
			["timeRange"] = true;
			["timelineIndex"] = 82;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "d2034b3b-2acc-b096-8d36-bc33d8e0b9e9";
		};
	};
	[85] = {
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
			["name"] = "Feint";
			["time"] = 510;
			["timeRange"] = true;
			["timelineIndex"] = 85;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "6e4848dc-e9bb-931f-94f6-066a1db016b5";
		};
	};
	[90] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 523.2;
			["timeRange"] = true;
			["timelineIndex"] = 90;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "039166b5-3ec1-69ce-b879-99c9648c63b0";
		};
	};
	[96] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 554.9;
			["timeRange"] = true;
			["timelineIndex"] = 96;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "4dab1683-9947-3d5c-b2c6-1d587887488d";
		};
	};
	[97] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 566;
			["timeRange"] = true;
			["timelineIndex"] = 97;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "126066c1-c2af-9afd-b368-abe75be4911a";
		};
	};
	[99] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 583.2;
			["timeRange"] = true;
			["timelineIndex"] = 99;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "c9dea5ff-cd96-a24a-a09e-68980bdec6b9";
		};
	};
	[100] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 594.3;
			["timeRange"] = true;
			["timelineIndex"] = 100;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "df16d8fc-557f-59e0-a858-e6b30e10fefc";
		};
	};
	[101] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if data.nilsPlayground.ExecuteThirdEye() == true then\
  self.used = true\
end";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Third Eye";
			["time"] = 605.4;
			["timeRange"] = true;
			["timelineIndex"] = 101;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "003d59b0-0b69-b315-9f17-5f232941b90c";
		};
	};
	["mapID"] = 906;
	["version"] = 4;
}
return obj1
