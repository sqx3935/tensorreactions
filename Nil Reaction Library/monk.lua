-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                        This section is only for monk base actions and toggles                          *
-- *                                                                                                        *
-- **********************************************************************************************************

-- *************************************** Functions around actions  ****************************************
-- *                                                                                                        *
-- *                                              Actions                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************


-- ********************************** Functions around toggle actions  **************************************
-- *                                                                                                        *
-- *                                              Toggles                                                   *
-- *                                                                                                        *
-- **********************************************************************************************************

if NilsReactionLibrary.Combat.Toggles.Monk == nil then NilsReactionLibrary.Combat.Toggles.Monk = {} end

function NilsReactionLibrary.Combat.Toggles.Monk.Reset()
  if Player.job ~= NilsReactionLibrary.jobs.Monk.id then return false end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.Brawler then
    ACR_BrawlerSB_Destroy = false
    ACR_BrawlerSB_Stances = true
    ACR_BrawlerSB_Tornado = true
    ACR_BrawlerSB_AOE = true
    ACR_BrawlerSB_SmartAOE = true
    ACR_BrawlerSB_Meditation = true
    ACR_BrawlerSB_Anatman = false
    ACR_BrawlerSB_DOTs = true
    ACR_BrawlerSB_Buffs = true
    ACR_BrawlerSB_PerfectBalance = true
    ACR_BrawlerSB_CDs = true
    ACR_BrawlerSB_Riddles = true
    ACR_BrawlerSB_Tackle = true
    ACR_BrawlerSB_Stuns = true
    ACR_BrawlerSB_FormShift = true
    ACR_BrawlerSB_Defensives = true
    ACR_BrawlerSB_TrueNorth = true
    ACR_BrawlerSB_Pots = true
    ACR_Reactions = true
    ACR_BrawlerSB_DragonKick = true
    ACR_OGCDOnly = false
    ACR_ReactionsOnly = false
    ACR_LimitBreak = false

    NilsReactionLibrary.Combat.Toggles.Handler.Reset()

  end
  return true
end

function NilsReactionLibrary.Combat.Toggles.Monk.CD(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Monk.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.CDBlackList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.Brawler then
    ACR_BrawlerSB_CDs = toggleOn
	  ACR_BrawlerSB_PerfectBalance = toggleOn
    return true
  end

  return false
end

function NilsReactionLibrary.Combat.Toggles.Monk.AOE(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Monk.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.AOEBlackList.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.AOEBlackList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.Brawler then
    ACR_BrawlerSB_AOE = toggleOn
	  ACR_BrawlerSB_SmartAOE = toggleOn
    return true
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Monk.DOT(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Monk.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.DOT.IsActive = toggleOn == false -- set active if TCJ is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.DOT.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.Brawler then
    ACR_BrawlerSB_DOTs = toggleOn
    return true
  end

  return false
end

function NilsReactionLibrary.Combat.Toggles.Monk.Omni(toggleOn, byTimeline)
  if Player.job ~= NilsReactionLibrary.jobs.Monk.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end
  if NilsReactionLibrary.isempty(byTimeline) then byTimeline = false end

  -- timeline overrides everything else.
  if byTimeline then
    NilsReactionLibrary.Combat.Toggles.Control.OmniWhiteList.IsActive = toggleOn == false -- set active if it is suppose to be off
    NilsReactionLibrary.Combat.Toggles.Control.OmniWhiteList.TimelineActive = byTimeline and toggleOn == false
  end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.Brawler then
    ACR_BrawlerSB_TrueNorth = toggleOn
    return true
  end
  return false
end

function NilsReactionLibrary.Combat.Toggles.Monk.TrueNorth(toggleOn)
  if Player.job ~= NilsReactionLibrary.jobs.Monk.id then return false end

  if NilsReactionLibrary.isempty(toggleOn) then toggleOn = true end

  if NilsReactionLibrary.WhichArc() == NilsReactionLibrary.arcs.Brawler then
    ACR_BrawlerSB_TrueNorth = toggleOn
    return true
  end
  return false
end