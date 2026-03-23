# The Leviathan — Laser Beam Impact (2 seconds after lock-on)
# Deals 15 damage to the targeted player if still in line of sight

# Skip if raid no longer active or wrong boss — but always clean up tags
execute unless score #rd_active ec.var matches 1 run tag @a[tag=ec.rd_lv_target] remove ec.rd_lv_target
execute unless score #rd_active ec.var matches 1 run return 0
execute unless score #rd_boss_id ec.var matches 8 run tag @a[tag=ec.rd_lv_target] remove ec.rd_lv_target
execute unless score #rd_boss_id ec.var matches 8 run return 0

# Check if target is within 20 blocks of boss (still in range)
execute as @a[tag=ec.rd_lv_target,limit=1] at @s run function evercraft:raids/boss/leviathan/abilities/laser_hit

# Clear target tag
tag @a[tag=ec.rd_lv_target] remove ec.rd_lv_target
