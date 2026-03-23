# Beastlord — Wolf Warp Strike (per-wolf)
# Runs as each wolf near the beastlord player

# Verify this wolf belongs to the beastlord player
execute on owner unless entity @s[tag=bl.owner] run return 0

# Prefer lance-marked target, fall back to nearest hostile within 16 blocks
execute at @s if entity @e[tag=bl.marked,distance=..16] as @e[tag=bl.marked,distance=..16,limit=1] run tag @s add bl.warp_target
execute unless entity @e[tag=bl.warp_target] at @s as @e[type=#evercraft:combat_targets,distance=..16,sort=nearest,limit=1] run tag @s add bl.warp_target

# No target? Exit
execute unless entity @e[tag=bl.warp_target] run return 0

# Soul particles at wolf departure
execute at @s run particle soul ~ ~0.5 ~ 0.3 0.5 0.3 0.05 15

# Teleport wolf to target
execute at @e[tag=bl.warp_target,limit=1] run tp @s ~ ~ ~

# Soul particles at arrival
execute at @s run particle soul ~ ~0.5 ~ 0.3 0.5 0.3 0.05 15

# Deal bonus damage based on tier (read from owner)
execute on owner run scoreboard players operation #bl_tier ec.var = @s ec.bl_tier
execute if score #bl_tier ec.var matches 1..2 run damage @e[tag=bl.warp_target,limit=1] 2 minecraft:mob_attack by @s
execute if score #bl_tier ec.var matches 3..4 run damage @e[tag=bl.warp_target,limit=1] 3 minecraft:mob_attack by @s
execute if score #bl_tier ec.var matches 5..6 run damage @e[tag=bl.warp_target,limit=1] 4 minecraft:mob_attack by @s

# Sound
execute at @e[tag=bl.warp_target,limit=1] run playsound minecraft:particle.soul_escape player @a ~ ~ ~ 0.8 1.2

# Alpha Howl — if target died from warp, buff other wolves
tag @s add bl.warp_wolf
execute store result score #bl_hp ec.var run data get entity @e[tag=bl.warp_target,limit=1] Health 1
execute if score #bl_hp ec.var matches ..0 at @s run function evercraft:artifacts/beastlord/warp/alpha_howl
tag @s remove bl.warp_wolf

# Creeper safety: freeze creeper for 3s, knock it up, teleport wolf to owner
execute if entity @e[tag=bl.warp_target,type=creeper,limit=1] run effect give @e[tag=bl.warp_target,type=creeper,limit=1] slowness 2 127 true
execute if entity @e[tag=bl.warp_target,type=creeper,limit=1] run data modify entity @e[tag=bl.warp_target,type=creeper,limit=1] Motion set value [0.0d,0.6d,0.0d]
execute if entity @e[tag=bl.warp_target,type=creeper,limit=1] on owner run tp @s @s
execute if entity @e[tag=bl.warp_target,type=creeper,limit=1] at @s run particle soul ~ ~0.5 ~ 0.3 0.3 0.3 0.03 8

# Cleanup
tag @e[tag=bl.warp_target] remove bl.warp_target
