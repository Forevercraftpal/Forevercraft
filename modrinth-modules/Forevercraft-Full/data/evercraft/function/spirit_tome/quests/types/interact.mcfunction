# Spirit Tome — Interact check (Type 3)
# Per-quest one-off condition checks, routed by quest part (ec.sq_sub = quest part)

# 4: Cook a meal — check ach.meals_cooked increased since activation
execute if score @s ec.sq_sub matches 4 run function evercraft:spirit_tome/quests/types/interact/cook_meal

# 8: Night Owl — be outside at midnight (DayTime 18000)
execute if score @s ec.sq_sub matches 8 run function evercraft:spirit_tome/quests/types/interact/night_owl

# 13: Arm Yourself — hold an Ornate+ artifact (tier is a string in custom_data)
execute if score @s ec.sq_sub matches 13 if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"ornate"}] run function evercraft:spirit_tome/complete
execute if score @s ec.sq_sub matches 13 if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"exquisite"}] run function evercraft:spirit_tome/complete
execute if score @s ec.sq_sub matches 13 if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"mythical"}] run function evercraft:spirit_tome/complete

# 24: Stay Awhile — stand still for 60 seconds (check sneak time or no movement delta)
execute if score @s ec.sq_sub matches 24 run function evercraft:spirit_tome/quests/types/interact/stay_still

# 26: Cookie Monster — eat a cookie (advancement-based)
execute if score @s ec.sq_sub matches 26 run function evercraft:spirit_tome/quests/types/interact/cookie

# 28: Bonfire — check for nearby campfire
execute if score @s ec.sq_sub matches 28 at @s if block ~ ~-1 ~ campfire run function evercraft:spirit_tome/complete
execute if score @s ec.sq_sub matches 28 at @s if block ~ ~ ~ campfire run function evercraft:spirit_tome/complete

# 29: Nether Tourist — be in the Nether
execute if score @s ec.sq_sub matches 29 in minecraft:the_nether run function evercraft:spirit_tome/complete

# 31: Splash Zone — (tracked via snowball hit advancement — see interact/snowball)
execute if score @s ec.sq_sub matches 31 run function evercraft:spirit_tome/quests/types/interact/snowball

# 32: Old Reliable — hold artifact for 1 hour (72000 ticks)
execute if score @s ec.sq_sub matches 32 run function evercraft:spirit_tome/quests/types/interact/artifact_hold

# 35: Guild Member — be in a guild (check guild tag)
execute if score @s ec.sq_sub matches 35 if entity @s[tag=ec.guild_member] run function evercraft:spirit_tome/complete

# 37: The Heights — Y >= 200
execute if score @s ec.sq_sub matches 37 at @s positioned ~ 200 ~ if entity @s[y=200,dy=200] run function evercraft:spirit_tome/complete

# 39: Night Fisher — catch a fish at night (check fish caught delta + time)
execute if score @s ec.sq_sub matches 39 run function evercraft:spirit_tome/quests/types/interact/night_fish

# 41: Bed Head — sleeping detection (use sleeping_pos — reliable across tick intervals)
execute if score @s ec.sq_sub matches 41 if data entity @s sleeping_pos run function evercraft:spirit_tome/complete

# 44: Lava Walker — stand near lava for 30 seconds
execute if score @s ec.sq_sub matches 44 run function evercraft:spirit_tome/quests/types/interact/lava_walk

# 46: Pumpkin Head — wearing carved pumpkin
execute if score @s ec.sq_sub matches 46 if items entity @s armor.head minecraft:carved_pumpkin run function evercraft:spirit_tome/complete

# 52: End Tourist — be in the End
execute if score @s ec.sq_sub matches 52 in minecraft:the_end run function evercraft:spirit_tome/complete

# 53: Deep Sea Diver — Y <= -40
execute if score @s ec.sq_sub matches 53 at @s positioned ~ -40 ~ if entity @s[y=-64,dy=24] run function evercraft:spirit_tome/complete

# 58: Bookworm — (auto-complete via block placement detection — simplified to always check)
execute if score @s ec.sq_sub matches 58 run function evercraft:spirit_tome/quests/types/interact/bookshelf

# 61: Snow Day — be in a snowy biome
execute if score @s ec.sq_sub matches 61 at @s if biome ~ ~ ~ minecraft:snowy_plains run function evercraft:spirit_tome/complete
execute if score @s ec.sq_sub matches 61 at @s if biome ~ ~ ~ minecraft:snowy_taiga run function evercraft:spirit_tome/complete
execute if score @s ec.sq_sub matches 61 at @s if biome ~ ~ ~ minecraft:frozen_river run function evercraft:spirit_tome/complete
execute if score @s ec.sq_sub matches 61 at @s if biome ~ ~ ~ minecraft:snowy_beach run function evercraft:spirit_tome/complete
execute if score @s ec.sq_sub matches 61 at @s if biome ~ ~ ~ minecraft:ice_spikes run function evercraft:spirit_tome/complete
execute if score @s ec.sq_sub matches 61 at @s if biome ~ ~ ~ minecraft:frozen_ocean run function evercraft:spirit_tome/complete

# 63: Lightning Rod — be outside during thunderstorm
execute if score @s ec.sq_sub matches 63 at @s if predicate evercraft:spirit_tome/is_thunderstorm run function evercraft:spirit_tome/complete

# 66: Music Box — (auto-complete via jukebox placement — simplified to check nearby jukebox)
execute if score @s ec.sq_sub matches 66 at @s if block ~ ~-1 ~ jukebox run function evercraft:spirit_tome/complete
execute if score @s ec.sq_sub matches 66 at @s if block ~ ~ ~ jukebox run function evercraft:spirit_tome/complete

# 71: Mountain Goat — Y >= 256
execute if score @s ec.sq_sub matches 71 at @s positioned ~ 256 ~ if entity @s[y=256,dy=200] run function evercraft:spirit_tome/complete

# 73: Dark Explorer — be in deep dark biome
execute if score @s ec.sq_sub matches 73 at @s if biome ~ ~ ~ minecraft:deep_dark run function evercraft:spirit_tome/complete

# 83: Convergence — check if Dream Surge event is active
execute if score @s ec.sq_sub matches 83 if score #ec_event_active ec.var matches 1 run function evercraft:spirit_tome/complete
