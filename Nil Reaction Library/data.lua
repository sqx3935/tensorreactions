-- ****************************************** Data References ***********************************************
-- *                                                                                                        *
-- *                                lookup tables for references of things                                  *
-- *                                                                                                        *
-- **********************************************************************************************************
if NilsReactionLibrary.data == nil then NilsReactionLibrary.data = {} end

NilsReactionLibrary.data.gauges = {huton = 0, ninki = 0}

NilsReactionLibrary.data.AOEBlackList = {
 -- [541] = true, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
  [7097] = true, -- Demon Chadarnook
  [7646] = true, -- Immortal Key
  [7662] = true, -- Tokkapchi
  [7663] = true, -- Mud Slime
  [7665] = true, -- Muddy Dorpokkur
  [7672] = true, -- Mist Dragon
  [7673] = true, -- Draconic Regard
  [7702] = true, -- Suzaku
  [7703] = true, -- Scarlet Plume
  [7704] = true, -- Scarlet Tail Feather
  [7725] = true, -- Scarlet Lady
  [8262] = true, -- Forgiven Obscenity
  [9181] = true, -- Lahabrea's shade
  [9182] = true, --	Igeyorhm's shade
  [9287] = true, -- Garuda
  [9288] = true -- Ifrit -->
}

NilsReactionLibrary.data.BurnBossList = {
  -- [541] = 1, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
  [11347] = 1, -- Alexander Prime
  [11340] = 1, -- Brute Justice
  [11342] = 2, -- Cruise Chaser
  [11335] = 2, -- Living Liquid
  [6358] = 1, -- Alexander
  [9365] = 2, -- Eden Prime savage
  [9366] = 4, -- Guardian of Paradise savage
  [10511] = 2, -- voidwalker savage
  [10604] = 2, -- Leviathan savage
  [8486] = 2, -- Leviathan savage
  [8350] = 2, -- Titan savage
  [11361] = 1, -- Serial-jointed Command Model
  [9020] = 1, -- 9s-operated walking fortress
  [9143] = 1, -- Hobbes
  [9144] = 1, -- Hobbes
  [9145] = 1, -- Hobbes
  [9147] = 1, -- Engels
  [8353] = 1, -- Innocence
  [9281] = 1, -- Ramuh --> E5S
  [9289] = 1, -- Raktapaksa --> E6S
  [9298] = 1, -- The Idol of Darkness --> E7S
  [9353] = 1 -- Shiva --> E8S
}

NilsReactionLibrary.data.CelestialIntersection = {
  -- Dohn Mheg
  [821] = {
    [8857] = 4, -- Candy Cane
    [13732] = 4, -- Crippling Blow
  },
  -- Mt. Gulg
  [822] = {
    [15611] = 3, -- Rake
    [15625] = 4, -- Catechism
    [15634] = 4, -- Sacrament Sforzando
  },
  -- The Qitana Ravel
  [823] = {
    [15497] = 4, -- Stonefist
    [15505] = 4, -- Ripper Fang
    [15513] = 4, -- Rend
  },
  -- Malikah's Well
  [836] = {
    [15589] = 4.5, -- Stone Flail
    [15595] = 4.5, -- Efface
  },
  -- The Twinning
  [840] = {
    [15717] = 4, -- Augurium
    [15853] = 3, -- Thunder Beam
    [15867] = 3, -- Rail Cannon
  },
  -- Akadaemia Anyder
  [841] = {
    [15876] = 4, -- Protolithic Puncture
    [15907] = 3, -- Shockbolt
  },
  -- The Crown of the Immaculate
  [848] = {
    [16073] = 5, -- Holy Sword
    [16077] = 5, -- Righteous Bolt
  },
  -- The Core
  [853] = {
    [15752] = 6, -- Spear of Paradise
    [17646] = 6, -- Vice and Virtue
    [17648] = 6, -- Vice and Virtue
  },
  -- The Halo
  [854] = {
    [15969] = 5, -- Shadowflame
    [15970] = 5, -- Shadowflame
  },
  -- The Nereus Trench
  [855] = {
    [16352] = 5, -- Rip Current
  },
  -- The Dancing Plague
  [858] = {
    [15660] = 5, -- Fae Light
    [15670] = 4, -- Hard Swipe
    [15671] = 4, -- Pummel
    [15690] = 4, -- Divination Rune
  },
  -- The Grand Cosmos
  [884] = {
    [18203] = 4, -- Storm of Color
    [18276] = 5, -- Captive Bolt
    [18281] = 4, -- Shadowbolt
    [18757] = 4, -- Peerless Valor
  },
  -- The Dying Gasp
  [885] = {
    [18342] = 5, -- Ravenous Assault
    [18370] = 4, -- Fire IV
    [18371] = 4, -- Blizzard IV
    [18385] = 5, -- Height of Chaos
  },
  -- Anamnesis Anyder                             
  [898] = {
    [19305] = 4, -- Fetid Fang
    [19314] = 4, -- Fetid Fang
    [19340] = 4, -- Bonebreaker
  },
}

NilsReactionLibrary.data.CDBlackList = {
 -- [541] = true, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
  [7129] = true, -- Doom Chimney
  [7125] = true, -- Putrid Passenger
  [7233] = true, -- Specter of the Homeland
  [7234] = true, -- Specter of the Empire
  [7646] = true, -- Immortal Key
  [7673] = true, -- Draconic Regard
  [7703] = true, -- Scarlet Plume
  [7725] = true, -- Scarlet Lady
  [8826] = true, -- Shadow of the Ancients
  [8346] = true, -- Granite Gaol
  [8342] = true, -- Arcane Sphere
  [9319] = true, -- electric aether
  -- [9320] = true, -- aqueous aether
  [9321] = true -- earthen aether
}

NilsReactionLibrary.data.dotBlacklist = {
    -- [541] = true, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
    [7125] = true, -- Putrid Passenger
    [7129] = true, -- Doom Chimney
    [7233] = true, -- Specter of the Homeland
    [7234] = true, -- Specter of the Empire
    [7646] = true, -- Immortal Key
    [7673] = true, -- Draconic Regard
    [8826] = true, -- Shadow of the Ancients
    [8394] = true, -- Forgiven Shame
    [8342] = true, -- Arcane Sphere
    [8268] = true, -- Forgiven Venery
    [9040] = true, -- Pack Armadillo
    [9319] = true, -- electric aether
--  [9320] = true, -- aqueous aether
    [9321] = true, -- earthen aether
    [9214] = true -- TEA jag dolls
}

NilsReactionLibrary.data.feint = {
    -- test , tempest, Tempest Swallow
    [818] = {[17336] = 5},
    -- The Royal City of Rabanastre
    [734] = {
        [9687] = 5, -- Rock Cutter
        [9773] = 5, -- Crippling Blow
        [9856] = 5 -- Crush Helm
    },
    -- The Ridorana Lighthouse
    [776] = {
        [11354] = 5, -- Destroy
        [11377] = 5 -- Destroy
    },
    -- Dohn Mheg
    [821] = {
        [13732] = 5 -- Crippling Blow
    },
    -- Mt. Gulg
    [822] = {
        [15611] = 5 -- Rake
    },
    -- The Qitana Ravel
    [823] = {
        [15497] = 5, -- Stonefist
        [15505] = 5, -- Ripper Fang
        [15513] = 5 -- Rend
    },
    -- The Orbonne Monastery
    [826] = {
        [14137] = 5, -- Arm Shot
        [14162] = 5 -- Crush Helm
    },
    -- Malikah's Well
    [836] = {
        [15589] = 5, -- Stone Flail
        [15595] = 5 -- Efface
    },
    -- Holminster Switch
    [837] = {
        [15812] = 5, -- Pillory
        [15823] = 5, -- The Tickler
        [15831] = 5 -- Head Crusher
    },
    -- The Twinning
    [840] = {
        [15717] = 4 -- Augurium
    },
    -- Akadaemia Anyder
    [841] = {
        [15876] = 4 -- Protolithic Puncture
    },
    -- The Crown of the Immaculate
    [848] = {
        [16073] = 5 -- Holy Sword
    },
    -- The Core
    [849] = {
        [15777] = 5 -- Spear of Paradise
    },
    -- Atlas Peak
    [852] = {
        [16633] = 5 -- Stonecrusher
    },
    -- The Core
    [853] = {
        [15752] = 5 -- Spear of Paradise
    },
    -- The Dancing Plague
    [858] = {
        [15670] = 5, -- Hard Swipe
        [15671] = 5 -- Pummel
    },
    -- The Copied Factory
    [882] = {
        [18639] = 5, -- Forceful Impact
        [18672] = 5 -- Clanging Blow
    },
    -- The Grand Cosmos
    [884] = {
        [18276] = 5, -- Captive Bolt
        [18757] = 4 -- Peerless Valor
    },

    -- Anamnesis Anyder
    [898] = {
        [19305] = 4, -- Fetid Fang
        [19314] = 4, -- Fetid Fang
        [19340] = 4 -- Bonebreaker
    }
}

