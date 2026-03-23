# Nite — Rift Damage Check (per marker)
# Run as @s (marker) at @s
# Damage entities within 1.5 blocks, teleport them randomly
# Only damage every 10 ticks to prevent instant-killing (use timer modulo)

execute store result score #rift_mod ec.temp run scoreboard players get @s ec.sp_timer
scoreboard players operation #rift_mod ec.temp %= #10 ec.const
execute unless score #rift_mod ec.temp matches 0 run return 0

# Damage nearby entities (15 damage)
execute as @e[distance=..1.5,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 15 minecraft:magic

# Teleport hit entities to random position within 10 blocks
execute as @e[distance=..1.5,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] at @s run spreadplayers ~ ~ 5 10 false @s

# Hit sound
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.6 2.0
