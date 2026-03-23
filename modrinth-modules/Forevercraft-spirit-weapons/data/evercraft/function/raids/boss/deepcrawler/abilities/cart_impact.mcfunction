# The Deepcrawler — Cart Impact
# Deals heavy damage to targeted player and nearby allies

# Skip if raid no longer active or wrong boss — but always clean up tags
execute unless score #rd_active ec.var matches 1 run tag @a[tag=ec.rd_dc_cart_target] remove ec.rd_dc_cart_target
execute unless score #rd_active ec.var matches 1 run return 0
execute unless score #rd_boss_id ec.var matches 11 run tag @a[tag=ec.rd_dc_cart_target] remove ec.rd_dc_cart_target
execute unless score #rd_boss_id ec.var matches 11 run return 0

# Cart collision: 10 damage + heavy knockback to target and nearby players
execute as @a[tag=ec.rd_dc_cart_target,limit=1] at @s as @a[tag=ec.rd_participant,distance=..3] run damage @s 10 minecraft:mob_attack
execute as @a[tag=ec.rd_dc_cart_target,limit=1] at @s run effect give @a[tag=ec.rd_participant,distance=..3] slowness 1 3

# VFX: cart crash
execute as @a[tag=ec.rd_dc_cart_target,limit=1] at @s run particle minecraft:explosion ~ ~0.5 ~ 1.5 0.5 1.5 0.3 5
execute as @a[tag=ec.rd_dc_cart_target,limit=1] at @s run particle minecraft:dust{color:[0.6,0.4,0.2],scale:2.0} ~ ~0.5 ~ 2 0.5 2 0 25
execute as @a[tag=ec.rd_dc_cart_target,limit=1] at @s run playsound minecraft:entity.minecart.riding master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3
execute as @a[tag=ec.rd_dc_cart_target,limit=1] at @s run playsound minecraft:block.anvil.land master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5

# Clean up
tag @a[tag=ec.rd_dc_cart_target] remove ec.rd_dc_cart_target
