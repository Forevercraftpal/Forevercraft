# Knight Mode — Silent Deactivate (player swapped away from knight sword)
# Clears fencer bonuses without notification (unlike fencer_off which is for shield toggle)

attribute @s minecraft:attack_damage modifier remove evercraft:fencer_damage
attribute @s minecraft:entity_interaction_range modifier remove evercraft:fencer_reach
scoreboard players set @s ec.kt_fencer 0
# OPT: tag removal moved here from tick (was separate @a scan)
tag @s remove ec.kt_active
