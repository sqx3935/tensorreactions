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
			["execute"] = "-- ** Verson 2 **\
-- remove third eye from double slap, opps, thanks Yang Xiao Long for letting me know\
-- ** Verson 1 **\
-- added all the stuff";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "samurai-timeline-e8s-changes";
			["time"] = 16;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "9e9bb6c0-9fb7-869b-87bc-ef3f619721f9";
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
			["time"] = 16;
			["timeRange"] = true;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 14;
			["timerOffset"] = 0;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "cd6d5b40-924c-c3bd-8538-31ce28f356a6";
		};
	};
	[8] = {
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
			["time"] = 63.7;
			["timeRange"] = true;
			["timelineIndex"] = 8;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "484ab58b-78cd-1f64-a6bb-7f98c92fed63";
		};
	};
	[11] = {
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
			["time"] = 76.9;
			["timeRange"] = true;
			["timelineIndex"] = 11;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "801cd1b6-090f-ddfe-bb1b-792907ae36c7";
		};
	};
	[20] = {
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
			["time"] = 101.7;
			["timeRange"] = true;
			["timelineIndex"] = 20;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "7c0ffac1-3f78-aa74-8e14-e3b524df9a1b";
		};
	};
	[24] = {
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
			["time"] = 137.4;
			["timeRange"] = true;
			["timelineIndex"] = 24;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "4caa82df-de46-1ce9-8fb7-ad502f0bfec7";
		};
	};
	[33] = {
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
			["time"] = 193.3;
			["timeRange"] = true;
			["timelineIndex"] = 33;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "2112332d-c9d0-871a-b9ff-2bab3c52c2d7";
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
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["name"] = "target aqueous aether";
			["time"] = 229.2;
			["timeRange"] = true;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "acab8512-d198-9595-a036-e436b739f57c";
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
			["loop"] = true;
			["name"] = "target others";
			["time"] = 229.2;
			["timeRange"] = true;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 65;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "bcf3a2cf-f6f8-4bb6-87c7-a4648951667d";
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
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = 9321;
					["targetName"] = "Earthen Aether";
					["targetSubType"] = 1;
					["targetType"] = 3;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["name"] = "target earthen aether";
			["time"] = 243.3;
			["timeRange"] = true;
			["timelineIndex"] = 39;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "85158bb0-b479-967e-b574-0dc799e2bf68";
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
					["setTarget"] = true;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = 9321;
					["targetName"] = "Earthen Aether";
					["targetSubType"] = 1;
					["targetType"] = 3;
					["untarget"] = false;
					["used"] = false;
					["variableTogglesType"] = 1;
				};
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "";
			["executeType"] = 1;
			["loop"] = false;
			["name"] = "target earthen aether";
			["time"] = 257.4;
			["timeRange"] = true;
			["timelineIndex"] = 41;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "66e35501-847c-fea0-a8aa-a8948a305534";
		};
	};
	[43] = {
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
						[1] = 1;
						[2] = 2;
					};
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorMagnum_CD";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
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
			["name"] = "do not suicide on electric aether";
			["time"] = 271.5;
			["timeRange"] = true;
			["timelineIndex"] = 43;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -1;
			["used"] = false;
			["uuid"] = "bf0ba20a-64b8-33f6-828c-2efa7cf73e8f";
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
			["loop"] = false;
			["name"] = "target boss";
			["time"] = 350.5;
			["timeRange"] = true;
			["timelineIndex"] = 46;
			["timerEndOffset"] = 4;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "a727f3ad-0f26-62b7-81d4-1c92d299a204";
		};
	};
	[48] = {
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
			["time"] = 368.6;
			["timeRange"] = true;
			["timelineIndex"] = 48;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "71b950e5-fffc-0968-85da-55006cfcc360";
		};
	};
	[49] = {
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
			["time"] = 378;
			["timeRange"] = true;
			["timelineIndex"] = 49;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "b23871f7-6bea-00ed-b36c-7843d61c628a";
		};
	};
	[53] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 1;
					["actionID"] = 7548;
					["actionLua"] = "";
					["allowInterrupt"] = true;
					["conditions"] = {
						[1] = 3;
						[2] = 1;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
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
					["actionLua"] = "if MoogleTTS ~= nil then MoogleTTS.Speak(\"knockback\") end\
self.used = true";
					["allowInterrupt"] = false;
					["conditions"] = {
						[1] = 1;
						[2] = 3;
					};
					["endIfUsed"] = true;
					["gVar"] = "";
					["gVarIndex"] = 1;
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
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
					["actionID"] = 7548;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
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
			["name"] = "Arm's Length";
			["time"] = 403.2;
			["timeRange"] = true;
			["timelineIndex"] = 53;
			["timerEndOffset"] = 0;
			["timerOffset"] = -0.95;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "84689ac9-c0e1-edf0-b474-1351c8e530c5";
		};
	};
	[58] = {
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
			["time"] = 427.9;
			["timeRange"] = true;
			["timelineIndex"] = 58;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "a0f03f30-b7fc-9578-92d8-fc5ce78da6d3";
		};
	};
	[66] = {
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
			["time"] = 491.6;
			["timeRange"] = true;
			["timelineIndex"] = 66;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "8ad17e22-6e94-09c5-8e8b-e107b78ea0ef";
		};
	};
	[86] = {
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
			["time"] = 620.4;
			["timeRange"] = true;
			["timelineIndex"] = 86;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "eb98e835-3890-4d46-a669-fc5ffa915235";
		};
	};
	[88] = {
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
			["time"] = 630.8;
			["timeRange"] = true;
			["timelineIndex"] = 88;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "74fbbe34-ad91-9a4d-939a-1c0603c6915b";
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
			["time"] = 655.4;
			["timeRange"] = true;
			["timelineIndex"] = 90;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "090101fb-329d-bd5e-8c15-ccc0da008e4e";
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
			["time"] = 676.8;
			["timeRange"] = true;
			["timelineIndex"] = 97;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "232e520d-a9f0-a0fa-9f8a-f432b440afd9";
		};
	};
	[109] = {
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
			["time"] = 738.3;
			["timeRange"] = true;
			["timelineIndex"] = 109;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "642fbf03-87db-8022-8bef-b830db24fb81";
		};
	};
	[110] = {
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
			["time"] = 745.5;
			["timeRange"] = true;
			["timelineIndex"] = 110;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "6977d4d0-603c-89f9-8ab3-a2e4754c8163";
		};
	};
	[111] = {
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
			["time"] = 757.1;
			["timeRange"] = true;
			["timelineIndex"] = 111;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "eb970c45-a9b6-3c75-a85a-b590cd80d539";
		};
	};
	[112] = {
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
			["time"] = 764.3;
			["timeRange"] = true;
			["timelineIndex"] = 112;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "427698b1-17df-6880-8df5-85883e73e09e";
		};
	};
	[113] = {
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
			["time"] = 777;
			["timeRange"] = true;
			["timelineIndex"] = 113;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "c0fb867d-955e-2057-b845-60f1cd95acd4";
		};
	};
	[114] = {
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
			["time"] = 784.3;
			["timeRange"] = true;
			["timelineIndex"] = 114;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "4786af61-c154-2a3e-b64d-d6e456ca9ccd";
		};
	};
	[115] = {
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
			["time"] = 798.1;
			["timeRange"] = true;
			["timelineIndex"] = 115;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "3d1cdd7e-2566-0fd5-bbd4-8d0830e499fb";
		};
	};
	["mapID"] = 909;
	["version"] = 1;
}
return obj1
