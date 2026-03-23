# Bestiary Stages — Dispatch Claim (Trigger Router)
# Run as the player who triggered bs.claim
# Maps claim ID (1-63) to the correct mob's claim function

# Regular mobs (1-52, alphabetical)
execute if score @s bs.claim matches 1 run function evercraft:bestiary/stages/claim {smob:"bee",group:2}
execute if score @s bs.claim matches 2 run function evercraft:bestiary/stages/claim {smob:"blaze",group:2}
execute if score @s bs.claim matches 3 run function evercraft:bestiary/stages/claim {smob:"bogged",group:2}
execute if score @s bs.claim matches 4 run function evercraft:bestiary/stages/claim {smob:"breeze",group:3}
execute if score @s bs.claim matches 5 run function evercraft:bestiary/stages/claim {smob:"camhusk",group:3}
execute if score @s bs.claim matches 6 run function evercraft:bestiary/stages/claim {smob:"cavespdr",group:1}
execute if score @s bs.claim matches 7 run function evercraft:bestiary/stages/claim {smob:"creaking",group:4}
execute if score @s bs.claim matches 8 run function evercraft:bestiary/stages/claim {smob:"creeper",group:2}
execute if score @s bs.claim matches 9 run function evercraft:bestiary/stages/claim {smob:"dolphin",group:2}
execute if score @s bs.claim matches 10 run function evercraft:bestiary/stages/claim {smob:"drowned",group:1}
execute if score @s bs.claim matches 11 run function evercraft:bestiary/stages/claim {smob:"e_guard",group:4}
execute if score @s bs.claim matches 12 run function evercraft:bestiary/stages/claim {smob:"enderman",group:2}
execute if score @s bs.claim matches 13 run function evercraft:bestiary/stages/claim {smob:"endmite",group:1}
execute if score @s bs.claim matches 14 run function evercraft:bestiary/stages/claim {smob:"edragon",group:5}
execute if score @s bs.claim matches 15 run function evercraft:bestiary/stages/claim {smob:"evoker",group:4}
execute if score @s bs.claim matches 16 run function evercraft:bestiary/stages/claim {smob:"fox",group:2}
execute if score @s bs.claim matches 17 run function evercraft:bestiary/stages/claim {smob:"ghast",group:3}
execute if score @s bs.claim matches 18 run function evercraft:bestiary/stages/claim {smob:"goat",group:2}
execute if score @s bs.claim matches 19 run function evercraft:bestiary/stages/claim {smob:"guardian",group:3}
execute if score @s bs.claim matches 20 run function evercraft:bestiary/stages/claim {smob:"hoglin",group:1}
execute if score @s bs.claim matches 21 run function evercraft:bestiary/stages/claim {smob:"husk",group:1}
execute if score @s bs.claim matches 22 run function evercraft:bestiary/stages/claim {smob:"ironglm",group:2}
execute if score @s bs.claim matches 23 run function evercraft:bestiary/stages/claim {smob:"llama",group:2}
execute if score @s bs.claim matches 24 run function evercraft:bestiary/stages/claim {smob:"magcube",group:2}
execute if score @s bs.claim matches 25 run function evercraft:bestiary/stages/claim {smob:"panda",group:2}
execute if score @s bs.claim matches 26 run function evercraft:bestiary/stages/claim {smob:"parched",group:2}
execute if score @s bs.claim matches 27 run function evercraft:bestiary/stages/claim {smob:"phantom",group:2}
execute if score @s bs.claim matches 28 run function evercraft:bestiary/stages/claim {smob:"piglin",group:2}
execute if score @s bs.claim matches 29 run function evercraft:bestiary/stages/claim {smob:"pigbrute",group:3}
execute if score @s bs.claim matches 30 run function evercraft:bestiary/stages/claim {smob:"pillager",group:2}
execute if score @s bs.claim matches 31 run function evercraft:bestiary/stages/claim {smob:"polarbr",group:2}
execute if score @s bs.claim matches 32 run function evercraft:bestiary/stages/claim {smob:"ravager",group:3}
execute if score @s bs.claim matches 33 run function evercraft:bestiary/stages/claim {smob:"shulker",group:3}
execute if score @s bs.claim matches 34 run function evercraft:bestiary/stages/claim {smob:"silvrfsh",group:1}
execute if score @s bs.claim matches 35 run function evercraft:bestiary/stages/claim {smob:"skeleton",group:1}
execute if score @s bs.claim matches 36 run function evercraft:bestiary/stages/claim {smob:"slime",group:1}
execute if score @s bs.claim matches 37 run function evercraft:bestiary/stages/claim {smob:"spider",group:1}
execute if score @s bs.claim matches 38 run function evercraft:bestiary/stages/claim {smob:"stray",group:2}
execute if score @s bs.claim matches 39 run function evercraft:bestiary/stages/claim {smob:"trllama",group:2}
execute if score @s bs.claim matches 40 run function evercraft:bestiary/stages/claim {smob:"vex",group:3}
execute if score @s bs.claim matches 41 run function evercraft:bestiary/stages/claim {smob:"vindctr",group:3}
execute if score @s bs.claim matches 42 run function evercraft:bestiary/stages/claim {smob:"warden",group:4}
execute if score @s bs.claim matches 43 run function evercraft:bestiary/stages/claim {smob:"witch",group:2}
execute if score @s bs.claim matches 44 run function evercraft:bestiary/stages/claim {smob:"wither",group:5}
execute if score @s bs.claim matches 45 run function evercraft:bestiary/stages/claim {smob:"withskel",group:3}
execute if score @s bs.claim matches 46 run function evercraft:bestiary/stages/claim {smob:"wolf",group:2}
execute if score @s bs.claim matches 47 run function evercraft:bestiary/stages/claim {smob:"zoglin",group:1}
execute if score @s bs.claim matches 48 run function evercraft:bestiary/stages/claim {smob:"zombie",group:1}
execute if score @s bs.claim matches 49 run function evercraft:bestiary/stages/claim {smob:"zombhrs",group:1}
execute if score @s bs.claim matches 50 run function evercraft:bestiary/stages/claim {smob:"znautls",group:1}
execute if score @s bs.claim matches 51 run function evercraft:bestiary/stages/claim {smob:"zombvill",group:1}
execute if score @s bs.claim matches 52 run function evercraft:bestiary/stages/claim {smob:"zombpig",group:1}

