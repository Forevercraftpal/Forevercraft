# Bloomweaver — Passive: Growth aura + particles
# Run as/at: player holding Bloomweaver

# Green particles
execute if score #st_effect_cd ec.var matches 0 run particle minecraft:happy_villager ~ ~1 ~ 1 0.5 1 0.1 3
execute if score #st_effect_cd ec.var matches 20 run particle minecraft:happy_villager ~ ~1 ~ 1 0.5 1 0.1 3

# Growth aura — base every 100 ticks (5s). Affinity speeds this up:
# 5-9% boost: 80 ticks, 10-14%: 60 ticks, 15%+: 40 ticks (2s = very fast)
scoreboard players add @s ec.st_grow_cd 1

# Check threshold based on affinity boost
scoreboard players set #grow_thresh ec.temp 100
execute if score @s ec.caff_boost matches 5..9 run scoreboard players set #grow_thresh ec.temp 80
execute if score @s ec.caff_boost matches 10..14 run scoreboard players set #grow_thresh ec.temp 60
execute if score @s ec.caff_boost matches 15.. run scoreboard players set #grow_thresh ec.temp 40

execute if score @s ec.st_grow_cd >= #grow_thresh ec.temp run function evercraft:craftforever/spirit_tools/bloomweaver/growth_pulse
execute if score @s ec.st_grow_cd >= #grow_thresh ec.temp run function evercraft:craftforever/spirit_tools/bloomweaver/harvest_storm
execute if score @s ec.st_grow_cd >= #grow_thresh ec.temp run scoreboard players set @s ec.st_grow_cd 0
