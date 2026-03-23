# Beastlord — Cat Phantom Strike (per-cat)
# Cats warp to phantoms and instantly kill them
# No cooldown — fires every tick as long as phantoms exist nearby

# Verify this cat belongs to the beastlord player
execute on owner unless entity @s[tag=bl.owner] run return 0

# Find nearest phantom within 24 blocks of the cat
execute at @s as @e[type=minecraft:phantom,distance=..24,sort=nearest,limit=1] run tag @s add bl.warp_target

# No phantom? Exit
execute unless entity @e[tag=bl.warp_target] run return 0

# Soul particles at cat departure
execute at @s run particle soul ~ ~0.3 ~ 0.2 0.3 0.2 0.05 10

# Teleport cat to phantom
execute at @e[tag=bl.warp_target,limit=1] run tp @s ~ ~ ~

# Soul particles + flash at arrival
execute at @s run particle soul ~ ~0.5 ~ 0.3 0.5 0.3 0.05 15
execute at @s run particle end_rod ~ ~0.5 ~ 0.3 0.5 0.3 0.05 10

# Instant kill the phantom
kill @e[tag=bl.warp_target,limit=1]

# Cat hiss + dramatic soul escape
execute at @s run playsound minecraft:entity.cat.hiss player @a ~ ~ ~ 1.0 0.8
execute at @s run playsound minecraft:particle.soul_escape player @a ~ ~ ~ 0.8 1.0

# Cleanup
tag @e[tag=bl.warp_target] remove bl.warp_target
