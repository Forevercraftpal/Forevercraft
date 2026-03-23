# Thousand Cuts — Strike Phase
# Run as @s at @s during striking (sp_state=2)
# Fire one strike every 2 ticks in a 3-block frontal cone

# Only strike every 2 ticks
execute store result score #tc_mod ec.temp run scoreboard players get @s ec.sp_timer
scoreboard players operation #tc_mod ec.temp %= #2 ec.const
execute unless score #tc_mod ec.temp matches 0 run return 0

# === FIRE A STRIKE ===
# Damage entities in frontal cone (3 blocks forward, ~60 degree cone approximation)
# Raycast forward: damage entities in ^-1 ^0 ^1 to ^1 ^0 ^3 area
execute anchored eyes positioned ^ ^ ^1.5 run execute as @e[distance=..3,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=5,sort=nearest] run damage @s 4 minecraft:player_attack by @p[sort=nearest,limit=1]

# Apply Bleed effect via damage over time (use Poison as proxy, 1 heart/sec for 5 seconds)
# Stacks: each successive hit refreshes and adds duration
execute anchored eyes positioned ^ ^ ^1.5 as @e[distance=..3,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=5,sort=nearest] run effect give @s poison 5 0

# VFX per strike
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.6 2.0
execute anchored eyes run particle sweep_attack ^ ^ ^2 0.5 0.3 0.5 0.3 3
particle dust{color:[0.8,0.1,0.1],scale:0.8} ~ ~1 ~ 0.5 0.5 0.5 0.05 5

# Check if strikes complete
execute if score @s ec.sp_timer matches ..0 run function evercraft:spirit/abilities/hollow_fangs/tc_end
