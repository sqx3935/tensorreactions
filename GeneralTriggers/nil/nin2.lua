-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 9,
		["execute"] = "NilsReactionCore.Reset(true)\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Reset: toggles on wipe",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "b2e7373d-674b-5a34-8f1d-2792f869f5a9",
	},
	[2] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 10,
		["execute"] = "NilsReactionCore.Reset()\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Reset: toggles on death",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "c5a4e46f-ed58-5825-93ed-7b8a4e2ed9a6",
	},
	[3] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
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
self.used = true ",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Set Hacks",
		["throttleTime"] = 1000,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 1,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "8f7f9ce0-6a44-7108-8609-db6005bc34af",
	},
	[4] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "\
function Reset(onwipe)\
   d(\"test\")\
   d(onwipe == nil)\
  if NilsReactionCore.isempty(onwipe) then onwipe = false end\
  d(tostring(NilsReactionCore.Settings.EnableDebug))\
  if NilsReactionCore.Settings.EnableDebug then self.Log(\"reset\") end\
  d(\"1\")\
  -- check if setting is true to issue ACT reset\
  if NilsReactionCore.Settings.IssueACTResetOnWipe and onwipe == true then SendTextCommand(\"/echo end\") end\
  d(\"2\")\
  -- reset correct arc\
  if Player.job == NilsReactionCore.jobs.Dancer.id then NilsReactionCore.Toggles.Dancer.Reset(onwipe)\
  elseif Player.job == NilsReactionCore.jobs.Dragoon.id then NilsReactionCore.Toggles.Dragoon.Reset(onwipe)\
  elseif Player.job == NilsReactionCore.jobs.Darkknight.id then NilsReactionCore.Toggles.Darkknight.Reset(onwipe) \
  elseif Player.job == NilsReactionCore.jobs.Monk.id then NilsReactionCore.Toggles.Monk.Reset(onwipe) \
  elseif Player.job == NilsReactionCore.jobs.Ninja.id then d(\"3\") NinjaReset(onwipe) \
  elseif Player.job == NilsReactionCore.jobs.Redmage.id then NilsReactionCore.Toggles.Redmage.Reset(onwipe) \
  elseif Player.job == NilsReactionCore.jobs.Samurai.id then NilsReactionCore.Toggles.Samurai.Reset(onwipe) \
  elseif Player.job == NilsReactionCore.jobs.Summoner.id then NilsReactionCore.Toggles.Summoner.Reset(onwipe)\
  elseif Player.job == NilsReactionCore.jobs.Warrior.id then NilsReactionCore.Toggles.Warrior.Reset(onwipe) end\
 d(\"end\")\
  -- reset shared toggles\
  if onwipe == true then NilsReactionCore.Toggles.Handler.Reset() end\
end\
\
function NinjaReset(onwipe)\
d(\"5\")\
  if NilsReactionCore.isempty(onwipe) then onwipe = false end\
d(\"6\")\
  if Player.job ~= NilsReactionCore.jobs.Ninja.id then return false end\
d(\"7\")\
  local whichArc = NilsReactionCore.WhichArc()\
\
  if onwipe then\
d(\"8\")\
    if whichArc == NilsReactionCore.arcs.MCR and MCRAPI ~= nil then\
      MCRAPI.Filter_Common_NoBigCooldown(NilsReactionCore.params.off)\
      MCRAPI.Filter_Common_Aoe(NilsReactionCore.params.on)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 3)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 14)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 16)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 17)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 20)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 21)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 22)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 23)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 24)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 26)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 31)\
      MCRAPI.Filter_JobBase_DirectByFilterKey(NilsReactionCore.params.on,Player.job, 32)\
    end\
\
    if whichArc == NilsReactionCore.arcs.SallyNIN and SallyNIN ~= nil then\
      SallyNIN.SkillSettings.Opener.enabled = false\
      SallyNIN.SkillSettings.SaveCD.enabled = false\
      SallyNIN.SkillSettings.Range.enabled = true\
      SallyNIN.SkillSettings.Omni.enabled = false\
      SallyNIN.SkillSettings.BurnBoss.enabled = false\
      SallyNIN.SkillSettings.Potion.enabled = onwipe == true\
      SallyNIN.SkillSettings.UseAOE.enabled = true\
      SallyNIN.SkillSettings.TCJ.enabled = true\
      SallyNIN.SkillSettings.Meisui.enabled = true\
      SallyNIN.SkillSettings.TrickAttack.enabled = true\
      SallyNIN.SkillSettings.Ninjutsu.enabled = true\
      SallyNIN.SkillSettings.Bushin.enabled = true\
      SallyNIN.SkillSettings.Ninki.enabled = true\
      SallyNIN.SkillSettings.Assassinate.enabled = true\
      SallyNIN.SkillSettings.DWD.enabled = true\
      SallyNIN.SkillSettings.Mug.enabled = true\
      SallyNIN.SkillSettings.Kassatsu.enabled = true\
      SallyNIN.SkillSettings.Doton.enabled = true\
      SallyNIN.SkillSettings.TrueNorth.enabled = true\
      SallyNIN.SkillSettings.ACRefresh.enabled = true\
      SallyNIN.SkillSettings.ShadowFang.enabled = true\
    end\
\
    NilsReactionCore.Toggles.Handler.Reset()\
  end\
\
  if whichArc == NilsReactionCore.arcs.SallyNIN and SallyNIN ~= nil then\
    SallyNIN.HotBarConfig.Armslength.enabled = true\
    SallyNIN.HotBarConfig.TrueNorth.enabled = true\
    SallyNIN.HotBarConfig.Feint.enabled = true\
    SallyNIN.HotBarConfig.Bloodbath.enabled = true\
    SallyNIN.HotBarConfig.SecondWind.enabled = true\
    SallyNIN.HotBarConfig.ShadeShift.enabled = true\
    SallyNIN.HotBarConfig.Kassatsu.enabled = true\
    SallyNIN.HotBarConfig.TCJ.enabled = true\
    SallyNIN.HotBarConfig.Meisui.enabled = true\
    SallyNIN.HotBarConfig.Huton.enabled = true\
    SallyNIN.HotBarConfig.Doton.enabled = true\
    SallyNIN.HotBarConfig.Suiton.enabled = true\
    SallyNIN.HotBarConfig.Raiton.enabled = true\
    SallyNIN.HotBarConfig.Katon.enabled = true\
    SallyNIN.HotBarConfig.Sprint.enabled = true\
    SallyNIN.HotBarConfig.ArmorCrush.enabled = true\
    SallyNIN.HotBarConfig.LegSweep.enabled = true\
    SallyNIN.HotBarConfig.LB.enabled = true\
  end\
\
  return true\
end\
\
\
Reset(true)\
self.used = true",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = true,
		["name"] = "test",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "35c5db95-506a-3925-9cdb-44428e53b5b2",
	},
}
return obj1
