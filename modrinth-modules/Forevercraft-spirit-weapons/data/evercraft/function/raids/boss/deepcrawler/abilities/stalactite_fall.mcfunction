# The Deepcrawler — Stalactite Fall Impact
# Deals damage at telegraphed positions

# Skip if raid no longer active or wrong boss — but always clean up tags
execute unless score #rd_active ec.var matches 1 run tag @a[tag=ec.rd_dc_stala_target] remove ec.rd_dc_stala_target
execute unless score #rd_active ec.var matches 1 run return 0
execute unless score #rd_boss_id ec.var matches 11 run tag @a[tag=ec.rd_dc_stala_target] remove ec.rd_dc_stala_target
execute unless score #rd_boss_id ec.var matches 11 run return 0

# Damage players at marked positions (3-block radius, 6 damage)
execute as @a[tag=ec.rd_dc_stala_target] at @s as @a[tag=ec.rd_participant,distance=..3] run damage @s 6 minecraft:falling_stalactite

# VFX: impact
execute as @a[tag=ec.rd_dc_stala_target] at @s run particle minecraft:dust{color:[0.6,0.5,0.4],scale:2.0} ~ ~0.5 ~ 2 0.5 2 0 30
execute as @a[tag=ec.rd_dc_stala_target] at @s run particle minecraft:explosion ~ ~0.5 ~ 1 0 1 0.1 3
execute as @a[tag=ec.rd_dc_stala_target] at @s run playsound minecraft:block.pointed_dripstone.land master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5

# Clean up target tags
tag @a[tag=ec.rd_dc_stala_target] remove ec.rd_dc_stala_target
