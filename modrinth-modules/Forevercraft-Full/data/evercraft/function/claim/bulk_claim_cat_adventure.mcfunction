# === BULK CLAIM — ADVENTURE CATEGORY ONLY ===
# Claims unclaimed Adventure milestones (23-26)
# Run as: player

# Guard: must be in menu
execute unless entity @s[tag=Adv.InMenu] run return 0

# Counter for summary
scoreboard players set @s ec.claim_cnt 0

# Adventure (23-26)
function evercraft:claim/bulk_claim_single {id:"23",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"24",tier:"ornate"}
function evercraft:claim/bulk_claim_single {id:"25",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"26",tier:"ornate"}

# Summary feedback
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 0.8
execute if score @s ec.claim_cnt matches 1.. run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{text:"[\u2726] ",color:"gold"},{text:"Claimed ",color:"green"},{score:{name:"@s",objective:"ec.claim_cnt"},color:"yellow"},{text:" Adventure reward(s)!",color:"green"}]
execute if score @s ec.claim_cnt matches 0 run tellraw @s [{text:"[!] ",color:"gray"},{text:"No unclaimed Adventure rewards.",color:"gray"}]

# Recount unclaimed
function evercraft:claim/check_unclaimed

# GUI cooldown
scoreboard players set @s adv.gui_cd 5
