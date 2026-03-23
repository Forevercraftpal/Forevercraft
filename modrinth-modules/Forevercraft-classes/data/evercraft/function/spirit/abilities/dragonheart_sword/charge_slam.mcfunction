# Wyrmcleaver — Charge Slam (Final overhead slam at end of charge)
# Run as player at player. 8-block AoE cone: 15 damage + ignite 5 seconds

# Remove charging tag
tag @s remove ec.sp_dh_charging

# === DAMAGE — 15 to all mobs in 8-block radius ahead ===
# Use positioned forward to create a cone-like effect
execute positioned ^ ^ ^4 run execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 15 minecraft:player_attack by @p[sort=nearest,limit=1]

# Ignite enemies for 5 seconds (100 ticks)
execute positioned ^ ^ ^4 as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run data merge entity @s {Fire:100s}

# === MASSIVE VFX — Dragon breath explosion ===
particle dragon_breath ~ ~0.5 ~ 4.0 1.0 4.0 0.15 80
particle flame ~ ~1 ~ 5.0 2.0 5.0 0.12 60
particle lava ~ ~0.5 ~ 3.0 0.5 3.0 0.08 20
particle explosion ~ ~1 ~ 2.0 1.0 2.0 0.05 5
particle dust{color:[1.0,0.2,0.0],scale:2.5} ~ ~1 ~ 4.0 2.0 4.0 0.08 30

# Forward cone VFX
execute positioned ^ ^ ^4 run particle flame ~ ~1 ~ 3.0 1.5 3.0 0.1 40
execute positioned ^ ^ ^4 run particle dragon_breath ~ ~0.5 ~ 3.0 0.5 3.0 0.1 30

# === SFX — Massive impact ===
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 1.0 0.6
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.0 0.7
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1.0 0.5
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1.0 0.3

title @s actionbar [{"text":"SLAM!","color":"red","bold":true}]