# World bosses (53-63)
execute if score @s bs.claim matches 53 run function evercraft:bestiary/stages/claim {smob:"hollking",group:6}
execute if score @s bs.claim matches 54 run function evercraft:bestiary/stages/claim {smob:"verdwrdn",group:6}
execute if score @s bs.claim matches 55 run function evercraft:bestiary/stages/claim {smob:"stormfrg",group:6}
execute if score @s bs.claim matches 56 run function evercraft:bestiary/stages/claim {smob:"tidecllr",group:6}
execute if score @s bs.claim matches 57 run function evercraft:bestiary/stages/claim {smob:"erthshkr",group:6}
execute if score @s bs.claim matches 58 run function evercraft:bestiary/stages/claim {smob:"nightmre",group:6}
execute if score @s bs.claim matches 59 run function evercraft:bestiary/stages/claim {smob:"inftitan",group:6}
execute if score @s bs.claim matches 60 run function evercraft:bestiary/stages/claim {smob:"soulwrdn",group:6}
execute if score @s bs.claim matches 61 run function evercraft:bestiary/stages/claim {smob:"crimbhmt",group:6}
execute if score @s bs.claim matches 62 run function evercraft:bestiary/stages/claim {smob:"voidsovr",group:6}
execute if score @s bs.claim matches 63 run function evercraft:bestiary/stages/claim {smob:"endrarch",group:6}

# Reset and re-enable trigger
scoreboard players set @s bs.claim 0
scoreboard players enable @s bs.claim