NilsReactionLibrary.data.jumpBlacklist = {
 [334] = true, -- Reckless Charge
 [351] = true, -- Charged Whisker
 [355] = true, -- Megablaster
 [526] = true, -- Cermet Drill
 [566] = true, -- Bubble Shower
 [618] = true, -- Double Smash
 [720] = true, -- Overpower
 [866] = true, -- Heartstopper
 [1003] = true, -- Iron Tempest
 [1068] = true, -- Blast Wave
 [2143] = true, -- The Lion's Breath
 [2144] = true, -- The Ram's Voice
 [2479] = true, -- Flounder
 [3343] = true, -- The Ram's Voice
 [4366] = true, -- Dark II
 [4545] = true, -- Defibrillate
 [4651] = true, -- The Dragon's Breath
 [4695] = true, -- Shred
 [4696] = true, -- The Hand
 [4706] = true, -- Transonic Blast
 [4791] = true, -- Tail Screw
 [6623] = true, -- Dark
 [7826] = true, -- Clearout
 [7832] = true, -- Juji Shuriken
 [7837] = true, -- Tatami-gaeshi
 [7838] = true, -- Tatami-gaeshi
 [7840] = true, -- Juji Shuriken
 [7842] = true, -- Iai-giri
 [7850] = true, -- Fragility
 [7851] = true, -- Dragonfire
 [7883] = true, -- Burn
 [7902] = true, -- Clamp
 [7927] = true, -- Heave
 [7929] = true, -- Rush
 [7932] = true, -- Rush
 [7947] = true, -- Flutterfall
 [7949] = true, -- Eye of the Fierce
 [7954] = true, -- Flutterfall
 [7957] = true, -- Magitek Fire II
 [7961] = true, -- Magitek Pulse
 [7964] = true, -- Gale Cut
 [7973] = true, -- Ketu & Rahu
 [7975] = true, -- Ketu Cutter
 [7976] = true, -- Ketu Wave
 [7977] = true, -- Rahu Blaster
 [7978] = true, -- Rahu Ray
 [8022] = true, -- Amorphous Applause
 [8026] = true, -- Concussive Oscillation
 [8027] = true, -- Concussive Oscillation
 [8058] = true, -- Seduce
 [8059] = true, -- Coriolis Kick
 [8060] = true, -- Abyssal Volcano
 [8066] = true, -- Mad Stare
 [8083] = true, -- Tail Slap
 [8089] = true, -- Hypernova
 [8091] = true, -- Levinbolt
 [8093] = true, -- Earth Breath
 [8095] = true, -- Summon Icicle
 [8097] = true, -- Spikesicle
 [8106] = true, -- Tidal Wave
 [8111] = true, -- Aerial Blast
 [8147] = true, -- Radial Blaster
 [8148] = true, -- Wide Blaster
 [8155] = true, -- Fore and Aft
 [8156] = true, -- Port and Star
 [8161] = true, -- Hellseal
 [8165] = true, -- Hurricane Kick
 [8171] = true, -- Silent Roar
 [8183] = true, -- 1000 Spines
 [8214] = true, -- Crippling Blow
 [8215] = true, -- Pure Will
 [8221] = true, -- Rasen Kaikyo
 [8222] = true, -- Rasen Kaikyo
 [8232] = true, -- Seasplitter
 [8237] = true, -- Rasen Kaikyo
 [8238] = true, -- Rasen Kaikyo
 [8257] = true, -- The Parting Clouds
 [8265] = true, -- Tail Laser
 [8266] = true, -- Tail Laser
 [8276] = true, -- Magitek Ray
 [8277] = true, -- Snapping Spell
 [8286] = true, -- Demimagicks
 [8282] = true, -- Aetherochemical Grenado
 [8283] = true, -- Integrated Aetheromodulator
 [8294] = true, -- Art Of The Storm
 [8300] = true, -- Vein Splitter
 [8318] = true, -- Wild Speed
 [8328] = true, -- Rahu Comet
 [8329] = true, -- Rahu Comet
 [8330] = true, -- Rush
 [8331] = true, -- Ketu Slash
 [8332] = true, -- Ketu Slash
 [8334] = true, -- Rahu Blaster
 [8335] = true, -- Rahu Blaster
 [8336] = true, -- Magitek Pulse
 [8348] = true, -- Diffractive Laser
 [8351] = true, -- Garlean Fire
 [8353] = true, -- Magitek Ray
 [8354] = true, -- Circle of Death
 [8369] = true, -- Clean Cut
 [8521] = true, -- Divine Denial
 [8522] = true, -- Divine Doubt
 [8523] = true, -- Divine Desire
 [8524] = true, -- Hand of Grace
 [8525] = true, -- Hand of Beauty
 [8526] = true, -- Alluring Arm
 [8569] = true, -- Grand Sword
 [8587] = true, -- Flood
 [8588] = true, -- Ame No Murakumo
 [8600] = true, -- 1000 Needles
 [8612] = true, -- Flush
 [8613] = true, -- Scalding Breath
 [8616] = true, -- Dirty Claw
 [8627] = true, -- Blanket Thunder
 [8685] = true, -- Fire Break
 [8712] = true, -- Wild Horn
 [8871] = true, -- Hydrofall
 [8893] = true, -- Hydrofall
 [8906] = true, -- Swinge
 [8941] = true, -- Spellblade Blizzard III
 [8942] = true, -- Spellblade Thunder III
 [8943] = true, -- Spellblade Holy
 [8946] = true, -- Pole Shift
 [8951] = true, -- Ribbit
 [8952] = true, -- Squelch
 [8953] = true, -- Oink
 [8957] = true, -- Cross Reaper
 [8958] = true, -- Stench of Death
 [8959] = true, -- Gusting Gouge
 [8966] = true, -- The Queen's Waltz
 [8968] = true, -- The Queen's Waltz
 [8974] = true, -- The Queen's Waltz
 [8980] = true, -- Magic Hammer
 [9005] = true, -- Issen
 [9007] = true, -- Clearout
 [9011] = true, -- Auto Crossbow
 [9047] = true, -- Epicenter
 [9050] = true, -- Maniacal Probe
 [9054] = true, -- -100 Gs
 [9057] = true, -- Antilight
 [9070] = true, -- Broken Earth
 [9071] = true, -- Death's Gaze
 [9131] = true, -- Cermet Pile
 [9132] = true, -- Shoulder Cannon
 [9135] = true, -- Epigraph
 [9173] = true, -- Burn
 [9186] = true, -- Clamp
 [9197] = true, -- Cannonfire
 [9198] = true, -- Haywire
 [9205] = true, -- Fire III
 [9207] = true, -- Blizzard III
 [9208] = true, -- Blizzard III
 [9213] = true, -- Thunder III
 [9217] = true, -- Flare
 [9224] = true, -- The Decisive Battle
 [9227] = true, -- Zombie Breath
 [9228] = true, -- Clearout
 [9232] = true, -- Outer Antilight
 [9235] = true, -- White Antilight
 [9236] = true, -- Black Antilight
 [9237] = true, -- Edge of Death
 [9245] = true, -- Vacuum Wave
 [9246] = true, -- Delta Attack
 [9247] = true, -- Light and Darkness
 [9248] = true, -- Emptiness
 [9249] = true, -- Emptiness
 [9258] = true, -- The Final Battle
 [9259] = true, -- Grand Cross Alpha
 [9260] = true, -- Grand Cross Delta
 [9261] = true, -- Grand Cross Omega
 [9292] = true, -- Inner Antilight
 [9293] = true, -- Terminal Antilight
 [9313] = true, -- Spellblade Blizzard III
 [9314] = true, -- Spellblade Thunder III
 [9318] = true, -- Ribbit
 [9323] = true, -- Cross Reaper
 [9324] = true, -- Gusting Gouge
 [9325] = true, -- The Game
 [9328] = true, -- Saber Dance
 [9349] = true, -- Divine Denial
 [9350] = true, -- Hand of Grace
 [9351] = true, -- Hand of Beauty
 [9352] = true, -- Alluring Arm
 [9378] = true, -- Epicenter
 [9382] = true, -- Grand Sword
 [9384] = true, -- Exhaust
 [9394] = true, -- Lullaby
 [9395] = true, -- Wide Blaster
 [9402] = true, -- Fire III
 [9404] = true, -- Blizzard III
 [9409] = true, -- Thunder III
 [9411] = true, -- Flare
 [9419] = true, -- Zombie Breath
 [9420] = true, -- Clearout
 [9422] = true, -- Magitek Ray
 [9425] = true, -- Cermet Pile
 [9426] = true, -- Grand Sword
 [9427] = true, -- Exhaust
 [9428] = true, -- Circle of Death
 [9474] = true, -- Antilight
 [9485] = true, -- Demon Eye
 [9490] = true, -- Earthquake
 [9605] = true, -- Art Of The Storm
 [9613] = true, -- Inner Demons
 [9631] = true, -- The Parting Clouds
 [9661] = true, -- Seasplitter
 [9675] = true, -- Earth Hammer
 [9677] = true, -- Jagged Edge
 [9721] = true, -- Tidal Wave
 [9726] = true, -- Aerial Blast
 [9770] = true, -- Soulfix
 [9772] = true, -- Unrelenting
 [9775] = true, -- Self-destruct
 [9789] = true, -- Blizzard IV
 [9801] = true, -- Benighting Breath
 [9804] = true, -- Atomic Ray
 [9815] = true, -- Mystic Light
 [9817] = true, -- Mystic Flame
 [9826] = true, -- Words of Woe
 [9827] = true, -- Tail Drive
 [9828] = true, -- The Spin
 [9829] = true, -- Eye Of The Fire
 [9841] = true, -- Choco Meteor
 [9842] = true, -- Karma
 [9845] = true, -- Cry of Victory
 [9846] = true, -- Trample
 [9860] = true, -- Crush Weapon
 [9865] = true, -- Maverick
 [9869] = true, -- Pomp and Circumstance
 [9879] = true, -- Hydrocannon
 [9881] = true, -- Stagnant Spray
 [9882] = true, -- Plain Pound
 [9884] = true, -- Landslip
 [9886] = true, -- Implosive Curse
 [9887] = true, -- Undying Fire
 [10003] = true, -- Crush Weapon
 [10047] = true, -- Diffractive Laser
 [10048] = true, -- Diffractive Laser
 [10066] = true, -- Demon Simulation
 [10077] = true, -- Ink
 [10078] = true, -- Tentacle Simulation
 [10081] = true, -- Diffractive Laser
 [10086] = true, -- Shockwave
 [10087] = true, -- Aura Cannon
 [10091] = true, -- Magitek Ray
 [10110] = true, -- Tentacle
 [10120] = true, -- Magitek Ray
 [10124] = true, -- Atomic Ray
 [10130] = true, -- Citadel Buster
 [10149] = true, -- Citadel Buster
 [10157] = true, -- Death Spin
 [10158] = true, -- Death Spin
 [10167] = true, -- Light Pillar
 [10170] = true, -- Light Pillar
 [10171] = true, -- Light Pillar
 [10172] = true, -- Light Pillar
 [10174] = true, -- 100-tonze Swing
 [10178] = true, -- Disrobe
 [10183] = true, -- The Patient Blade
 [10185] = true, -- Rolling Winds
 [10193] = true, -- Hell of Waste
 [10201] = true, -- Fire And Lightning
 [10203] = true, -- Sweep The Leg
 [10206] = true, -- Fire And Lightning
 [10208] = true, -- State of Shock
 [10210] = true, -- Highest Stakes
 [10228] = true, -- Sweep the Leg
 [10252] = true, -- Flash Torrent
 [10254] = true, -- Flash Torrent
 [10255] = true, -- Flash Torrent
 [10258] = true, -- Rock Hard
 [10274] = true, -- Divine Lure
 [10286] = true, -- Demonic Wave
 [10287] = true, -- Demonic Wave
 [10292] = true, -- Demonic Spout
 [10293] = true, -- Demonic Spout
 [10294] = true, -- Demonic Spout
 [10295] = true, -- Demonic Spout
 [10308] = true, -- Demonic Stone
 [10311] = true, -- Demonic Stone
 [10370] = true, -- Magma
 [10390] = true, -- Plague of Locusts
 [10391] = true, -- Cloud of Locusts
 [10392] = true, -- Gale Cannon
 [10393] = true, -- Dread Wind
 [10398] = true, -- Dark Aero
 [10404] = true, -- Head On
 [10413] = true, -- All In The Mind
 [10415] = true, -- Head On
 [10423] = true, -- Head On
 [10435] = true, -- Blizzard Blitz
 [10438] = true, -- Blizzard Blitz
 [10440] = true, -- Blizzard Blitz
 [10442] = true, -- Thrumming Thunder
 [10447] = true, -- Flagrant Fire
 [10452] = true, -- Timely Teleport
 [10454] = true, -- Aero Assault
 [10459] = true, -- Shockwave
 [10462] = true, -- Gravitational Wave
 [10463] = true, -- Intemperate Will
 [10467] = true, -- Ave Maria
 [10468] = true, -- Indolent Will
 [10494] = true, -- Wings Of Destruction
 [10495] = true, -- Wings Of Destruction
 [10496] = true, -- Wings Of Destruction
 [10498] = true, -- Starstrafe
 [10499] = true, -- Meteor
 [10501] = true, -- Meteor
 [10502] = true, -- Meteor
 [10503] = true, -- Celestriad
 [10504] = true, -- Blizzard III
 [10505] = true, -- Blizzard III
 [10506] = true, -- Thunder III
 [10507] = true, -- Fire III
 [10508] = true, -- Fire III
 [10515] = true, -- Blizzard Blitz
 [10518] = true, -- Blizzard Blitz
 [10520] = true, -- Blizzard Blitz
 [10522] = true, -- Thrumming Thunder
 [10527] = true, -- Flagrant Fire
 [10530] = true, -- Timely Teleport
 [10532] = true, -- Aero Assault
 [10535] = true, -- Shockwave
 [10536] = true, -- Wave Cannon
 [10537] = true, -- Gravitational Wave
 [10538] = true, -- Intemperate Will
 [10539] = true, -- Ave Maria
 [10540] = true, -- Indolent Will
 [10597] = true, -- Twister
 [10598] = true, -- Spark
 [10653] = true, -- Howling Wail
 [10654] = true, -- Fluid Swing
 [10657] = true, -- 111-tonze Swing
 [10661] = true, -- Right Tentacle
 [10664] = true, -- Death Rings
 [10677] = true, -- Dragon Breath
 [10679] = true, -- Absolute Terror
 [10680] = true, -- Heavensfall
 [10681] = true, -- Heavensfall
 [10688] = true, -- Magic Burst
 [10703] = true, -- Hound out of Hell
 [10704] = true, -- Tail Blow
 [10709] = true, -- Infernal Gate
 [10727] = true, -- Dark Fire III
 [10729] = true, -- Plain Pound
 [10730] = true, -- Countless Needles
 [10747] = true, -- Self-destruct
 [10748] = true, -- Big Burst
 [10751] = true, -- Giga Scream
 [10754] = true, -- Horde Lullaby
 [10760] = true, -- Scythe Tail
 [10762] = true, -- Valfodr
 [10763] = true, -- Valfodr
 [10767] = true, -- Dark II
 [10769] = true, -- Petrifying Eye
 [10770] = true, -- Paralyze III
 [10793] = true, -- Aratama
 [10796] = true, -- Fire And Lightning
 [10798] = true, -- Sweep The Leg
 [10801] = true, -- Fire And Lightning
 [10822] = true, -- Sweep the Leg
 [10842] = true, -- Incubus
 [10846] = true, -- Razor Scales
 [10852] = true, -- Double Hex Eye
 [10858] = true, -- Heavy Toss
 [10862] = true, -- 10,000-tonze Swing
 [10865] = true, -- 100-tonze Swipe
 [10866] = true, -- Glower
 [10867] = true, -- Eye of the Beholder
 [10871] = true, -- Unbearable Cloud
 [10872] = true, -- Champ
 [10876] = true, -- 30,000 Needles
 [10948] = true, -- Extremely Bad Breath
 [10952] = true, -- Offal Breath
 [10954] = true, -- Earthy Breath
 [10956] = true, -- Explosive Dehiscence
 [10969] = true, -- Ancient Aero II
 [10970] = true, -- Ancient Aero II
 [10976] = true, -- Water III
 [10980] = true, -- 128-tonze Swing
 [10987] = true, -- Demonic Pain
 [10988] = true, -- Demonic Pain
 [11049] = true, -- Blizzard Blitz
 [11052] = true, -- Blizzard Blitz
 [11053] = true, -- Blizzard Blitz
 [11056] = true, -- Thrumming Thunder
 [11057] = true, -- Thrumming Thunder
 [11058] = true, -- Flagrant Fire
 [11062] = true, -- Demon Simulation
 [11159] = true, -- Wile of the Tengu
 [11160] = true, -- Flames of Hate
 [11165] = true, -- Greater Palm
 [11166] = true, -- Greater Palm
 [11167] = true, -- Tributary
 [11168] = true, -- Tributary
 [11169] = true, -- Mirage
 [11170] = true, -- Mirage
 [11173] = true, -- Mountain Falls
 [11177] = true, -- Both Ends
 [11183] = true, -- Both Ends
 [11206] = true, -- Tsuki-no-Maiogi
 [11217] = true, -- Moonfall
 [11220] = true, -- Moonbeam
 [11222] = true, -- Lunar Halo
 [11226] = true, -- Dark Blade
 [11227] = true, -- Bright Blade
 [11228] = true, -- Lunacy
 [11238] = true, -- Lead of the Underworld
 [11239] = true, -- Steel of the Underworld
 [11245] = true, -- Tsuki-no-Maiogi
 [11257] = true, -- Dark Blade
 [11258] = true, -- Bright Blade
 [11300] = true, -- Gust Front
 [11302] = true, -- Rake
 [11305] = true, -- Stone Breath
 [11334] = true, -- Dark Rain
 [11379] = true, -- Lunar Halo
 [11380] = true, -- Scale Ripple
 [11487] = true, -- Time Eruption
 [11488] = true, -- Time Eruption
 [11573] = true, -- Earthquake
 [11582] = true, -- Earthquake
 [11605] = true, -- Frightful Roar
 [11611] = true, -- Frightful Roar
 [11621] = true, -- Flood
 [11633] = true, -- Cross Reaper
 [11641] = true, -- Gusting Gouge
 [11662] = true, -- Firestorm
 [11676] = true, -- Snowcap
 [11679] = true, -- Snowblind
 [11690] = true, -- Wild Bolt
 [11696] = true, -- Death Spin
 [12507] = true, -- Roly-poly
 [12576] = true, -- Muddy Puddles
 [12590] = true, -- Earthquake
 [12594] = true, -- Landslip
 [12600] = true, -- Quaqmire
 [12602] = true, -- Royal Flush
 [12613] = true, -- Fog Plume
 [12624] = true, -- Damning Edict
 [12625] = true, -- Longitudinal Implosion
 [12626] = true, -- Latitudinal Implosion
 [12631] = true, -- Knock Down
 [12633] = true, -- Big Bang
 [12634] = true, -- Big Bang
 [12641] = true, -- no name
 [12657] = true, -- Damning Edict
 [12658] = true, -- Longitudinal Implosion
 [12659] = true, -- Latitudinal Implosion
 [12664] = true, -- Knock Down
 [12666] = true, -- Big Bang
 [12667] = true, -- Big Bang
 [12674] = true, -- no name
 [12687] = true, -- Cyclone
 [12689] = true, -- Shardfall
 [12710] = true, -- Embalming Earth
 [12715] = true, -- Akh Morn
 [12728] = true, -- Thunderstorm
 [12729] = true, -- Horrid Roar
 [12742] = true, -- Akh Morn
 [12754] = true, -- Thunderstorm
 [12755] = true, -- Horrid Roar
 [12835] = true, -- Fleeting Summer
 [12851] = true, -- Phantom Flurry
 [12854] = true, -- Well of FLame
 [12856] = true, -- Hotspot
 [12859] = true, -- Swoop
 [12883] = true, -- Ferrofluid
 [12892] = true, -- Flame Thrower
 [12898] = true, -- Starboard Wave Cannon
 [12899] = true, -- Starboard Wave Cannon
 [12900] = true, -- Larboard Wave Cannon
 [12901] = true, -- Larboard Wave Cannon
 [12902] = true, -- Starboard Wave Cannon Surge
 [12904] = true, -- Larboard Wave Cannon Surge
 [12907] = true, -- Electric Slide
 [12924] = true, -- Flamethrower
 [12925] = true, -- Flamethrower
 [12929] = true, -- Starboard Wave Cannon
 [12930] = true, -- Starboard Wave Cannon
 [12931] = true, -- Larboard Wave Cannon
 [12932] = true, -- Larboard Wave Cannon
 [12933] = true, -- Electric Slide
 [12941] = true, -- Mole-a-whack
 [12943] = true, -- Electromagnetism
 [12946] = true, -- Wrecking Ball
 [12948] = true, -- Shatter
 [12951] = true, -- Tremblor
 [13011] = true, -- Fleeting Summer
 [13022] = true, -- Phantom Flurry
 [13026] = true, -- Hotspot
 [13027] = true, -- Swoop
 [13055] = true, -- Efficient Bladework
 [13059] = true, -- Optimized Blizzard III
 [13065] = true, -- Floodlight
 [13066] = true, -- Spotlight
 [13070] = true, -- Optimized Fire III
 [13098] = true, -- Efficient Bladework
 [13099] = true, -- Beyond Defense
 [13101] = true, -- Pile Pitch
 [13107] = true, -- Optimized Blizzard III
 [13108] = true, -- Superliminal Motion
 [13110] = true, -- Optimized Fire III
 [13116] = true, -- Fundamental Synergy
 [13117] = true, -- Fundamental Synergy
 [13155] = true, -- Electric Slide
 [13156] = true, -- Oversampled Wave Cannon
 [13157] = true, -- Oversampled Wave Cannon
 [13159] = true, -- Diffuse Wave Cannon
 [13160] = true, -- Diffuse Wave Cannon
 [13166] = true, -- Hello, World
 [13177] = true, -- Optimized Fire III
 [13178] = true, -- Floodlight
 [13179] = true, -- Spotlight
 [13196] = true, -- Rapture
 [13253] = true, -- Debilitating Spout
 [13256] = true, -- Stream of Filth
 [13277] = true, -- Dramatic Flare
 [13278] = true, -- Center of Convection
 [13279] = true, -- Burning Lover
 [13281] = true, -- Rain of Ire
 [13303] = true, -- Spin
 [13324] = true, -- Ravening Shadow
 [13328] = true, -- Soporific
 [13330] = true, -- On the Properties of Gravity
 [13333] = true, -- Ruffle
 [13332] = true, -- Horrid Roar
 [13336] = true, -- Earthquake
 [13338] = true, -- Dark Wave
 [13337] = true, -- Earthquake
 [13412] = true, -- Break III
 [13415] = true, -- Tornado
 [13417] = true, -- Little Break III
 [13419] = true, -- Little Tornado
 [13489] = true, -- Mildew
 [13500] = true, -- Bedrock Uplift
 [13503] = true, -- Orogeny
 [13551] = true, -- Toad Choir
 [13552] = true, -- Imp Choir
 [13634] = true, -- Turnabout
 [13635] = true, -- The Black Death
 [13636] = true, -- Force of Loathing
 [13639] = true, -- Deadly Tentacles
 [13738] = true, -- Reset
 [13832] = true, -- Iron Kiss
 [13864] = true, -- Reset
 [13881] = true, -- Magma
 [14044] = true, -- The Storm Within
 [14078] = true, -- Flame Thrower
 [14082] = true, -- Pantokrator
 [14089] = true, -- Guided Missile Kyrios
 [14092] = true, -- Long Needle Kyrios
 [14093] = true, -- Engage Ballistics System
 [14097] = true, -- Bombardment
 [14098] = true, -- Stunning Sweep
 [14106] = true, -- Burst
 [14147] = true, -- Ballistic Impact
 [14159] = true, -- T.G. Holy Sword
 [14173] = true, -- Shadowblade
 [14182] = true, -- Hallowed Bolt
 [14183] = true, -- Hallowed Bolt
 [14207] = true, -- Dark Rite
 [14209] = true, -- Infernal Wave
 [14216] = true, -- Impact Stream
 [14217] = true, -- Bright Aurora
 [14218] = true, -- Dark Aurora
 [14220] = true, -- Astral Rays
 [14221] = true, -- Astral Rays
 [14222] = true, -- Umbral Rays
 [14223] = true, -- Umbral Rays
 [14235] = true, -- Medusa Javelin
 [14256] = true, -- Meteor Impact
 [14263] = true, -- Shooting Star
 [14264] = true, -- Shooting Star
 [14301] = true, -- Serpent Descending
 [14302] = true, -- Serpent Descending
 [14306] = true, -- Fortune-blade Sigil
 [14307] = true, -- Calamity-blade Sigil
 [14311] = true, -- Handprint
 [14312] = true, -- Handprint
 [14314] = true, -- Force of Nature
 [14315] = true, -- Force of Nature
 [14325] = true, -- Coursing River
 [14342] = true, -- Fortune-blade Sigil
 [14343] = true, -- Handprint
 [14344] = true, -- Handprint
 [14345] = true, -- Force of Nature
 [14346] = true, -- Force of Nature
 [14378] = true, -- Fragility
 [14386] = true, -- Yukikaze
 [14388] = true, -- Kasha
 [14400] = true, -- Electrogenetic Force
 [14405] = true, -- Epic Stormsplitter
 [14409] = true, -- Seasplitter
 [14427] = true, -- Hallowed Bolt
 [14428] = true, -- Hallowed Bolt
 [14440] = true, -- Ame-no-Sakahoko
 [14441] = true, -- Ame-no-Sakahoko
 [14442] = true, -- Whirling Zantetsuken
 [14460] = true, -- For Honor
 [14468] = true, -- Homing Laser
 [14490] = true, -- Holy IV
 [14491] = true, -- Holy IV
 [14526] = true, -- Bombardment
 [14544] = true, -- Time Eruption
 [14545] = true, -- Time Eruption
 [14632] = true, -- Legendcarver
 [14634] = true, -- Mythcarver
 [14635] = true, -- Mythspinner
 [14650] = true, -- Elemental Magicks
 [14651] = true, -- Elemental Magicks
 [14652] = true, -- Elemental Magicks
 [14653] = true, -- Elemental Magicks
 [14783] = true, -- Concussive Oscillation
 [14784] = true, -- Megastorm
 [14849] = true, -- Onmyo Sigil
 [14851] = true, -- Onmyo Sigil
 [14855] = true, -- Onmyo Sigil
 [14909] = true, -- Sweet Nectar
 [14910] = true, -- Sweet Nectar
 [14911] = true, -- Sweet Nectar
 [14916] = true, -- Nectar Refill
 [14917] = true, -- Nectar Refill
 [14918] = true, -- Nectar Refill
 [14949] = true, -- Homing Missile
 [14953] = true, -- Rear
 [14973] = true, -- 111-tonze Swing
 [14974] = true, -- 111-tonze Swing
 [14997] = true, -- Ice and Levin
 [15338] = true, -- Tail Swing
 [15343] = true, -- Heavy Tail Swing
 [15503] = true, -- Lozatl's Fury
 [15504] = true, -- Lozatl's Fury
 [15509] = true, -- Falling Rock
 [15510] = true, -- Falling Rock
 [15511] = true, -- Falling Boulder
 [15514] = true, -- Hound out of Heaven
 [15516] = true, -- Viper Poison
 [15559] = true, -- the Burning Sky
 [15561] = true, -- the Falling Sky
 [15563] = true, -- the Final Sky
 [15564] = true, -- Towerfall
 [15565] = true, -- Earthquake
 [15575] = true, -- Apokalypsis
 [15577] = true, -- Apokalypsis
 [15578] = true, -- Therion Charge
 [15591] = true, -- Right Round
 [15593] = true, -- Flail Smash
 [15594] = true, -- Falling Rock
 [15597] = true, -- Wellbore
 [15600] = true, -- Swift Spill
 [15619] = true, -- Hurricane Wing
 [15630] = true, -- Perfect Contrition
 [15638] = true, -- Divine Diminuendo
 [15640] = true, -- Divine Diminuendo
 [15659] = true, -- Frost Rune
 [15669] = true, -- Pease
 [15673] = true, -- Leafstorm
 [15683] = true, -- Puck's Rebuke
 [15684] = true, -- Puck's Rebuke
 [15689] = true, -- Leafstorm
 [15692] = true, -- Phantom Rune
 [15694] = true, -- Frost Rune
 [15698] = true, -- Pease
 [15701] = true, -- Leafstorm
 [15704] = true, -- Puck's Rebuke
 [15705] = true, -- Puck's Rebuke
 [15709] = true, -- Phantom Rune
 [15744] = true, -- Pure Beam
 [15774] = true, -- Pure Beam
 [15776] = true, -- Paradise Lost
 [15788] = true, -- Pollen Carona
 [15789] = true, -- War and Pease
 [15811] = true, -- Thrown Flames
 [15814] = true, -- Thumbscrew
 [15816] = true, -- Gibbet Cage
 [15822] = true, -- Heretic's Fork
 [15833] = true, -- Pendulum
 [15852] = true, -- Laserblade
 [15875] = true, -- Leafstorm
 [15877] = true, -- Aquatic Lance
 [15880] = true, -- Tidal Guillotine
 [15912] = true, -- Aeroga IV
 [15931] = true, -- Doomvoid Guillotine
 [15951] = true, -- Doomvoid Guillotine
 [15971] = true, -- Doomvoid Cleaver
 [15979] = true, -- Empty Rage
 [15980] = true, -- Empty Rage
 [16049] = true, -- Soul and Body
 [16050] = true, -- Soul and Body
 [16051] = true, -- Holy Trinity
 [16056] = true, -- Reprobation
 [16062] = true, -- God Ray
 [16063] = true, -- God Ray
 [16071] = true, -- Beatific Vision
 [16075] = true, -- Reprobation
 [16076] = true, -- Reprobation
 [16085] = true, -- Dream of the Rood
 [16086] = true, -- Dream of the Rood
 [16091] = true, -- Holy Trinity
 [16096] = true, -- Reprobation
 [16102] = true, -- God Ray
 [16103] = true, -- God Ray
 [16110] = true, -- Beatific Vision
 [16121] = true, -- Soul and Body
 [16125] = true, -- Dream of the Rood
 [16126] = true, -- Dream of the Rood
 [16190] = true, -- Light Pillar
 [16244] = true, -- Earth Shaker
 [16248] = true, -- Right Palm
 [16250] = true, -- Left Palm
 [16330] = true, -- Monster Wave
 [16333] = true, -- Temporary Current
 [16334] = true, -- Temporary Current
 [16336] = true, -- Undersea Quake
 [16357] = true, -- Monster Wave
 [16361] = true, -- Monster Wave
 [16362] = true, -- Temporary Current
 [16363] = true, -- Temporary Current
 [16367] = true, -- Undersea Quake
 [16382] = true, -- Stormy Horizon
 [16569] = true, -- Cycle of Chaos
 [16570] = true, -- Cycle of Chaos
 [16571] = true, -- Cycle of Chaos
 [16619] = true, -- Weight of the Land
 [16621] = true, -- Explosion
 [16626] = true, -- Crumbling Down
 [16627] = true, -- Seismic Wave
 [16634] = true, -- Massive Landslide
 [16638] = true, -- Landslide
 [16642] = true, -- Fault Zone
 [16644] = true, -- Magnitude 5.0
 [16648] = true, -- Weight of the Land
 [16650] = true, -- Explosion
 [16655] = true, -- Crumbling Down
 [16656] = true, -- Seismic Wave
 [16667] = true, -- Landslide
 [16670] = true, -- Fault Line
 [16673] = true, -- Magnitude 5.0
 [16715] = true, -- Bad Faith
 [16716] = true, -- Bad Faith
 [16720] = true, -- Dark Eruption
 [16722] = true, -- Dark Eruption
 [16726] = true, -- Shadow Spread
 [16727] = true, -- Shadow Spread
 [16734] = true, -- Shadow Spread
 [16739] = true, -- Echo of the Lost
 [16740] = true, -- Echo of the Lost
 [16751] = true, -- Hellborn Yawp
 [16753] = true, -- Polydegmon's Purgation
 [16754] = true, -- Polydegmon's Purgation
 [16778] = true, -- no name (Pendulum)
 [16926] = true, -- Uplift
 [16927] = true, -- Uplift
 [17108] = true, -- Cosmic Kiss
 [17159] = true, -- Worse Breath
 [17203] = true, -- Tail Swing
 [17637] = true, -- Vice and Virtue
 [17643] = true, -- Eden's Fire III
 [17644] = true, -- Eden's Blizzard III
 [17645] = true, -- Eden's Thunder III
 [17647] = true, -- Vice and Virtue
 [17653] = true, -- Eden's Fire III
 [17654] = true, -- Eden's Blizzard III
 [17655] = true, -- Eden's Thunder III
 [18009] = true, -- Cycle of Retribution
 [18010] = true, -- Cycle of Retribution
 [18011] = true, -- Cycle of Retribution
 [18212] = true, -- Far Wind
 [18268] = true, -- Otherwordly Heat
 [18346] = true, -- Shadow Spread
 [18401] = true, -- Wail of the Lost
 [18620] = true, -- Energy Ring
 [18722] = true, -- Whirl of Rage
 [18725] = true, -- Self-destruct
 [18726] = true, -- Acid Mist
 [18743] = true, -- Energy Ring
 [18758] = true, -- Unparalleled Glory
 [19091] = true, -- Ravensclaw
 [19092] = true, -- Spike of Flame
 [19093] = true, -- Spike of Flame
 [19094] = true, -- Liquefaction
 [19095] = true, -- Undermine
 [19098] = true, -- Spike of Flame
 [19139] = true, -- Homing Lasers
 [19148] = true, -- Ravensclaw
 [19149] = true, -- Spike of Flame
 [19150] = true, -- Spike of Flame
 [19151] = true, -- Liquefaction
 [19152] = true, -- Undermine
 [19155] = true, -- Spike of Flame
 [19158] = true, -- Homing Lasers
 [19246] = true, -- Spike of Flame
 [19285] = true, -- 2,000-mina Swing
 [19346] = true, -- Deadly Discharge
 [19348] = true, -- Deadly Discharge
 [19350] = true, -- Gallop
 [19361] = true, -- Shock Strike
 [19375] = true, -- Deadly Discharge
 [19377] = true, -- Deadly Discharge
 [19379] = true, -- Gallop
 [19392] = true, -- Shock Strike
 [19393] = true, -- Shock Strike
 [19399] = true, -- Stepped Leader
 [19400] = true, -- Stepped Leader
 [19417] = true, -- Air Bump
 [19418] = true, -- Thorns
 [19419] = true, -- Downburst
 [19420] = true, -- Downburst
 [19443] = true, -- Eruption
 [19444] = true, -- Eruption
 [19449] = true, -- Air Bump
 [19450] = true, -- Thorns
 [19451] = true, -- Downburst
 [19452] = true, -- Downburst
 [19478] = true, -- Eruption
 [19479] = true, -- Eruption
 [19532] = true, -- Strength in Numbers
 [19533] = true, -- Strength in Numbers
 [19568] = true, -- Strength in Numbers
 [19569] = true, -- Strength in Numbers
 [19698] = true, -- Volt Strike
 [19715] = true, -- Spike of Flame
 [19716] = true, -- Spike of Flame
 [19739] = true, -- Flood
 [19821] = true, -- Axe Kick
 [19823] = true, -- Spiteful Dance
 [19938] = true, -- Axe Kick
 [19940] = true, -- Spiteful Dance
 [19948] = true, -- Holy
 [19969] = true, -- Reflected Scythe Kick
 [20023] = true, -- Falling Rock
 [20145] = true -- Iron Chariot
}

