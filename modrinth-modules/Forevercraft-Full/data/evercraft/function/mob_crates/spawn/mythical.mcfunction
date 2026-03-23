# Mob Crates - Spawn Mythical Crate
# Requires nearest player to have Dream Rate >= 25, otherwise downgrade to Exquisite

# Place barrel first — grant/downgrade functions fill it with loot and set name
execute align xyz run setblock ~ ~ ~ minecraft:barrel{lock:{items:"minecraft:air"}}

# Check nearest player's dream rate (scale 10: 25.0 = 250)
execute as @p store result score @s ec.temp run attribute @s luck get 10
execute if score @p ec.temp matches 250.. run function evercraft:mob_crates/spawn/mythical_grant
execute unless score @p ec.temp matches 250.. run function evercraft:mob_crates/spawn/mythical_downgrade

# Achievement tracking
scoreboard players add @p ach.crates_mob 1
scoreboard players add @p ach.crates_opened 1
scoreboard players operation @p ec.last_mythical_at = @p ach.crates_opened
