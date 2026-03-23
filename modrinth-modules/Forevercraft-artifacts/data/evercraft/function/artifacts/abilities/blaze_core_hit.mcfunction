# Blaze Core — Inferno Mastery (+3 fire damage on player hit)
# Generic trigger — checks for blaze_core in inventory before applying

# Revoke for re-trigger
advancement revoke @s only evercraft:artifacts/abilities/blaze_core_hit_trigger

# Early exit if player doesn't have blaze core
execute unless items entity @s container.* *[custom_data~{artifact:"blaze_core"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"blaze_core"}] run return 0

# Apply +3 fire damage to the mob the player just hit
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 3 minecraft:on_fire

# Subtle fire burst on target
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle flame ~ ~0.5 ~ 0.3 0.3 0.3 0.05 8