NilsReactionLibrary.data.knockback = {
    -- The Royal City of Rabanastre
    [734] = {
        [9660] = 4 -- Command Tower
    },
    -- The Ridorana Lighthouse
    [776] = {
        [11344] = 4, -- Tsunami
        [11369] = 4 -- Ventilate
    },
    -- The Qitana Ravel
    [823] = {
        [15520] = 4 -- Heaving Breath
    },
    -- Malikah's Well
    [836] = {
        [15596] = 4 -- High Pressure
    },
    -- The Halo
    [850] = {
        [15941] = 4 -- Empty Hate
    },
    -- The Nereus Trench
    [851] = {
        [16339] = 4 -- Tidal Wave
    },
    -- Atlas Peak
    [852] = {
        [16630] = 4 -- Geocrush
    },
    -- The Halo
    [854] = {
        [15962] = 4 -- Empty Hate
    },
    -- The Nereus Trench
    [855] = {
        [16370] = 4 -- Tidal Wave
    },
    -- Atlas Peak
    [856] = {
        [16659] = 4, -- Geocrush
        [16694] = 4 -- Dual Earthen Fists
    },
    -- The Copied Factory
    [882] = {
        [18627] = 4 -- Shockwave
    }
}

NilsReactionLibrary.data.shadeshift = {
    -- The Royal City of Rabanastre
    [734] = {
        [9670] = 5, -- Landwaster
        [9688] = 5, -- Quake IV
        [9869] = 5 -- Pomp and Circumstance
    },
    -- The Ridorana Lighthouse
    [776] = {
        [11308] = 5, -- Solar Storm
        [11325] = 5, -- Water IV
        [11364] = 5, -- Incinerate
        [11612] = 5, -- Incinerate
        [11613] = 5 -- Incinerate
    },
    -- The Rak'tika Greatwood
    [817] = {
        [17859] = 5 -- Chest Thump
    },
    -- Dohn Mheg
    [821] = {
        [7822] = 5, -- Landsblood
        [8915] = 5, -- Tiiimbeeer
        [13708] = 5 -- Virtuosic Capriccio
    },
    -- Mt. Gulg
    [822] = {
        [15612] = 5, -- Cyclone Wing
        [15627] = 5, -- Sacrament of Penance
        [15636] = 5 -- Orison Fortissimo
    },
    -- The Qitana Ravel
    [823] = {
        [15499] = 5, -- Lozatl's Scorn
        [15506] = 5, -- Soundwave
        [15515] = 5, -- Glossolalia
        [15520] = 5 -- Heaving Breath
    },
    -- The Orbonne Monastery
    [826] = {
        [14139] = 5, -- Energy Burst
        [14439] = 5 -- Divine Light
    },
    -- Malikah's Well
    [836] = {
        [15590] = 5, -- Head Toss
        [15596] = 5, -- High Pressure
        [15601] = 5 -- Intestinal Crank
    },
    -- Holminster Switch
    [837] = {
        [15813] = 5, -- The Path of Light
        [15824] = 5, -- Scold's Bridle
        [15832] = 5 -- Scavenger's Daughter
    },
    -- Amaurot
    [838] = {
        [15559] = 5, -- the Burning Sky
        [15578] = 5 -- Therion Charge
    },
    -- The Twinning
    [840] = {
        [15716] = 5, -- Beastly Roar
        [15868] = 5 -- High-tension Discharger
    },
    -- Akadaemia Anyder
    [841] = {
        [15878] = 5, -- Marine Mayhem
        [15895] = 5, -- Arbor Storm
        [15908] = 5 -- Thunderbolt
    },
    -- The Crown of the Immaculate
    [848] = {
        [16072] = 5, -- Scold's Bridle
        [16106] = 5, -- Shadowreaver
        [16190] = 5 -- Light Pillar
    },
    -- The Core
    [849] = {
        [15764] = 5, -- Eden's Gravity
        [15772] = 5, -- Dimensional Shift
        [15780] = 5, -- Frago Maximum
        [15783] = 5 -- Mana Burst
    },
    -- The Halo
    [850] = {
        [15982] = 5 -- Entropy
    },
    -- The Nereus Trench
    [851] = {
        [16324] = 5, -- Tidal Roar
        [17435] = 5 -- Tsunami
    },
    -- Atlas Peak
    [852] = {
        [16631] = 5, -- Voice of the Land
        [17382] = 5 -- Earthen Fury
    },
    -- The Core
    [853] = {
        [15728] = 5, -- Eden's Gravity
        [15743] = 5, -- Dimensional Shift
        [15755] = 5, -- Frago Maximus
        [15759] = 5, -- Mana Burst
        [17657] = 5 -- Regained Fire III
    },
    -- The Halo
    [854] = {
        [15971] = 5, -- Doomvoid Cleaver
        [15984] = 5, -- Entropy
        [15986] = 5 -- Quietus
    },
    -- The Nereus Trench
    [855] = {
        [16348] = 5, -- Tidal Roar
        [16350] = 5, -- Tidal Rage
        [16396] = 5, -- Tidal Rage
        [17436] = 5 -- Tsunami
    },
    -- Atlas Peak
    [856] = {
        [16660] = 5, -- Voice of the Land
        [16682] = 5, -- Tumult
        [16699] = 5, -- Earthen Fury
        [17384] = 5 -- Earthen Fury
    },
    -- The Dancing Plague
    [858] = {
        [15667] = 5, -- Being Mortal
        [15674] = 5, -- Puck's Caprice
        [15681] = 5, -- Puck's Breath
        [15691] = 5, -- Bright Sabbath
        [16926] = 5 -- Uplift
    },
    -- The Copied Factory
    [882] = {
        [18261] = 5, -- Diffuse Laser
        [18437] = 5, -- Laser-resistance Test
        [18675] = 5, -- Shrapnel Impact
        [18678] = 5, -- Laser Saturation
        [18753] = 5 -- 360-degree Bombing Maneuver
    },
    -- The Grand Cosmos
    [884] = {
        [18204] = 5, -- Ode to Lost Love
        [18277] = 5, -- Culling Blade
        [18851] = 5 -- Immortal Anathema
    },
    -- The Dying Gasp
    [885] = {
        [18360] = 5, -- Quake III
        [18367] = 5, -- Annihilation
        [18380] = 5, -- Blight
        [18419] = 5, -- Giganomachy
        [18420] = 5 -- Quadastrike
    },
    -- Liminal Space
    [887] = {
        [18470] = 4 -- Cascade
    },
    -- Cinder Drift
    [897] = {
        [19112] = 4, -- Optimized Ultima
        [19139] = 4, -- Homing Lasers
        [19141] = 4, -- High-powered Homing
        [19144] = 4 -- Outrage
    },
    -- Anamnesis Anyder
    [898] = {
        [19288] = 4, -- The Final Verse
        [19295] = 4, -- Wanderer's Pyre
        [19306] = 4, -- Inscrutability
        [19315] = 4, -- Inscrutability
        [19321] = 4, -- Ectoplasmic Ray
        [19322] = 4, -- Ectoplasmic Ray
        [19324] = 4, -- Seabed Ceremony
        [19328] = 4 -- Flying Fount
    }
}

