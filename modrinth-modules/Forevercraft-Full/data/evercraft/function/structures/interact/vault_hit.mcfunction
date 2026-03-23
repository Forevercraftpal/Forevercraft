# Vault block found by raycast — positioned at vault block center
# Store vault block coordinates for looted marker tracking
summon marker ~ ~ ~ {Tags:["cf.temp_marker"]}
execute store result score @s cf.pos_x run data get entity @e[type=marker,tag=cf.temp_marker,limit=1,sort=nearest] Pos[0]
execute store result score @s cf.pos_y run data get entity @e[type=marker,tag=cf.temp_marker,limit=1,sort=nearest] Pos[1]
execute store result score @s cf.pos_z run data get entity @e[type=marker,tag=cf.temp_marker,limit=1,sort=nearest] Pos[2]
kill @e[type=marker,tag=cf.temp_marker]

# Set struct_id based on ominous flag
# Normal vault = struct_id 21, Ominous vault = struct_id 22
execute if score @s cf.vault_ominous matches 0 run scoreboard players set @s cf.struct_id 21
execute if score @s cf.vault_ominous matches 1 run scoreboard players set @s cf.struct_id 22

# Set base tier: Normal vault = tier 2 (Uncommon), Ominous vault = tier 3 (Rare)
execute if score @s cf.vault_ominous matches 0 run scoreboard players set @s cf.tier 2
execute if score @s cf.vault_ominous matches 1 run scoreboard players set @s cf.tier 3

# Roll tier upgrade via Dream Rate (reuse vanilla tier roller)
function evercraft:structures/interact/roll_vanilla_tier

# Check if already looted at this vault position
# Note: Expired looted markers become cf.refresh_marker and won't block spawn_loot.
# Orphan refresh markers at vault positions are lightweight and don't affect tick cost.
function evercraft:structures/storage/check_looted
