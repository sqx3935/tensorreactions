-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 9;
		["execute"] = "NilsReactionCore.Reset(true)\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaReturnsAction"] = false;
		["name"] = "Reset: toggles on wipe";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "b2e7373d-674b-5a34-8f1d-2792f869f5a9";
	};
	[2] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 10;
		["execute"] = "NilsReactionCore.Reset()\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaReturnsAction"] = false;
		["name"] = "Reset: toggles on death";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "c5a4e46f-ed58-5825-93ed-7b8a4e2ed9a6";
	};
	[3] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "if gReactionZoomhackSet == nil then\
  gDevHackMaxZoom = 40.0\
	 gDevHackMinZoom = 1.5\
  gReactionZoomhackSet = true\
end\
\
if gReactionSpeedhackSet == nil then\
  gDevHackWalkSpeed = 8\
  gReactionSpeedhackSet = true\
end\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true ";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaReturnsAction"] = false;
		["name"] = "Set Hacks";
		["throttleTime"] = 1000;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 1;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "8f7f9ce0-6a44-7108-8609-db6005bc34af";
	};
	[4] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "d(\"-\")\
local wasSuccessful, action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionCore.Hotbar.Ninja.ShadeShift()\
d(wasSuccessful)\
if wasSuccessful then\
  self.used = true\
  return action, targetID, ignoreWeaveRules, allowInterrupt\
end";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaReturnsAction"] = true;
		["name"] = "test";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "35c5db95-506a-3925-9cdb-44428e53b5b2";
	};
}
return obj1
