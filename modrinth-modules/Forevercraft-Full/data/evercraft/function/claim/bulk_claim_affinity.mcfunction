# === BULK CLAIM — AFFINITY ===
# Claims all unclaimed class affinity stages at once
# Run as: player

execute unless entity @s[tag=Adv.InMenu] run return 0
scoreboard players set @s ec.claim_cnt 0

# Rogue
function evercraft:claim/bulk_claim_affinity_class {cls:"rg"}
# Berserker
function evercraft:claim/bulk_claim_affinity_class {cls:"bk"}
# Dancer
function evercraft:claim/bulk_claim_affinity_class {cls:"dn"}
# Striker
function evercraft:claim/bulk_claim_affinity_class {cls:"sk"}
# Sentinel
function evercraft:claim/bulk_claim_affinity_class {cls:"kt"}
# Healer
function evercraft:claim/bulk_claim_affinity_class {cls:"hl"}
# Beastlord
function evercraft:claim/bulk_claim_affinity_class {cls:"bl"}
# Javelin
function evercraft:claim/bulk_claim_affinity_class {cls:"jv"}
# Hoplite
function evercraft:claim/bulk_claim_affinity_class {cls:"hp"}
# Archer
function evercraft:claim/bulk_claim_affinity_class {cls:"ar"}
# Hunter
function evercraft:claim/bulk_claim_affinity_class {cls:"ht"}
# Tank
function evercraft:claim/bulk_claim_affinity_class {cls:"tk"}
# Knight
function evercraft:claim/bulk_claim_affinity_class {cls:"kn"}
# Dual Swordsman
function evercraft:claim/bulk_claim_affinity_class {cls:"ds"}

# Summary feedback
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 0.8
execute if score @s ec.claim_cnt matches 1.. run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{"text":"[\u2726] ","color":"dark_red"},{"text":"Claimed ","color":"green"},{"score":{"name":"@s","objective":"ec.temp"},"color":"yellow"},{"text":" Affinity reward(s)!","color":"green"}]
execute if score @s ec.claim_cnt matches 0 run tellraw @s [{"text":"[!] ","color":"gray"},{"text":"No unclaimed Affinity rewards.","color":"gray"}]

function evercraft:claim/check_unclaimed
scoreboard players set @s adv.gui_cd 5
