# Mob Crates - Spawn Exquisite (Legendary) Crate
# Requires nearest player to have Dream Rate >= 15, otherwise downgrade to Ornate

# Place barrel first — grant/downgrade functions fill it with loot and set name
execute align xyz run setblock ~ ~ ~ minecraft:barrel{lock:{items:"minecraft:air"}}

# Check nearest player's dream rate (scale 10: 15.0 = 150)
execute as @p store result score @s ec.temp run attribute @s luck get 10
execute if score @p ec.temp matches 150.. run function evercraft:mob_crates/spawn/exquisite_grant
execute unless score @p ec.temp matches 150.. run function evercraft:mob_crates/spawn/exquisite_downgrade

# Achievement tracking
scoreboard players add @p ach.crates_mob 1
scoreboard players add @p ach.crates_opened 1