-- LegSweep and LowBlow
NilsReactionLibrary.data.stun = {
    -- test , tempest, Tempest Swallow
    [818] = {[17336] = 5},
    -- Dohn Mheg
    [821] = {
        [15788] = 4 -- Pollen Carona
    },
    -- Malikah's Well
    [836] = {
        [16266] = 3 -- Realm Shaker
    },
    -- Holminster Switch
    [837] = {
        [17203] = 4.5 -- Tail Swing
    },
    -- The Twinning
    [840] = {
        [15802] = 5, -- 128-tonze Swing
        [15805] = 5, -- Nerve Gas
        [15811] = 5 -- Thrown Flames
    },
    -- Akadaemia Anyder
    [841] = {
        [17164] = 5 -- Noahionto
    },
    -- The Grand Cosmos
    [884] = {
        [18722] = 3, -- Whirl of Rage
        [18725] = 3, -- Self-destruct
        [18726] = 3, -- Acid Mist
        [18758] = 4 -- Unparalleled Glory
    }
}

NilsReactionLibrary.data.thirdeye = {
  -- test , tempest, Tempest Swallow
  [818] = {
    [17336] = 2,
    [7494] =2,
  },
  -- The Royal City of Rabanastre
  [734] = {
  [9660] = 2, -- Command Tower
  [9665] = 2, -- Control Tower
  [9670] = 2, -- Landwaster
  [9673] = 2, -- To Dust
  [9676] = 1, -- Hammerfall
  [9686] = 2, -- Demolish
  [9688] = 2, -- Quake IV
  [9760] = 2, -- Dark Ultima
  [9767] = 2, -- Coldblood
  [9774] = 2, -- Fire IV
  [9776] = 2, -- Unholy Sacrifice
  [9790] = 2, -- Blizzard IV
  [9837] = 2, -- Submission Tower
  [9841] = 2, -- Choco Meteor
  [9866] = 2, -- Heavenly Subjugation
  [9869] = 2, -- Pomp and Circumstance
  },
  -- The Ridorana Lighthouse
  [776] = {
  [11308] = 2, -- Solar Storm
  [11316] = 2, -- Death Strike
  [11318] = 2, -- Dust Storm
  [11325] = 2, -- Water IV
  [11344] = 3, -- Tsunami
  [11349] = 2, -- Explosion
  [11364] = 2, -- Incinerate
  [11365] = 2, -- Accelerate
  [11484] = 2, -- Fire IV
  [11550] = 2, -- Lithobrake
  [11612] = 2, -- Incinerate
  [11613] = 2, -- Incinerate
  },
  -- Dohn Mheg
  [821] = {
  [7822] = 2, -- Landsblood
  [8915] = 2, -- Tiiimbeeer
  [13708] = 2, -- Virtuosic Capriccio
  },
  -- Mt. Gulg
  [822] = {
  [15612] = 2, -- Cyclone Wing
  [15627] = 2, -- Sacrament of Penance
  [15636] = 2, -- Orison Fortissimo
  },
  -- The Qitana Ravel
  [823] = {
  [15499] = 2, -- Lozatl's Scorn
  [15506] = 2, -- Soundwave
  [15507] = 2, -- Subsonics
  [15515] = 2, -- Glossolalia
  [15525] = 2, -- Confession of Faith
  },
  -- The Orbonne Monastery
  [826] = {
  [14139] = 2, -- Energy Burst
  [14172] = 2, -- Burst
  [14177] = 2, -- Duskblade
  [14206] = 2, -- Noahionto
  [14439] = 2, -- Divine Light
  [14548] = 2, -- Control Tower
  [14552] = 2, -- Earth Hammer
  },
  -- Malikah's Well
  [836] = {
  [15590] = 2, -- Head Toss
  [15593] = 2, -- Flail Smash
  [15596] = 3, -- High Pressure
  [15601] = 2, -- Intestinal Crank
  },
  -- Holminster Switch
  [837] = {
  [15813] = 2, -- The Path of Light
  [15824] = 2, -- Scold's Bridle
  [15826] = 2, -- Exorcise
  [15832] = 2, -- Scavenger's Daughter
  [16769] = 2, -- Taphephobia
  [16777] = 2, -- Pendulum
  [16778] = 2, -- 
  },
  -- Amaurot
  [838] = {
  [15559] = 2, -- the Burning Sky
  [15563] = 2, -- the Final Sky
  [15567] = 2, -- Shrill Shriek
  [15578] = 2, -- Therion Charge
  [15587] = 2, -- Shadow Wreck
  [17108] = 2, -- Cosmic Kiss
  },
  -- The Twinning
  [840] = {
  [15716] = 2, -- Beastly Roar
  [15868] = 2, -- High-tension Discharger
  [17306] = 2, -- Shattered Crystal
  },
  -- Akadaemia Anyder
  [841] = {
  [15878] = 2, -- Marine Mayhem
  [15895] = 2, -- Arbor Storm
  [15908] = 2, -- Thunderbolt
  },
  -- The Crown of the Immaculate
  [848] = {
  [16072] = 2, -- Scold's Bridle
  [16106] = 2, -- Shadowreaver
  [16190] = 2, -- Light Pillar
  },
  -- The Core
  [849] = {
  [15764] = 2, -- Eden's Gravity
  [15772] = 2, -- Dimensional Shift
  [15780] = 2, -- Frago Maximum
  [15783] = 2, -- Mana Burst
  [15785] = 2, -- Paradisal Dive
  [17643] = 2, -- Eden's Fire III
  },
  -- The Halo
  [850] = {
  [15941] = 3, -- Empty Hate
  [15982] = 2, -- Entropy
  },
  -- The Nereus Trench
  [851] = {
  [16324] = 2, -- Tidal Roar
  [16332] = 2, -- Killer Wave
  [16339] = 3, -- Tidal Wave
  [17435] = 2, -- Tsunami
  },
  -- Atlas Peak
  [852] = {
  [16626] = 2, -- Crumbling Down
  [16630] = 2, -- Geocrush
  [16631] = 2, -- Voice of the Land
  [17382] = 2, -- Earthen Fury
  },
  -- The Core
  [853] = {
  [15728] = 2, -- Eden's Gravity
  [15736] = 2, -- Vice and Virtue
  [15738] = 2, -- Vice and Virtue
  [15743] = 2, -- Dimensional Shift
  [15744] = 2, -- Pure Beam
  [15755] = 2, -- Frago Maximus
  [15759] = 2, -- Mana Burst
  [15761] = 2, -- Paradisal Dive
  [17647] = 2, -- Vice and Virtue
  [17653] = 2, -- Eden's Fire III
  [17657] = 2, -- Regained Fire III
  },
  -- The Halo
  [854] = {
  [15962] = 2, -- Empty Hate
  [15971] = 2, -- Doomvoid Cleaver
  [15984] = 2, -- Entropy
  [15986] = 2, -- Quietus
  },
  -- The Nereus Trench
  [855] = {
  [16348] = 2, -- Tidal Roar
  [16350] = 2, -- Tidal Rage
  [16359] = 2, -- Killer Wave
  [16370] = 2, -- Tidal Wave
  [16396] = 2, -- Tidal Rage
  [17436] = 2, -- Tsunami
  },
  -- Atlas Peak
  [856] = {
  [16655] = 2, -- Crumbling Down
  [16659] = 3, -- Geocrush
  [16660] = 2, -- Voice of the Land
  [16675] = 2, -- Tectonic Uplift
  [16682] = 2, -- Tumult
  [16699] = 2, -- Earthen Fury
  [17384] = 2, -- Earthen Fury
  },
  -- The Dancing Plague
  [858] = {
    [15667] = 2, -- Being Mortal
    [15674] = 2, -- Puck's Caprice
    [15681] = 2, -- Puck's Breath
    [15691] = 2, -- Bright Sabbath
    [16610] = 2, -- Whispering Wind
    [16926] = 2, -- Uplift
  },
  -- The Copied Factory
  [882] = {
    [18245] = 2, -- Demolish Structure
    [18261] = 2, -- Diffuse Laser
    [18437] = 2, -- Laser-resistance Test
    [18450] = 2, -- Impact
    [18639] = 2, -- Forceful Impact
    [18668] = 2, -- Total Annihilation Maneuver
    [18675] = 2, -- Shrapnel Impact
    [18678] = 2, -- Laser Saturation
    [18753] = 2, -- 360-degree Bombing Maneuver
  },
  -- The Grand Cosmos
  [884] = {
    [18204] = 2, -- Ode to Lost Love
    [18209] = 2, -- Ireful Wind
    [18212] = 2, -- Far Wind
    [18267] = 3, -- Otherwordly Heat
    [18277] = 2, -- Culling Blade
    [18282] = 2, -- Dark Pulse
    [18285] = 2, -- Dark Well
    [18851] = 2, -- Immortal Anathema
  },
  -- The Dying Gasp
  [885] = {
    [18344] = 2, -- Shadow Spread
    [18360] = 2, -- Quake III
    [18362] = 2, -- Dark II
    [18364] = 2, -- Ancient Water III
    [18367] = 2, -- Annihilation
    [18380] = 2, -- Blight
    [18381] = 2, -- Megiddo Flame
    [18384] = 2, -- Shadow Flare
    [18401] = 2, -- Wail of the Lost
    [18403] = 2, -- Bident
    [18409] = 2, -- Dark Seal
    [18419] = 2, -- Gigantomachy
    [18420] = 2, -- Quadrastrike
  },
  -- Anamnesis Anyder
  [898] = {
    [19288] = 2, -- The Final Verse
    [19295] = 2, -- Wanderer's Pyre
    [19315] = 2, -- Inscrutability
    [19321] = 2, -- Ectoplasmic Ray
    [19322] = 2, -- Ectoplasmic Ray
    [19324] = 2, -- Seabed Ceremony
    [19326] = 2, -- Falling Water 
    [19328] = 2, -- Flying Fount
  },
}

