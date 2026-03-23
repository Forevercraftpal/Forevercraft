# Bestiary Stages — Backfill
# Run once per player to calculate stages from existing kill counts
# Usage: execute as @a run function evercraft:bestiary/stages/backfill

# Group 1 (A — Common Hostiles)
function evercraft:bestiary/stages/check_stage {smob:"zombie",group:1}
function evercraft:bestiary/stages/check_stage {smob:"skeleton",group:1}
function evercraft:bestiary/stages/check_stage {smob:"spider",group:1}
function evercraft:bestiary/stages/check_stage {smob:"husk",group:1}
function evercraft:bestiary/stages/check_stage {smob:"cavespdr",group:1}
function evercraft:bestiary/stages/check_stage {smob:"slime",group:1}
function evercraft:bestiary/stages/check_stage {smob:"silvrfsh",group:1}
function evercraft:bestiary/stages/check_stage {smob:"endmite",group:1}
function evercraft:bestiary/stages/check_stage {smob:"zombpig",group:1}
function evercraft:bestiary/stages/check_stage {smob:"zombvill",group:1}
function evercraft:bestiary/stages/check_stage {smob:"drowned",group:1}
function evercraft:bestiary/stages/check_stage {smob:"hoglin",group:1}
function evercraft:bestiary/stages/check_stage {smob:"zoglin",group:1}
function evercraft:bestiary/stages/check_stage {smob:"znautls",group:1}
function evercraft:bestiary/stages/check_stage {smob:"zombhrs",group:1}

# Group 2 (B — Uncommon Hostiles)
function evercraft:bestiary/stages/check_stage {smob:"creeper",group:2}
function evercraft:bestiary/stages/check_stage {smob:"stray",group:2}
function evercraft:bestiary/stages/check_stage {smob:"parched",group:2}
function evercraft:bestiary/stages/check_stage {smob:"bogged",group:2}
function evercraft:bestiary/stages/check_stage {smob:"enderman",group:2}
function evercraft:bestiary/stages/check_stage {smob:"pillager",group:2}
function evercraft:bestiary/stages/check_stage {smob:"witch",group:2}
function evercraft:bestiary/stages/check_stage {smob:"magcube",group:2}
function evercraft:bestiary/stages/check_stage {smob:"blaze",group:2}
function evercraft:bestiary/stages/check_stage {smob:"piglin",group:2}
function evercraft:bestiary/stages/check_stage {smob:"phantom",group:2}
function evercraft:bestiary/stages/check_stage {smob:"wolf",group:2}
function evercraft:bestiary/stages/check_stage {smob:"fox",group:2}
function evercraft:bestiary/stages/check_stage {smob:"bee",group:2}
function evercraft:bestiary/stages/check_stage {smob:"goat",group:2}
function evercraft:bestiary/stages/check_stage {smob:"panda",group:2}
function evercraft:bestiary/stages/check_stage {smob:"llama",group:2}
function evercraft:bestiary/stages/check_stage {smob:"trllama",group:2}
function evercraft:bestiary/stages/check_stage {smob:"polarbr",group:2}
function evercraft:bestiary/stages/check_stage {smob:"dolphin",group:2}
function evercraft:bestiary/stages/check_stage {smob:"ironglm",group:2}

# Group 3 (C — Rare Hostiles)
function evercraft:bestiary/stages/check_stage {smob:"withskel",group:3}
function evercraft:bestiary/stages/check_stage {smob:"ghast",group:3}
function evercraft:bestiary/stages/check_stage {smob:"vindctr",group:3}
function evercraft:bestiary/stages/check_stage {smob:"guardian",group:3}
function evercraft:bestiary/stages/check_stage {smob:"breeze",group:3}
function evercraft:bestiary/stages/check_stage {smob:"camhusk",group:3}
function evercraft:bestiary/stages/check_stage {smob:"vex",group:3}
function evercraft:bestiary/stages/check_stage {smob:"ravager",group:3}
function evercraft:bestiary/stages/check_stage {smob:"shulker",group:3}
function evercraft:bestiary/stages/check_stage {smob:"pigbrute",group:3}

# Group 4 (D — Elite/Boss)
function evercraft:bestiary/stages/check_stage {smob:"evoker",group:4}
function evercraft:bestiary/stages/check_stage {smob:"e_guard",group:4}
function evercraft:bestiary/stages/check_stage {smob:"warden",group:4}
function evercraft:bestiary/stages/check_stage {smob:"creaking",group:4}

# Group 5 (E — Vanilla Bosses)
function evercraft:bestiary/stages/check_stage {smob:"wither",group:5}
function evercraft:bestiary/stages/check_stage {smob:"edragon",group:5}

# Group 6 (F — World Bosses)
function evercraft:bestiary/stages/check_stage {smob:"hollking",group:6}
function evercraft:bestiary/stages/check_stage {smob:"verdwrdn",group:6}
function evercraft:bestiary/stages/check_stage {smob:"stormfrg",group:6}
function evercraft:bestiary/stages/check_stage {smob:"tidecllr",group:6}
function evercraft:bestiary/stages/check_stage {smob:"erthshkr",group:6}
function evercraft:bestiary/stages/check_stage {smob:"nightmre",group:6}
function evercraft:bestiary/stages/check_stage {smob:"inftitan",group:6}
function evercraft:bestiary/stages/check_stage {smob:"soulwrdn",group:6}
function evercraft:bestiary/stages/check_stage {smob:"crimbhmt",group:6}
function evercraft:bestiary/stages/check_stage {smob:"voidsovr",group:6}
function evercraft:bestiary/stages/check_stage {smob:"endrarch",group:6}

tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Stage backfill complete! Your existing kills have been evaluated.","color":"green"}]
