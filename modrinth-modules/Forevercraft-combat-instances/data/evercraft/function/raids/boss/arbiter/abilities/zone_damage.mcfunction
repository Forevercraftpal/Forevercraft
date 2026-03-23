# Arbiter — Zone Damage (Phase 2)
# Called as each participant, at center marker position
# Damages players outside the safe zone radius

# Only check every 20 ticks (not per-tick to avoid insane damage)
scoreboard players add @s ec.rd_zone_tick 1
execute unless score @s ec.rd_zone_tick matches 20.. run return 0
scoreboard players set @s ec.rd_zone_tick 0

# Store player distance from center into #rd_temp
execute at @e[type=marker,tag=rd.center,limit=1] store result score #rd_temp ec.var run data get entity @s Pos[0]

# Compare: if player distance > zone radius, deal damage
# Use stepped checks — each step only fires for its radius range
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..15] if score #rd_arb_zone_radius ec.var matches 15 run damage @s 4 minecraft:out_of_world
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..13] if score #rd_arb_zone_radius ec.var matches 13 run damage @s 4 minecraft:out_of_world
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..11] if score #rd_arb_zone_radius ec.var matches 11 run damage @s 4 minecraft:out_of_world
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..9] if score #rd_arb_zone_radius ec.var matches 9 run damage @s 4 minecraft:out_of_world
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..7] if score #rd_arb_zone_radius ec.var matches 7 run damage @s 4 minecraft:out_of_world
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..5] if score #rd_arb_zone_radius ec.var matches 5 run damage @s 4 minecraft:out_of_world

# Warn player they're outside the zone
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..15] if score #rd_arb_zone_radius ec.var matches 15 run title @s actionbar {"text":"OUTSIDE THE SAFE ZONE!","color":"red","bold":true}
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..13] if score #rd_arb_zone_radius ec.var matches 11..13 run title @s actionbar {"text":"OUTSIDE THE SAFE ZONE!","color":"red","bold":true}
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..11] if score #rd_arb_zone_radius ec.var matches 9..11 run title @s actionbar {"text":"OUTSIDE THE SAFE ZONE!","color":"red","bold":true}
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..9] if score #rd_arb_zone_radius ec.var matches 7..9 run title @s actionbar {"text":"OUTSIDE THE SAFE ZONE!","color":"red","bold":true}
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..7] if score #rd_arb_zone_radius ec.var matches 5..7 run title @s actionbar {"text":"OUTSIDE THE SAFE ZONE!","color":"red","bold":true}
execute at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..5] if score #rd_arb_zone_radius ec.var matches ..5 run title @s actionbar {"text":"OUTSIDE THE SAFE ZONE!","color":"red","bold":true}
