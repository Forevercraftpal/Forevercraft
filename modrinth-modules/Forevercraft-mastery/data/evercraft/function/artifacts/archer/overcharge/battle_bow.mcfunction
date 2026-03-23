# Battle Bow — FLICKER (Uncommon)
# Blink Arrow: teleport to where the arrow hit
# @s = player

# Find the just-hit entity and teleport player to it
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run tp @p ~ ~ ~

# Particles at departure
execute at @s run particle portal ~ ~1 ~ 0.3 0.5 0.3 0.5 30
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.2

# Particles at arrival (delayed visual — runs after TP)
execute at @s run particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.5 30

# Feedback
tellraw @s [{"text":"[Battle Bow] ","color":"blue"},{"text":"Flicker ","color":"aqua","bold":true},{"text":"— Blink strike!","color":"dark_aqua"}]
