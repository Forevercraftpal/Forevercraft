# The Leviathan — Sponge Puzzle (every tick)
# 6 sponge slots around the arena. 4 are valid (create air pockets), 2 are traps (spawn guardians).
# Right-click a slot (interaction entity) to place a sponge.

# ── Check for sponge slot clicks ──
execute as @e[tag=ec.rd_lv_sponge,tag=!ec.rd_lv_sponge_used] at @s if data entity @s interaction run function evercraft:raids/boss/leviathan/puzzle/sponge_place

# ── Active air pocket particles ──
execute as @e[tag=ec.rd_lv_sponge_valid_placed] at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.5 0.5 0.5 0.01 2
execute as @e[tag=ec.rd_lv_sponge_valid_placed] at @s run particle minecraft:splash ~ ~0.5 ~ 0.3 0.3 0.3 0.02 1

# ── Unused slot indicator particles ──
execute as @e[tag=ec.rd_lv_sponge,tag=!ec.rd_lv_sponge_used] at @s run particle minecraft:dripping_water ~ ~1.5 ~ 0.2 0.2 0.2 0.01 1

# ── Air pocket effect: water breathing to nearby players (every 40 ticks) ──
execute store result score #rd_temp ec.var run time query gametime
scoreboard players operation #rd_temp ec.var %= #20 adv.temp
execute if score #rd_temp ec.var matches 0 as @e[tag=ec.rd_lv_sponge_valid_placed] at @s run effect give @a[tag=ec.rd_participant,distance=..4] water_breathing 12 0 true
