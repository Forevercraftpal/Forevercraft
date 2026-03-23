# Nocturnal Bow — WHISPER (Mythical)
# Phantom Arrow: Blindness 3s + Slowness III 4s + smoke cloud on target
# Archer gains Invisibility 3s
# @s = player

# Apply debuffs to hit entity
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s blindness 60 0 false
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s slowness 80 2 false

# Instant Health V — devastating to undead (heals living mobs)
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s instant_health 1 4 false

# Smoke cloud at target location
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run particle large_smoke ~ ~0.5 ~ 2 1 2 0.02 40
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run particle campfire_cosy_smoke ~ ~0.5 ~ 1 0.5 1 0.01 15

# Archer goes invisible
effect give @s invisibility 60 0 true

# Sound effects
playsound minecraft:entity.phantom.flap master @s ~ ~ ~ 1 0.5
playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 0.5 1.5

# Feedback
tellraw @s [{"text":"[Nocturnal Bow] ","color":"gold"},{"text":"Whisper ","color":"dark_gray","bold":true},{"text":"— Vanished into shadow!","color":"gray"}]
