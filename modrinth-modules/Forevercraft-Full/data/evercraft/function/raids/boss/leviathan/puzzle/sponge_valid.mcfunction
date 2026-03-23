# The Leviathan — Valid Sponge Slot (creates permanent air pocket)
# Runs as the sponge slot interaction entity

# Tag for air pocket effects
tag @s add ec.rd_lv_sponge_valid_placed

# Increment valid placements
scoreboard players add #rd_lv_sponges ec.var 1

# VFX: sponge absorbs water
particle minecraft:bubble_pop ~ ~1 ~ 0.8 0.8 0.8 0.1 30
particle minecraft:splash ~ ~0.5 ~ 1 1 1 0.1 20
playsound minecraft:block.wet_sponge.place master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8

# Announce
execute if score #rd_lv_sponges ec.var matches 1 run tellraw @a[tag=ec.rd_participant] [{text:"  ⬡ ",color:"gold"},{text:"Air pocket created! ",color:"yellow"},{text:"(1/4 valid slots)",color:"gray"}]
execute if score #rd_lv_sponges ec.var matches 2 run tellraw @a[tag=ec.rd_participant] [{text:"  ⬡ ",color:"gold"},{text:"Air pocket created! ",color:"yellow"},{text:"(2/4 valid slots)",color:"gray"}]
execute if score #rd_lv_sponges ec.var matches 3 run tellraw @a[tag=ec.rd_participant] [{text:"  ⬡ ",color:"gold"},{text:"Air pocket created! ",color:"yellow"},{text:"(3/4 valid slots)",color:"gray"}]

# All 4 valid slots placed — weaken boss
execute if score #rd_lv_sponges ec.var matches 4 run tellraw @a[tag=ec.rd_participant] [{text:"  ⬡ ",color:"gold"},{text:"ALL air pockets active! ",color:"aqua",bold:true},{text:"The Leviathan weakens!",color:"yellow"}]
execute if score #rd_lv_sponges ec.var matches 4 as @e[type=guardian,tag=ec.rd_boss,limit=1] run attribute @s armor modifier remove evercraft:rd_boss/base
execute if score #rd_lv_sponges ec.var matches 4 as @e[type=guardian,tag=ec.rd_boss,limit=1] run effect give @s glowing 30 0 true
execute if score #rd_lv_sponges ec.var matches 4 run playsound minecraft:entity.elder_guardian.hurt master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.5