NilsReactionLibrary.data.troubadour = {
   -- The Royal City of Rabanastre
   [734] = {
    [9669] = 4, -- Landwaster
    [9760] = 2.5, -- Dark Ultima
},
-- The Ridorana Lighthouse
[776] = {
    [11308] = 4, -- Solar Storm
    [11318] = 3.5, -- Dust Storm
    [11325] = 4, -- Water IV
    [11364] = 4, -- Incinerate
    [11484] = 4, -- Fire IV
    [11612] = 4, -- Incinerate
    [11613] = 4, -- Incinerate
},
-- Dohn Mheg
[821] = {
    [7822] = 3, -- Landsblood
    [8915] = 4, -- Tiiimbeeer
    [13708] = 4, -- Virtuosic Capriccio
},
-- Mt. Gulg
[822] = {
    [15612] = 3, -- Cyclone Wing
    [15627] = 4, -- Sacrament of Penance
    [15636] = 4, -- Orison Fortissimo
},
-- The Qitana Ravel
[823] = {
    [15499] = 3, -- Lozatl's Scorn
    [15506] = 3, -- Soundwave
    [15515] = 3, -- Glossolalia
    [15524] = 4, -- Confession of Faith
},
-- The Orbonne Monastery
[826] = {
    [14139] = 4, -- Energy Burst
    [14206] = 4, -- Noahionto
    [14439] = 4, -- Divine Light
},
-- Malikah's Well
[836] = {
    [15590] = 4, -- Head Toss
    [15601] = 4, -- Intestinal Crank
},
-- Holminster Switch
[837] = {
    [15813] = 4, -- The Path of Light
    [15824] = 4, -- Scold's Bridle
    [15832] = 4, -- Scavenger's Daughter
},
-- Amaurot
[838] = {
    [15587] = 4, -- Shadow Wreck
    [17108] = 4, -- Cosmic Kiss
},
-- The Twinning
[840] = {
    [15716] = 4, -- Beastly Roar
    [15868] = 3, -- High-tension Discharger
},
-- Akadaemia Anyder
[841] = {
    [15878] = 3.5, -- Marine Mayhem
    [15895] = 3, -- Arbor Storm
    [15908] = 4, -- Thunderbolt
},
-- The Crown of the Immaculate
[848] = {
    [16072] = 6, -- Scold's Bridle
    [16106] = 5, -- Shadowreaver
    [16190] = 5, -- Light Pillar
},
-- The Core
[853] = {
    [15736] = 6, -- Vice and Virtue
    [15738] = 6, -- Vice and Virtue
    [15755] = 5, -- Frago Maximus
    [15759] = 4, -- Mana Burst
    [17656] = 5.5, -- Delta Attack
},
-- The Halo
[854] = {
    [15984] = 6, -- Entropy
    [15986] = 6, -- Quietus
},
-- The Nereus Trench
[855] = {
    [16348] = 4, -- Tidal Roar
    [16350] = 5, -- Tidal Rage
    [16395] = 5, -- Tidal Rage
    [17436] = 6, -- Tsunami
},
-- Atlas Peak
[856] = {
    [16660] = 4, -- Voice of the Land
    [16682] = 3.6, -- Tumult
    [16699] = 6, -- Earthen Fury
    [17384] = 6, -- Earthen Fury
},
-- The Dancing Plague
[858] = {
    [15667] = 6, -- Being Mortal
    [15674] = 4, -- Puck's Caprice
    [15681] = 5, -- Puck's Breath
    [15691] = 4, -- Bright Sabbath
},
-- The Copied Factory
[882] = {
    [18261] = 4, -- Diffuse Laser
    [18437] = 4, -- Laser-resistance Test
    [18639] = 4, -- Forceful Impact
    [18675] = 5, -- Shrapnel Impact
    [18678] = 4, -- Laser Saturation
    [18753] = 5, -- 360-degree Bombing Maneuver
},
-- The Grand Cosmos
[884] = {
    [18204] = 4, -- Ode to Lost Love
    [18277] = 6, -- Culling Blade
    [18282] = 5, -- Dark Pulse
    [18851] = 4, -- Immortal Anathema
},
-- The Dying Gasp
[885] = {
    [18344] = 5, -- Shadow Spread
    [18360] = 5, -- Quake III
    [18367] = 5, -- Annihilation
    [18380] = 5, -- Blight
    [18384] = 4, -- Shadow Flare
    [18398] = 4, -- Again the Martyr
    [18419] = 5, -- Gigantomachy
    [18420] = 4, -- Quadrastrike
},
-- Ashfall
[903] = {
    [19415] = 4, -- Superstorm
},
-- The Gandof Thunder Plains
[906] = {
    [19381] = 4, -- Judgment Volts
},
-- Ashfall
[907] = {
    [19447] = 4, -- Superstorm
    [19476] = 4, -- Inferno Howl
    [19448] = 4, -- Firestorm
},
-- Cinder Drift
[912] = {
    [19134] = 4, -- Optimized Ultima
    [20050] = 4, -- Dalamud Impact
},
-- Anamnesis Anyder
[898] = {
  [19288] = 4, -- The Final Verse
  [19295] = 4, -- Wanderer's Pyre
  [19306] = 4, -- Inscrutability
  [19315] = 4, -- Inscrutability
  [19321] = 4, -- Ectoplasmic Ray
  [19322] = 4, -- Ectoplasmic Ray
  [19324] = 4, -- Seabed Ceremony
  [19328] = 4, -- Flying Fount	
},
}

