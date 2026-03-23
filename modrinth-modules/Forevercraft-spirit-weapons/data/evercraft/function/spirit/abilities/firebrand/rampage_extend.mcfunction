# Firebrand — Rampage Kill Extension
# +2 seconds (40 ticks) to timer, +10% damage stack, AoE shockwave

# Extend timer by 2 seconds
scoreboard players add @s ec.sp_rampage 40

# +10% damage stack (increment counter, apply modifier)
scoreboard players add @s ec.sp_rampage_dmg 1

# Remove old modifier and apply new one (stacked)
attribute @s attack_damage modifier remove evercraft:rampage_damage
# Each stack = 10% = 0.1 multiplier. Store stack count, multiply by 0.1
# Can't do float math in mcfunction, so use tiered approach
execute if score @s ec.sp_rampage_dmg matches 1 run attribute @s attack_damage modifier add evercraft:rampage_damage 0.1 add_multiplied_total
execute if score @s ec.sp_rampage_dmg matches 2 run attribute @s attack_damage modifier add evercraft:rampage_damage 0.2 add_multiplied_total
execute if score @s ec.sp_rampage_dmg matches 3 run attribute @s attack_damage modifier add evercraft:rampage_damage 0.3 add_multiplied_total
execute if score @s ec.sp_rampage_dmg matches 4 run attribute @s attack_damage modifier add evercraft:rampage_damage 0.4 add_multiplied_total
execute if score @s ec.sp_rampage_dmg matches 5 run attribute @s attack_damage modifier add evercraft:rampage_damage 0.5 add_multiplied_total
execute if score @s ec.sp_rampage_dmg matches 6 run attribute @s attack_damage modifier add evercraft:rampage_damage 0.6 add_multiplied_total
execute if score @s ec.sp_rampage_dmg matches 7 run attribute @s attack_damage modifier add evercraft:rampage_damage 0.7 add_multiplied_total
execute if score @s ec.sp_rampage_dmg matches 8 run attribute @s attack_damage modifier add evercraft:rampage_damage 0.8 add_multiplied_total
execute if score @s ec.sp_rampage_dmg matches 9 run attribute @s attack_damage modifier add evercraft:rampage_damage 0.9 add_multiplied_total
execute if score @s ec.sp_rampage_dmg matches 10.. run attribute @s attack_damage modifier add evercraft:rampage_damage 1.0 add_multiplied_total

# AoE shockwave on kill (2 damage to enemies within 4 blocks of player)
execute as @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 2 minecraft:player_attack by @p[sort=nearest,limit=1]

# Refresh Speed II
effect give @s speed 12 1 true

# VFX
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.6 1.5
particle flame ~ ~1 ~ 1.5 0.3 1.5 0.08 15
title @s actionbar [{"text":"RAMPAGE +","color":"dark_red","bold":true},{"text":"","color":"red"},{"text":" ×","color":"gold"},{"score":{"name":"@s","objective":"ec.sp_rampage_dmg"},"color":"gold"},{"text":" damage","color":"gold"}]
