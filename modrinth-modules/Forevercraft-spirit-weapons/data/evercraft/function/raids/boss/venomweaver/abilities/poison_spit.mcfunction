# The Venomweaver — Poison Spit
# Targets a random participant with poison damage + Poison I

# Tag a random participant
tag @a[tag=ec.rd_participant,sort=random,limit=1] add ec.rd_vw_target

# Damage + poison effect
execute at @a[tag=ec.rd_vw_target,limit=1] run damage @s 3 minecraft:mob_attack by @e[type=cave_spider,tag=ec.rd_boss,limit=1]
execute at @a[tag=ec.rd_vw_target,limit=1] run effect give @s poison 4 0

# VFX: poison spit from boss to target
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:item_slime ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute at @a[tag=ec.rd_vw_target,limit=1] run particle minecraft:item_slime ~ ~1 ~ 0.5 0.5 0.5 0.1 15
execute at @a[tag=ec.rd_vw_target,limit=1] run playsound minecraft:entity.llama.spit master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.5

# Clean up target tag
tag @a[tag=ec.rd_vw_target] remove ec.rd_vw_target
