# The Deepcrawler — Stalactite Drop
# 2-3 stalactites fall from ceiling at random player positions
# Telegraph with dripping particles 30 ticks before (handled via scheduled function)

# Pick 2 random participants and mark them (exclude already-tagged to avoid double-targeting)
tag @a[tag=ec.rd_participant,sort=random,limit=1] add ec.rd_dc_stala_target
tag @a[tag=ec.rd_participant,tag=!ec.rd_dc_stala_target,sort=random,limit=1] add ec.rd_dc_stala_target

# Telegraph: dripping particles at target positions
execute as @a[tag=ec.rd_dc_stala_target] at @s run particle minecraft:dripping_dripstone_water ~ ~8 ~ 1 0 1 0 10
execute as @a[tag=ec.rd_dc_stala_target] at @s run playsound minecraft:block.pointed_dripstone.drip_lava master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.5

# Schedule the actual fall 30 ticks later
schedule function evercraft:raids/boss/deepcrawler/abilities/stalactite_fall 30t
