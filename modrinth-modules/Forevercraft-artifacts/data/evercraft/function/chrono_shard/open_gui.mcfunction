# Chrono Shard — open selection GUI
# @s = player, at @s context

# Prevent opening if in combat/dungeon/duel/etc
execute if score @s ec.duel_active matches 1 run return 0
execute if score @s ec.dungeon_active matches 1 run return 0
execute if score @s ec.heist_active matches 1 run return 0
execute if score @s ec.dream_active matches 1 run return 0

# Set active flag + generate unique owner ID for multiplayer safety
scoreboard players set @s ec.cs_active 1
scoreboard players set @s ec.cs_select 0
scoreboard players set @s ec.cs_confirm 0
execute store result score @s ec.cs_owner run random value 1..999999

# Spawn the selection GUI
execute rotated ~ 0 run function evercraft:chrono_shard/gui/spawn_buttons

playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.5
