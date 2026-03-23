# === AUTO-CLAIM ALL REWARDS ===
# Silently claims all available rewards across all categories
# Run as: player (on codex open, if auto_clm preference is enabled)

# Guard: must have auto-collect enabled
execute unless score @s ec.auto_clm matches 1 run return 0

# Recount available rewards first
function evercraft:claim/check_unclaimed

# Skip if nothing to claim
execute unless score @s ec.claim_any matches 1 run return 0

# Counter for summary
scoreboard players set @s ec.claim_cnt 0

# Bulk claim each category (only if that category has unclaimed rewards)
execute if score @s ec.claim_prs matches 1.. run function evercraft:claim/bulk_claim_personal
execute if score @s ec.claim_cft matches 1.. run function evercraft:claim/bulk_claim_craftforever
execute if score @s ec.claim_aff matches 1.. run function evercraft:claim/bulk_claim_affinity
execute if score @s ec.claim_lore matches 1.. run function evercraft:claim/bulk_claim_lore
execute if score @s ec.claim_biome matches 1.. run function evercraft:claim/bulk_claim_biome
execute if score @s ec.claim_bst matches 1.. run function evercraft:claim/bulk_claim_bestiary

# Summary (only if something was claimed)
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{text:"\u2726 ",color:"yellow"},{text:"Auto-collected ",color:"green"},{score:{name:"@s",objective:"ec.claim_cnt"},color:"yellow"},{text:" reward(s)!",color:"green"}]
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.0

# Recount (update header indicators)
function evercraft:claim/check_unclaimed