NilsReactionLibrary.data.OmniList = {
--  [541] = true, -- striking dummy --TODO: Need to figure out a way to allow this in settings for testing
  [3069] = true, -- Sand Sphere
  [4815] = true, -- Arcane Sphere
  [5640] = true, -- Shinryu
  [5789] = true, -- Tail
  [6055] = true, -- Neo Exdeath
  [6257] = true, -- Magitek Pod
  [6928] = true, -- Shard of Emptiness
  [6933] = true, -- Aqua Sphere
  [6934] = true, -- Blizzard III
  [6950] = true, -- Command Tower
  [7097] = true, -- Demon Chadarnook
  [7122] = true, -- Malice
  [7126] = true, -- Ghost
  [7127] = true, -- Phantom Train
  [7202] = true, -- Daidarabotchi
  [7537] = true, -- Specter of Zenos
  [7575] = true, -- Iron Chain
  [7637] = true, -- Left Arm Unit
  [7638] = true, -- Right Arm Unit
  [7646] = true, -- Immortal Key
  [7657] = true, -- Ultima, the High Seraph
  [7694] = true, -- Dark Crystal
  [7699] = true, -- Level Checker
  [7700] = true, -- Level Checker
  [7899] = true, -- The Thunder God
  [7901] = true, -- Icewolf
  [7908] = true, -- Ruination
  [8145] = true, -- Painted Root
  [8261] = true, -- Forgiven Whimsy
  [8267] = true, -- Forgiven Apathy
  [8270] = true, -- Forgiven Revelry
  [8342] = true, -- Arcane Sphere
  [8346] = true, -- Granite Gaol
  [10643] = true, -- Granite Gaol
  [8351] = true, -- Aetherial Gaol
  [8570] = true, -- Iron Chain
  [8958] = true, -- Liar's Lyre
  [9143] = true, -- Hobbes
  [9144] = true, -- Hobbes
  [9145] = true, -- Hobbes
  [9147] = true, -- Engels
  [9020] = true, -- Engels
  [8486] = true, -- Leviathan savage
  [10604] = true, -- Leviathan savage
  [8349] = true, -- Titan Maximum savage
  [9298] = true, -- The Idol of Darkness
  [9300] = true, -- Blasphemy
  [9301] = true, -- Idolatry
  [9322] = true, -- shiva add Luminous Aether
  [9320] = true, -- shiva add aqueous
  [9321] = true, -- shiva add Earthen Aether
  [9319] = true, -- shiva add electric
  [9358] = true -- Ice Veil
}