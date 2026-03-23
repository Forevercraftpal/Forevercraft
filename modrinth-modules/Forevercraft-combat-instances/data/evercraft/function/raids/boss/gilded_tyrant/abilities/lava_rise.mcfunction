# Gilded Tyrant — Lava Rise (Phase 3)
# Room shrinks as lava encroaches every 100 ticks
# Uses damage to simulate lava encroachment without placing actual blocks

# Lava stage tracker (reuse #rd_gt_lava_stage)
scoreboard players add #rd_gt_lava_stage ec.var 1

# Damage players far from center (simulating lava ring closing in)
# Stage 1: players beyond 20 blocks from center
# Stage 2: beyond 16 blocks
# Stage 3: beyond 12 blocks
# Stage 4: beyond 8 blocks (deadly)
execute if score #rd_gt_lava_stage ec.var matches 1 as @a[tag=ec.rd_participant] at @e[type=marker,tag=rd.center,limit=1] if entity @s[distance=20..] run damage @s 4 minecraft:lava
execute if score #rd_gt_lava_stage ec.var matches 2 as @a[tag=ec.rd_participant] at @e[type=marker,tag=rd.center,limit=1] if entity @s[distance=16..] run damage @s 4 minecraft:lava
execute if score #rd_gt_lava_stage ec.var matches 3 as @a[tag=ec.rd_participant] at @e[type=marker,tag=rd.center,limit=1] if entity @s[distance=12..] run damage @s 4 minecraft:lava
execute if score #rd_gt_lava_stage ec.var matches 4.. as @a[tag=ec.rd_participant] at @e[type=marker,tag=rd.center,limit=1] if entity @s[distance=8..] run damage @s 4 minecraft:lava

# VFX — lava particles at the edge
execute at @e[type=marker,tag=rd.center,limit=1] run particle minecraft:lava ~ ~0.5 ~ 10 0.5 10 0.01 10

# Warning at each stage
execute if score #rd_gt_lava_stage ec.var matches 1 run tellraw @a[tag=ec.rd_participant] [{"text":"  🔥 ","color":"red"},{"text":"Lava begins to flood the edges!","color":"gold"}]
execute if score #rd_gt_lava_stage ec.var matches 2 run tellraw @a[tag=ec.rd_participant] [{"text":"  🔥 ","color":"red"},{"text":"The lava rises higher!","color":"gold"}]
execute if score #rd_gt_lava_stage ec.var matches 3 run tellraw @a[tag=ec.rd_participant] [{"text":"  🔥 ","color":"red"},{"text":"The arena shrinks — stay close!","color":"red"}]
execute if score #rd_gt_lava_stage ec.var matches 4 run tellraw @a[tag=ec.rd_participant] [{"text":"  🔥 ","color":"dark_red"},{"text":"LAVA ENGULFS THE ROOM!","color":"red","bold":true}]

# Sound
execute at @e[type=marker,tag=rd.center,limit=1] run playsound minecraft:block.lava.extinguish hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.6
