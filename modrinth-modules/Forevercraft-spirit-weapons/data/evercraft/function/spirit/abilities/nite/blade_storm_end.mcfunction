# Nite — Blade Storm End (convergence AoE)
# Swords return to player, final slash — 4x weapon damage to all at player position

tag @s remove ec.sp_blade_storm
scoreboard players set @s ec.sp_timer 0
scoreboard players set @s ec.sp_combo 0

# Kill orbit markers
kill @e[tag=ec.sp_orbit]

# Final convergence AoE — massive damage at player position
execute as @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 24 minecraft:player_attack by @p[sort=nearest,limit=1]

# VFX
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 0.8 1.5
particle sweep_attack ~ ~1 ~ 2 0.5 2 0.5 15
particle dust{color:[0.4,0.0,0.6],scale:1.5} ~ ~1 ~ 2 1 2 0.1 30
particle explosion ~ ~1 ~ 1 0.5 1 0.1 5

title @s actionbar [{"text":"Blade Storm converged!","color":"dark_purple"}]
