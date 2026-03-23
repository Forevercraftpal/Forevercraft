# Dual Swordsman — Whirlwind Passive Proc Check
# Run as @s at @s when ec.ds_whirl_cd reaches 0
# 1/8 chance to hit ALL mobs within 3 blocks (360 degrees)

# Reset timer (80 ticks = 4 seconds)
scoreboard players set @s ec.ds_whirl_cd 80

# Spirit tier: 1/4 chance instead of 1/8
execute if score @s ec.ds_tier matches 7 run function evercraft:dual_swordsman/whirlwind_roll_spirit
execute unless score @s ec.ds_tier matches 7 run function evercraft:dual_swordsman/whirlwind_roll_normal
