# === BULK CLAIM — MASTERY CATEGORY ONLY ===
# Claims unclaimed Mastery milestones (31-34)
# Run as: player

# Guard: must be in menu
execute unless entity @s[tag=Adv.InMenu] run return 0

# Counter for summary
scoreboard players set @s ec.claim_cnt 0

# Mastery (31-33)
function evercraft:claim/bulk_claim_single {id:"31",tier:"mythical"}
function evercraft:claim/bulk_claim_single {id:"32",tier:"ornate"}
function evercraft:claim/bulk_claim_single {id:"33",tier:"exquisite"}

# Mastery 34 — Eternal Legacy (3x mythical, special handling)
# Grant advancement LAST so the unless checks pass for all 3 crate gives
execute if score #rm_done_34 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_34=true}] run function evercraft:util/give_quest_crate {tier:"mythical"}
execute if score #rm_done_34 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_34=true}] run function evercraft:util/give_quest_crate {tier:"mythical"}
execute if score #rm_done_34 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_34=true}] run function evercraft:util/give_quest_crate {tier:"mythical"}
execute if score #rm_done_34 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_34=true}] run scoreboard players add @s ec.claim_cnt 1
execute if score #rm_done_34 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_34=true}] run advancement grant @s only evercraft:milestones/claimed/ms_34

# Summary feedback
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 0.8
execute if score @s ec.claim_cnt matches 1.. run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{text:"[\u2726] ",color:"gold"},{text:"Claimed ",color:"green"},{score:{name:"@s",objective:"ec.claim_cnt"},color:"yellow"},{text:" Mastery reward(s)!",color:"green"}]
execute if score @s ec.claim_cnt matches 0 run tellraw @s [{text:"[!] ",color:"gray"},{text:"No unclaimed Mastery rewards.",color:"gray"}]

# Recount unclaimed
function evercraft:claim/check_unclaimed

# GUI cooldown
scoreboard players set @s adv.gui_cd 5
