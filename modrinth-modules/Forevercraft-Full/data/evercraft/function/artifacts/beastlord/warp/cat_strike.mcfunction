# Beastlord — Cat Warp Strike (per-cat)
# Runs as each cat near the beastlord player
# Cats attack CREEPERS ONLY — 7 damage per hit (3-shot on 20 HP creeper)

# Verify this cat belongs to the beastlord player
execute on owner unless entity @s[tag=bl.owner] run return 0

# Prefer lance-marked creeper, fall back to nearest creeper within 16 blocks
execute at @s if entity @e[tag=bl.marked,type=creeper,distance=..16] as @e[tag=bl.marked,type=creeper,distance=..16,limit=1] run tag @s add bl.warp_target
execute unless entity @e[tag=bl.warp_target] at @s as @e[type=creeper,distance=..16,sort=nearest,limit=1] run tag @s add bl.warp_target

# No creeper? Exit
execute unless entity @e[tag=bl.warp_target] run return 0

# Soul particles at cat departure
execute at @s run particle soul ~ ~0.3 ~ 0.2 0.3 0.2 0.05 10

# Teleport cat to creeper
execute at @e[tag=bl.warp_target,limit=1] run tp @s ~ ~ ~

# Soul particles at arrival
execute at @s run particle soul ~ ~0.3 ~ 0.2 0.3 0.2 0.05 10

# Deal 7 damage to creeper (3 hits = 21 > 20 HP = dead)
damage @e[tag=bl.warp_target,limit=1] 7 minecraft:mob_attack by @s

# Cat hiss + soul escape sound
execute at @s run playsound minecraft:entity.cat.hiss player @a ~ ~ ~ 0.8 1.5
execute at @s run playsound minecraft:particle.soul_escape player @a ~ ~ ~ 0.6 1.2

# Creeper safety: freeze creeper for 3s, knock it up, teleport cat to owner
effect give @e[tag=bl.warp_target,limit=1] slowness 2 127 true
data modify entity @e[tag=bl.warp_target,limit=1] Motion set value [0.0d,0.6d,0.0d]
execute on owner run tp @s @s
execute at @s run particle soul ~ ~0.3 ~ 0.2 0.3 0.2 0.03 6

# Cleanup
tag @e[tag=bl.warp_target] remove bl.warp_target
