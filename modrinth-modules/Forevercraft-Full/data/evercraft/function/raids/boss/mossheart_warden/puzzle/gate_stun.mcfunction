# The Mossheart Warden — Gate Stun
# Boss charged into a gate — stunned for 2 seconds

execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run effect give @s slowness 2 4 true
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run effect give @s weakness 2 4 true

# VFX
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run particle minecraft:crit ~ ~1 ~ 1 1 1 0.3 20
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.iron_golem.damage master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.6

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"The Warden is stunned by the gate!",color:"green",bold:true}]
