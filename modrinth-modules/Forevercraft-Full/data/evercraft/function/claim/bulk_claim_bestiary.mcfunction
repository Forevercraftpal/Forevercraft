# === BULK CLAIM — BESTIARY ===
# Claims ALL unclaimed bestiary stage rewards at once
# Run as: player

execute unless entity @s[tag=Adv.InMenu] run return 0
scoreboard players set @s ec.claim_cnt 0

# Claim each mob — existing claim function handles single-next-stage
# We call it up to 7 times per mob to claim all stages
function evercraft:claim/bulk_claim_bestiary_mob {smob:"cavespdr",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"drowned",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"endmite",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"hoglin",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"husk",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"silvrfsh",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"skeleton",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"slime",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"spider",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"zombie",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"zombpig",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"zombvill",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"znautls",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"zombhrs",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"zoglin",group:1}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"bee",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"blaze",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"bogged",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"creeper",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"dolphin",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"enderman",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"fox",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"goat",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"ironglm",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"llama",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"magcube",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"panda",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"phantom",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"piglin",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"pillager",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"polarbr",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"stray",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"witch",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"wolf",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"parched",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"trllama",group:2}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"breeze",group:3}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"ghast",group:3}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"guardian",group:3}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"pigbrute",group:3}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"ravager",group:3}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"shulker",group:3}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"vindctr",group:3}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"withskel",group:3}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"camhusk",group:3}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"vex",group:3}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"e_guard",group:4}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"evoker",group:4}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"warden",group:4}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"creaking",group:4}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"edragon",group:5}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"wither",group:5}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"crimbhmt",group:6}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"endrarch",group:6}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"erthshkr",group:6}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"hollking",group:6}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"inftitan",group:6}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"nightmre",group:6}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"soulwrdn",group:6}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"stormfrg",group:6}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"tidecllr",group:6}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"verdwrdn",group:6}
function evercraft:claim/bulk_claim_bestiary_mob {smob:"voidsovr",group:6}

# Summary feedback
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 0.8
execute if score @s ec.claim_cnt matches 1.. run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{"text":"[\u2726] ","color":"gold"},{"text":"Claimed ","color":"green"},{"score":{"name":"@s","objective":"ec.temp"},"color":"yellow"},{"text":" Bestiary reward(s)!","color":"green"}]
execute if score @s ec.claim_cnt matches 0 run tellraw @s [{"text":"[!] ","color":"gray"},{"text":"No unclaimed Bestiary rewards.","color":"gray"}]

# Recount unclaimed
function evercraft:claim/check_unclaimed
scoreboard players set @s adv.gui_cd 5
