# Grand Illusionist — Spawn Trap Totem (Phase 2)
# Random totem type near a random player position

# Cap at 6 totems
execute store result score #rd_temp ec.var if entity @e[tag=ec.rd_gi_totem]
execute if score #rd_temp ec.var matches 6.. run return 0

# Pick random type (1-4)
execute store result score #rd_temp ec.var run random value 1..4

# Spawn at random player position
execute if score #rd_temp ec.var matches 1 as @a[tag=ec.rd_participant,limit=1,sort=random] at @s run summon armor_stand ~ ~ ~ {Tags:["ec.rd_gi_totem","ec.rd_gi_totem_fire","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:{text:"Fire Totem",color:"red"},CustomNameVisible:1b}
execute if score #rd_temp ec.var matches 2 as @a[tag=ec.rd_participant,limit=1,sort=random] at @s run summon armor_stand ~ ~ ~ {Tags:["ec.rd_gi_totem","ec.rd_gi_totem_frost","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:{text:"Frost Totem",color:"aqua"},CustomNameVisible:1b}
execute if score #rd_temp ec.var matches 3 as @a[tag=ec.rd_participant,limit=1,sort=random] at @s run summon armor_stand ~ ~ ~ {Tags:["ec.rd_gi_totem","ec.rd_gi_totem_fang","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:{text:"Fang Totem",color:"dark_red"},CustomNameVisible:1b}
execute if score #rd_temp ec.var matches 4 as @a[tag=ec.rd_participant,limit=1,sort=random] at @s run summon armor_stand ~ ~ ~ {Tags:["ec.rd_gi_totem","ec.rd_gi_totem_poison","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:{text:"Poison Totem",color:"dark_green"},CustomNameVisible:1b}

# VFX
execute as @e[tag=ec.rd_gi_totem,limit=1,sort=nearest] at @s run playsound minecraft:block.enchantment_table.use hostile @a[tag=ec.rd_participant,distance=..15] ~ ~ ~ 0.6 0.8
