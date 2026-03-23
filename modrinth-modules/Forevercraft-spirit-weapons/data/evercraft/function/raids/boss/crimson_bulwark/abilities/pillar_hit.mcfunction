# The Crimson Bulwark — Pillar Hit
# Called when a shield throw hits a pillar protecting a player
# Each pillar has 3 HP tracked in scoreboards

# Find nearest pillar and decrement its HP
execute at @s as @e[tag=ec.rd_cb_pillar1,distance=..2,limit=1] run scoreboard players remove #rd_cb_pillar_hp1 ec.var 1
execute at @s as @e[tag=ec.rd_cb_pillar2,distance=..2,limit=1] run scoreboard players remove #rd_cb_pillar_hp2 ec.var 1
execute at @s as @e[tag=ec.rd_cb_pillar3,distance=..2,limit=1] run scoreboard players remove #rd_cb_pillar_hp3 ec.var 1
execute at @s as @e[tag=ec.rd_cb_pillar4,distance=..2,limit=1] run scoreboard players remove #rd_cb_pillar_hp4 ec.var 1

# Check if any pillar is destroyed (HP <= 0)
execute if score #rd_cb_pillar_hp1 ec.var matches ..0 as @e[tag=ec.rd_cb_pillar1] at @s run function evercraft:raids/boss/crimson_bulwark/abilities/pillar_destroy
execute if score #rd_cb_pillar_hp2 ec.var matches ..0 as @e[tag=ec.rd_cb_pillar2] at @s run function evercraft:raids/boss/crimson_bulwark/abilities/pillar_destroy
execute if score #rd_cb_pillar_hp3 ec.var matches ..0 as @e[tag=ec.rd_cb_pillar3] at @s run function evercraft:raids/boss/crimson_bulwark/abilities/pillar_destroy
execute if score #rd_cb_pillar_hp4 ec.var matches ..0 as @e[tag=ec.rd_cb_pillar4] at @s run function evercraft:raids/boss/crimson_bulwark/abilities/pillar_destroy

# VFX: pillar absorbs hit
execute at @s as @e[tag=ec.rd_cb_pillar,distance=..2,limit=1] at @s run particle minecraft:crit ~ ~1 ~ 0.3 0.5 0.3 0.2 8
execute at @s as @e[tag=ec.rd_cb_pillar,distance=..2,limit=1] at @s run playsound minecraft:block.stone.break master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8
