# Refreshed chest flow — struct_id already loaded from refresh marker
# Roll a new tier based on Dream Rate, then spawn loot directly
# (skip check_looted since the refresh marker was already consumed/verified)

# Derive base tier from struct_id (same as check_structure.mcfunction assigns)
# Ornate base (struct_id 1=Ancient City, 2=End City, 6=Bastion)
scoreboard players set @s cf.tier 0
execute if score @s cf.struct_id matches 1 run scoreboard players set @s cf.tier 4
execute if score @s cf.struct_id matches 2 run scoreboard players set @s cf.tier 4
execute if score @s cf.struct_id matches 6 run scoreboard players set @s cf.tier 4
# Rare base (struct_id 3=Trial, 4=Stronghold, 5=Mansion, 7=Fortress, 8=Monument)
execute if score @s cf.struct_id matches 3..5 run scoreboard players set @s cf.tier 3
execute if score @s cf.struct_id matches 7..8 run scoreboard players set @s cf.tier 3
# Uncommon base (struct_id 9=Desert, 10=Jungle, 17=Mineshaft, 19=Dungeon)
execute if score @s cf.struct_id matches 9..10 run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 17 run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 19 run scoreboard players set @s cf.tier 2
# Common base (struct_id 11-16, 18)
execute if score @s cf.struct_id matches 11..16 run scoreboard players set @s cf.tier 1
execute if score @s cf.struct_id matches 18 run scoreboard players set @s cf.tier 1
# Unknown (struct_id 20) — tier set by roll_unknown_tier
execute if score @s cf.struct_id matches 20 run scoreboard players set @s cf.tier 1
# Vault (struct_id 21=Normal Vault base Uncommon, 22=Ominous Vault base Rare)
execute if score @s cf.struct_id matches 21 run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 22 run scoreboard players set @s cf.tier 3

# Skip if struct_id was invalid
execute if score @s cf.tier matches 0 run return 0

# Roll tier using the standard system (luck + Dream Rate)
execute if score @s cf.struct_id matches 1..22 unless score @s cf.struct_id matches 20 run function evercraft:structures/interact/roll_vanilla_tier
execute if score @s cf.struct_id matches 20 run function evercraft:structures/interact/roll_unknown_tier

# Skip if no valid tier rolled
execute unless score @s cf.tier matches 1.. run return 0

# Set spawn flag and go directly to container creation (skip duplicate check)
scoreboard players set #spawn_loot cf.temp 1
# Mark as refresh so crate cap is skipped (this location is already counted)
scoreboard players set #cf_is_refresh cf.temp 1
function evercraft:structures/container/create_container
