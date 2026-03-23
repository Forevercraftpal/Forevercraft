# Hunting Bow — THORN (Common)
# Barbed Arrow: target bleeds (Wither I for 4 seconds)
# @s = player

# Apply bleed to the just-hit entity
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s wither 80 0 false

# Feedback
playsound minecraft:entity.player.attack.crit master @s ~ ~ ~ 1 0.8
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run particle damage_indicator ~ ~0.5 ~ 0.3 0.5 0.3 0.1 10
tellraw @s [{"text":"[Hunting Bow] ","color":"white"},{"text":"Thorn ","color":"dark_red","bold":true},{"text":"— Target bleeds!","color":"red"}]
