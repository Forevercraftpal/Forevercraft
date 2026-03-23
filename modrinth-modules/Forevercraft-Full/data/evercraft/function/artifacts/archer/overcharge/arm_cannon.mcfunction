# Power Bow — DEADSHOT (Ornate)
# Piercing Shot: 3x damage to hit target, ignores armor (magic damage via Instant Damage)
# @s = player

# Apply piercing damage (Instant Damage II = heavy magic damage, bypasses armor)
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s instant_damage 1 1 false

# Critical hit particles
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run particle crit ~ ~0.5 ~ 0.2 0.5 0.2 0.8 25
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run particle enchanted_hit ~ ~0.5 ~ 0.3 0.5 0.3 0.5 15

# Feedback
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0.5
playsound minecraft:item.trident.hit master @s ~ ~ ~ 1 1.5
tellraw @s [{"text":"[Power Bow] ","color":"dark_purple"},{"text":"Deadshot ","color":"red","bold":true},{"text":"— Piercing strike!","color":"yellow"}]
