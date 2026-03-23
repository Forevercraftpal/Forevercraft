# Power Shot - +2 bonus damage on arrows
# The damage bonus is already applied via the arrow, this just gives feedback
# Note: For actual damage, the bow should have Power enchant or we deal extra damage here

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/power_shot_trigger

# Deal 2 extra damage to the target (simulating +2 damage)
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 2 minecraft:arrow

# Visual/audio feedback
execute at @s run particle crit ~ ~1 ~ 0.3 0.3 0.3 0.1 8
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 1.3

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
