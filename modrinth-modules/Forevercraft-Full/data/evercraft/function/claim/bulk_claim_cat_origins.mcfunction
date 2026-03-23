# === BULK CLAIM — ORIGINS CATEGORY ONLY ===
# Claims unclaimed Origins milestones (1, 3, 5-12)
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

# Summary feedback
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 0.8
execute if score @s ec.claim_cnt matches 1.. run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{text:"[\u2726] ",color:"gold"},{text:"Claimed ",color:"green"},{score:{name:"@s",objective:"ec.claim_cnt"},color:"yellow"},{text:" Origins reward(s)!",color:"green"}]
execute if score @s ec.claim_cnt matches 0 run tellraw @s [{text:"[!] ",color:"gray"},{text:"No unclaimed Origins rewards.",color:"gray"}]

# Recount unclaimed (update gold header state)
function evercraft:claim/check_unclaimed

# GUI cooldown
scoreboard players set @s adv.gui_cd 5
