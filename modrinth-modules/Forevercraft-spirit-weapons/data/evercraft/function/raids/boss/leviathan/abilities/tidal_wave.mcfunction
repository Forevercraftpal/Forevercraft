# The Leviathan — Tidal Wave
# Knockback + 4 damage to all participants (simulates wave sweeping across room)

# Warning
playsound minecraft:entity.generic.splash master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.5
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"A massive wave surges through the chamber!",color:"aqua"}]

# Damage + knockback to all participants
execute as @a[tag=ec.rd_participant] at @s run damage @s 4 minecraft:drown by @e[type=guardian,tag=ec.rd_boss,limit=1]

# Heavy knockback (push away from boss)
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..25] at @s facing entity @e[type=guardian,tag=ec.rd_boss,limit=1] feet positioned ^ ^ ^0 run tp @s ~ ~ ~ ~ ~
execute as @a[tag=ec.rd_participant] at @s run tp @s ~ ~ ~ ~ ~

# Wave VFX
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run particle minecraft:splash ~ ~1 ~ 10 1 10 0.5 100
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run particle minecraft:bubble ~ ~1 ~ 8 1 8 0.3 50
