-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "-- call api\
-- api will either set tensor/salice hotbar and return a nil action or return an action wth the extra features\
\
action, targetID, ignoreWeaveRules, allowInterrupt = NilsReactionLibrary.Combat.Actions.ThirdEye() \
if action == nil then \
  self.used = true\
  return nil\
end\
\
return action, targetID, ignoreWeaveRules, allowInterrupt\
\
";
		["executeType"] = 2;
		["luaReturnsAction"] = true;
		["name"] = "test";
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "c452595b-e03d-52ec-9617-70b6591b10e3";
	};
}
return obj1
