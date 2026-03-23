# Mechanical Shortbow — STEADY (Common)
# Heavy Arrow: 2x damage (Instant Damage I) + Slowness II for 3 seconds
# @s = player

# Apply heavy hit effects to the just-hit entity
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s slowness 60 1 false
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s instant_damage 1 0 false

# Feedback
playsound minecraft:entity.iron_golem.attack master @s ~ ~ ~ 1 0.6
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run particle crit ~ ~0.5 ~ 0.3 0.5 0.3 0.5 15
tellraw @s [{"text":"[Mechanical Shortbow] ","color":"white"},{"text":"Steady ","color":"gray","bold":true},{"text":"— Heavy impact!","color":"white"}]
