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
			["enabled"] = true;
			["execute"] = "-- checks and loads dependancy functions in the event that you do not have my general dependancies loaded.\
\
if data.nilsPlayground == nil then	data.nilsPlayground = {} end\
if data.nilsPlayground.Toggles == nil then	data.nilsPlayground.Toggles = {} end\
if data.nilsPlayground.Toggles..OmniWhiteList == nil then	data.nilsPlayground.Toggles.OmniWhiteList = { IsActive = false, TimelineActive = false} end\
\
data.nilsPlayground.Toggles.OmniWhiteList.TimelineActive == false\
\
if data.nilsPlayground.TurnOffTCJ == nil then\
		function data.nilsPlayground.TurnOffTCJ(byTimeline)\
    data.nilsPlayground.Toggles.TCJMove.IsActive = true\
				data.nilsPlayground.Toggles.TCJMove.TimelineActive = byTimeline\
    data.nilsPlayground.Toggles.TCJMove.LastMoved =  Now()\
\
    SallyNIN.SkillSettings.TCJ.enabled = false\
		end\
end\
\
if data.nilsPlayground.TurnOnTCJ == nil then\
		function data.nilsPlayground.TurnOnTCJ()\
    data.nilsPlayground.Toggles.TCJMove.IsActive = false\
				data.nilsPlayground.Toggles.TCJMove.TimelineActive = false\
\
    SallyNIN.SkillSettings.TCJ.enabled = true\
		end\
end\
\
\
if data.nilsPlayground.TurnOffTrickAttackWindow == nil then\
  function data.nilsPlayground.TurnOffTrickAttackWindow(byTimeline)\
    data.nilsPlayground.Toggles.TrickAttackWindow.IsActive = true\
  		data.nilsPlayground.Toggles.TrickAttackWindow.TimelineActive = byTimeline\
    data.nilsPlayground.Toggles.TrickAttackWindow.LastMoved =  Now()\
\
    if SallyNIN ~= nil then\
  				SallyNIN.SkillSettings.SaveCD.enabled = true\
  				SallyNIN.SkillSettings.TrickAttack.enabled = false\
  				SallyNIN.SkillSettings.ShadowFang.enabled = false\
  				SallyNIN.SkillSettings.Bushin.enabled = false\
  		end\
  end\
end\
\
if data.nilsPlayground.TurnOnTrickAttackWindow == nil then\
  function data.nilsPlayground.TurnOnTrickAttackWindow()\
    data.nilsPlayground.Toggles.TrickAttackWindow.IsActive = false\
  		data.nilsPlayground.Toggles.TrickAttackWindow.TimelineActive = false\
\
		  if SallyNIN ~= nil then\
  				SallyNIN.SkillSettings.SaveCD.enabled = false\
		  		SallyNIN.SkillSettings.TrickAttack.enabled = true\
				  SallyNIN.SkillSettings.ShadowFang.enabled = true\
  				SallyNIN.SkillSettings.Bushin.enabled = true\
		  end\
  end\
end\
\
\
\
self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Dependancies";
			["time"] = 14.5;
			["timeRange"] = true;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 14;
			["timerOffset"] = 0;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "28ea23ac-b3d8-1497-b30d-c055ada8aa43";
		};
	};
	[14] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 7549)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.Feint.enabled = false else	actionskill:Cast(eventArgs.entityID) end \
