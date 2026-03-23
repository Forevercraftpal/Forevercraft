# Happy Ghast Taming — Try Tame
# @s = happy ghast being fed. @p = the feeding player.

# Skip if already tamed
execute if entity @s[tag=ec.ghast_tamed] run return fail

# Increment taming progress
scoreboard players add @s ghast.tame_prog 1

# Visual feedback
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 5
execute at @s run particle minecraft:composter ~ ~1 ~ 0.3 0.3 0.3 0 3
playsound minecraft:entity.happy_ghast.ambient master @p ~ ~ ~ 1.0 1.2

# Progress messages
execute if score @s ghast.tame_prog matches 1 run tellraw @p [{text:"[",color:"dark_gray"},{text:"Happy Ghast",color:"#FF69B4"},{text:"] ",color:"dark_gray"},{text:"The ghast seems curious...",color:"gray",italic:true}]
execute if score @s ghast.tame_prog matches 2 run tellraw @p [{text:"[",color:"dark_gray"},{text:"Happy Ghast",color:"#FF69B4"},{text:"] ",color:"dark_gray"},{text:"The ghast is warming up to you...",color:"gray",italic:true}]
execute if score @s ghast.tame_prog matches 3 run tellraw @p [{text:"[",color:"dark_gray"},{text:"Happy Ghast",color:"#FF69B4"},{text:"] ",color:"dark_gray"},{text:"The ghast is starting to trust you...",color:"yellow",italic:true}]
execute if score @s ghast.tame_prog matches 4 run tellraw @p [{text:"[",color:"dark_gray"},{text:"Happy Ghast",color:"#FF69B4"},{text:"] ",color:"dark_gray"},{text:"The ghast is almost tamed!",color:"yellow",italic:true}]

# Feed 5+: guaranteed tame
execute if score @s ghast.tame_prog matches 5.. run function evercraft:buddy/happy_ghast/tame
execute if score @s ghast.tame_prog matches 5.. run return 0

# Feeds 3-4: 33% chance to tame
execute if score @s ghast.tame_prog matches 3..4 store result score #ghast_rand ghast.owner run random value 1..3
execute if score @s ghast.tame_prog matches 3..4 if score #ghast_rand ghast.owner matches 1 run function evercraft:buddy/happy_ghast/tame
