# Hollow Sovereign — Spawn Sculk Tendril
# Spawns an armor stand tendril marker at a random position near the boss

# Spawn at random offset from boss
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon armor_stand ~-3 ~ ~2 {Tags:["ec.rd_tendril","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:{text:"Sculk Tendril",color:"dark_aqua"},CustomNameVisible:1b}
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon armor_stand ~3 ~ ~-2 {Tags:["ec.rd_tendril","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:{text:"Sculk Tendril",color:"dark_aqua"},CustomNameVisible:1b}

# Spawn VFX at tendril locations
execute as @e[tag=ec.rd_tendril] at @s run particle minecraft:sculk_soul ~ ~0.5 ~ 0.5 0.5 0.5 0.05 15
execute as @e[tag=ec.rd_tendril] at @s run playsound minecraft:block.sculk.spread hostile @a[tag=ec.rd_participant,distance=..20] ~ ~ ~ 0.8 0.5

# Cap at 8 tendrils max
execute store result score #rd_temp ec.var if entity @e[tag=ec.rd_tendril]
execute if score #rd_temp ec.var matches 9.. as @e[tag=ec.rd_tendril,limit=1,sort=random] run kill @s

# Announcement
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_aqua"},{text:"Raid",color:"aqua",bold:true},{text:"] ",color:"dark_aqua"},{text:"Sculk tendrils erupt from the ground!","color":"dark_aqua","italic":true}]
