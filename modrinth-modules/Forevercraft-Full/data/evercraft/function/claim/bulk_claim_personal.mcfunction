# === BULK CLAIM — PERSONAL (REALM MILESTONES) ===
# Claims all unclaimed realm milestone rewards at once
# Run as: player

# Guard: must be in menu
execute unless entity @s[tag=Adv.InMenu] run return 0

# Counter for summary
scoreboard players set @s ec.claim_cnt 0

# Origins (1, 3, 5-12) — tiers match check_claims_origins
function evercraft:claim/bulk_claim_single {id:"1",tier:"rare"}
function evercraft:claim/bulk_claim_single {id:"3",tier:"common"}
function evercraft:claim/bulk_claim_single {id:"5",tier:"ornate"}
function evercraft:claim/bulk_claim_single {id:"6",tier:"ornate"}
function evercraft:claim/bulk_claim_single {id:"7",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"8",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"9",tier:"mythical"}
function evercraft:claim/bulk_claim_single {id:"10",tier:"mythical"}
function evercraft:claim/bulk_claim_single {id:"11",tier:"mythical"}
function evercraft:claim/bulk_claim_single {id:"12",tier:"mythical"}

# Social (13-17)
function evercraft:claim/bulk_claim_single {id:"13",tier:"ornate"}
function evercraft:claim/bulk_claim_single {id:"14",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"15",tier:"mythical"}
function evercraft:claim/bulk_claim_single {id:"16",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"17",tier:"ornate"}

# Guild (18-22)
function evercraft:claim/bulk_claim_single {id:"18",tier:"rare"}
function evercraft:claim/bulk_claim_single {id:"19",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"20",tier:"ornate"}
function evercraft:claim/bulk_claim_single {id:"21",tier:"mythical"}
function evercraft:claim/bulk_claim_single {id:"22",tier:"exquisite"}

# Adventure (23-26)
function evercraft:claim/bulk_claim_single {id:"23",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"24",tier:"ornate"}
function evercraft:claim/bulk_claim_single {id:"25",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"26",tier:"ornate"}

# Combat (27-30)
function evercraft:claim/bulk_claim_single {id:"27",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"28",tier:"mythical"}
function evercraft:claim/bulk_claim_single {id:"29",tier:"ornate"}
function evercraft:claim/bulk_claim_single {id:"30",tier:"exquisite"}

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

# Summary feedback (only if at least 1 was claimed)
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 0.8
execute if score @s ec.claim_cnt matches 1.. run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{text:"[\u2726] ",color:"gold"},{text:"Claimed ",color:"green"},{score:{name:"@s",objective:"ec.claim_cnt"},color:"yellow"},{text:" milestone reward(s)!",color:"green"}]

# Nothing to claim
execute if score @s ec.claim_cnt matches 0 run tellraw @s [{text:"[!] ",color:"gray"},{text:"No unclaimed milestone rewards.",color:"gray"}]

# Recount unclaimed (update gold header state)
function evercraft:claim/check_unclaimed

# GUI cooldown
scoreboard players set @s adv.gui_cd 5
