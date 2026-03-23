# Light Bow — UPLIFT (Rare)
# Gale Arrow: AoE Levitation III (2s) + knockback in 4-block radius
# @s = player

# Apply uplift effects at the hit entity's location
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/archer/overcharge/uplift_aoe
