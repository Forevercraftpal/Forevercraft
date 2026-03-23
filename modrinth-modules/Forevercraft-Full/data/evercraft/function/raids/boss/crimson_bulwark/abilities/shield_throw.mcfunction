# The Crimson Bulwark — Shield Throw
# Ranged attack at random target: 12 damage + heavy knockback
# Players behind pillars are safe (within 2 blocks of a pillar)

# Tag random target
tag @a[tag=ec.rd_participant,sort=random,limit=1] add ec.rd_cb_target

# Damage — only if NOT behind a pillar
execute as @a[tag=ec.rd_cb_target,limit=1] at @s unless entity @e[tag=ec.rd_cb_pillar,distance=..2] run damage @s 12 minecraft:mob_attack by @e[type=vindicator,tag=ec.rd_boss,limit=1]
execute as @a[tag=ec.rd_cb_target,limit=1] at @s unless entity @e[tag=ec.rd_cb_pillar,distance=..2] run effect give @s slowness 1 2

# If behind a pillar, damage the pillar instead
execute as @a[tag=ec.rd_cb_target,limit=1] at @s if entity @e[tag=ec.rd_cb_pillar,distance=..2] run function evercraft:raids/boss/crimson_bulwark/abilities/pillar_hit

# VFX: shield projectile
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.8,0.1,0.1],scale:1.5} ^ ^1 ^2 0.3 0.3 0.3 0 10
execute at @a[tag=ec.rd_cb_target,limit=1] run particle minecraft:dust{color:[0.8,0.1,0.1],scale:2.0} ~ ~1 ~ 1 0.5 1 0 15
execute at @a[tag=ec.rd_cb_target,limit=1] run playsound minecraft:item.shield.block master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.6

# Clean up
tag @a[tag=ec.rd_cb_target] remove ec.rd_cb_target
