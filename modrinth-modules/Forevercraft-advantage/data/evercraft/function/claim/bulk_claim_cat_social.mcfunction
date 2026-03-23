# === BULK CLAIM — SOCIAL CATEGORY ONLY ===
# Claims unclaimed Social milestones (13-17)
# Run as: player

# Guard: must be in menu
execute unless entity @s[tag=Adv.InMenu] run return 0

# Counter for summary
scoreboard players set @s ec.claim_cnt 0

# Social (13-17)
function evercraft:claim/bulk_claim_single {id:"13",tier:"ornate"}
function evercraft:claim/bulk_claim_single {id:"14",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"15",tier:"mythical"}
function evercraft:claim/bulk_claim_single {id:"16",tier:"exquisite"}
function evercraft:claim/bulk_claim_single {id:"17",tier:"ornate"}

# Summary feedback
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 0.8
execute if score @s ec.claim_cnt matches 1.. run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{text:"[\u2726] ",color:"gold"},{text:"Claimed ",color:"green"},{score:{name:"@s",objective:"ec.claim_cnt"},color:"yellow"},{text:" Social reward(s)!",color:"green"}]
execute if score @s ec.claim_cnt matches 0 run tellraw @s [{text:"[!] ",color:"gray"},{text:"No unclaimed Social rewards.",color:"gray"}]

# Recount unclaimed
function evercraft:claim/check_unclaimed

# GUI cooldown
scoreboard players set @s adv.gui_cd 5
