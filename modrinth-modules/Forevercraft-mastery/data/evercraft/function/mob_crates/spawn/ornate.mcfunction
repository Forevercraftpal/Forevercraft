# Mob Crates - Spawn Ornate Crate
# Requires nearest player to have Dream Rate >= 5, otherwise downgrade to Rare

# Place barrel first — grant/downgrade functions fill it with loot and set name
execute align xyz run setblock ~ ~ ~ minecraft:barrel{lock:{items:"minecraft:air"}}

# Check nearest player's dream rate (scale 10: 5.0 = 50)
execute as @p store result score @s ec.temp run attribute @s luck get 10
execute if score @p ec.temp matches 50.. run function evercraft:mob_crates/spawn/ornate_grant
execute unless score @p ec.temp matches 50.. run function evercraft:mob_crates/spawn/ornate_downgrade

# Achievement tracking
scoreboard players add @p ach.crates_mob 1
scoreboard players add @p ach.crates_opened 1
