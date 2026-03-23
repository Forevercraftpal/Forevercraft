# Blood Moon — Tick (1s)
# Red particles, sync modifiers, ambient effects

# Sync modifiers for new joiners only (OPT: was remove+add for ALL players every 1s)
execute as @a[tag=!ec.joined] run attribute @s luck modifier remove ec_cal_blood
execute as @a[tag=!ec.joined] run attribute @s luck modifier add ec_cal_blood 1.0 add_value

# Red particles around players
execute as @a at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.5} ~ ~2.5 ~ 5 3 5 0.1 3

# Ambient red particles higher up (sky tint effect)
execute as @a at @s run particle minecraft:dust{color:[0.8,0.1,0.1],scale:2.0} ~ ~8 ~ 10 5 10 0.05 5

# Eerie ambient sound every ~15 seconds
scoreboard players add #cal_blood_fx ec.var 1
execute if score #cal_blood_fx ec.var matches 15.. run scoreboard players set #cal_blood_fx ec.var 0
execute if score #cal_blood_fx ec.var matches 0 as @a at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.3 0.3

# Accelerate patron cooldown (extra decrement = 2x faster spawns)
execute if score #global patron.cooldown matches 1.. run scoreboard players remove #global patron.cooldown 1
