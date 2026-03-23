# Flame Arrows - Sets target on fire when hit by arrow
# Replaces Flame enchantment

advancement revoke @s only evercraft:artifacts/abilities/ranged/flame_arrows_trigger

# Set target on fire for 5 seconds (100 ticks)
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run data merge entity @s {Fire:100s}

# Visual feedback
execute at @s run particle flame ~ ~0.5 ~ 0.3 0.3 0.3 0.05 10
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.4 1.5
