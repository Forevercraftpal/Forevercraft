# Hollow Fangs — Shadow Step Bonus Damage (3x on first hit)
# Run as @s (the player) after landing a hit with shadow_bonus active

# Remove the bonus flag (consumed on first hit)
tag @s remove ec.sp_shadow_bonus
scoreboard players set @s ec.sp_timer 0

# Apply extra damage to nearest hurt entity (2x additional = 3x total with the normal hit)
# Damage the nearest entity that was just hit
execute anchored eyes positioned ^ ^ ^2 run damage @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,limit=1,sort=nearest] 24 minecraft:player_attack by @s

# VFX
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 0.6 2.0
particle dust{color:[0.4,0.0,0.4],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0.1 20
title @s actionbar [{"text":"Shadow Strike! ","color":"dark_purple","bold":true},{"text":"3x damage!","color":"light_purple"}]