self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Feint";
			["time"] = 72.6;
			["timeRange"] = true;
			["timelineIndex"] = 14;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "8f3be5a4-45e4-f690-aa66-426637ae173b";
		};
	};
	[24] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 134.7;
			["timeRange"] = true;
			["timelineIndex"] = 24;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "1b2f03ce-ec2e-c4b5-b55c-84ea170a1d99";
		};
	};
	[31] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 196.9;
			["timeRange"] = true;
			["timelineIndex"] = 31;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "ade0fb80-bbae-e347-9f2c-60ff69c149dd";
		};
	};
	[35] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 221.4;
			["timeRange"] = true;
			["timelineIndex"] = 35;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "213c0d60-b4ff-14d0-82e1-4abe021a6c76";
		};
	};
	[38] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 237.1;
			["timeRange"] = true;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "bad78faa-b1d4-d9a1-beb5-825bb763fd17";
		};
	};
	[40] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 253.3;
			["timeRange"] = true;
			["timelineIndex"] = 40;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "9963dc6a-bfad-767a-84b4-6b31adc88515";
		};
	};
	[50] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 314.3;
			["timeRange"] = true;
			["timelineIndex"] = 50;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "423a5706-924c-13d8-8a1f-30e95729490f";
		};
	};
	[57] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 375.5;
			["timeRange"] = true;
			["timelineIndex"] = 57;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "2edbb304-c962-d344-869f-7def59096188";
		};
	};
	[61] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 399.9;
			["timeRange"] = true;
			["timelineIndex"] = 61;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "5d15af06-e93c-a234-b656-e093f9d7d996";
		};
	};
	[65] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 415.4;
			["timeRange"] = true;
			["timelineIndex"] = 65;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "52bf63d9-9d5a-013d-b83f-39f303014075";
		};
	};
	[67] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 431.7;
			["timeRange"] = true;
			["timelineIndex"] = 67;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "55e923d9-7909-000f-92a6-25fc6c8eccc0";
		};
	};
	[72] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "-- putting this on a loop becuase it can mess up if the group wipe resets.\
\
data.nilsPlayground.Toggles.OmniWhiteList.TimelineActive == true\
\
if SallyNIN ~= nil then	SallyNIN.SkillSettings.Omni.enabled = true end\
\
self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Enable Omni";
			["time"] = 865.5;
			["timeRange"] = true;
			["timelineIndex"] = 72;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -10;
			["used"] = false;
			["uuid"] = "bb9f9beb-ba1b-e398-9e1f-0de2a62eb369";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "data.nilsPlayground.TurnOffTrickAttackWindow(true)\
self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Turn off TrickAttack";
			["time"] = 865.5;
			["timeRange"] = true;
			["timelineIndex"] = 72;
			["timerEndOffset"] = 4;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "48cd2170-844e-815d-95ce-cb668b5ba26b";
		};
	};
	[73] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local hasBuff = false\
if HasBuff(Player.id,2211) then \
  hasBuff = true\
  if MoogleTTS ~= nil then MoogleTTS.Speak(\"Attack Red\") end\
end\
\
if HasBuff(Player.id,2210) then \
  hasBuff = true\
  if MoogleTTS ~= nil then MoogleTTS.Speak(\"Attack Blue\") end\
end\
\
if hasBuff == true then\
  data.nilsPlayground.TurnOnTrickAttackWindow()\
  self.used = true\
end\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Turn on Trick when Buff";
			["time"] = 1000;
			["timeRange"] = true;
			["timelineIndex"] = 73;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "9f0c3210-7695-edcf-b50c-67bf6266114c";
		};
	};
	[90] = {
	};
	[91] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "data.nilsPlayground.TurnOffTCJ(true)\
self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Turn off TCJ";
			["time"] = 1143.8;
			["timeRange"] = true;
			["timelineIndex"] = 91;
			["timerEndOffset"] = 10;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "88daca06-73e9-8c66-a675-ee8e4efcddc3";
		};
	};
	[92] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 7548)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.Armslength.enabled = false else	actionskill:Cast() end\
\
-- Moogle TTS call out if you have it installed an setup\
if MoogleTTS ~= nil then MoogleTTS.Speak(\"knockback\") end\
self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Arms Length";
			["time"] = 1156;
			["timeRange"] = true;
			["timelineIndex"] = 92;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "6c0e2dcf-3682-13a0-ba7b-2a7641820f20";
		};
	};
	[93] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "data.nilsPlayground.TurnOnTCJ()\
self.used = true";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Turn On TCJ";
			["time"] = 1157;
			["timeRange"] = false;
			["timelineIndex"] = 93;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "9af1a6f2-98d5-a37b-9b3a-2c63cac491ef";
		};
	};
	[103] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 1235.1;
			["timeRange"] = true;
			["timelineIndex"] = 103;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "589d3548-608c-8de4-8641-f4f1299c4cfe";
		};
	};
	[104] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "local actionskill = ActionList:Get(1, 2241)\
\
-- if sally installed, use hotbar, otherwise use base\
if SallyNIN ~= nil then SallyNIN.HotBarConfig.ShadeShift.enabled = false else	actionskill:Cast() end \
self.used = true\
\
";
			["executeType"] = 2;
			["loop"] = false;
			["name"] = "Shadeshift";
			["time"] = 1245.2;
			["timeRange"] = true;
			["timelineIndex"] = 104;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = -4;
			["used"] = false;
			["uuid"] = "85ee884b-c797-7d33-8db0-eef0436c280d";
		};
	};
	["mapID"] = 912;
	["version"] = 2;
}
return obj1
