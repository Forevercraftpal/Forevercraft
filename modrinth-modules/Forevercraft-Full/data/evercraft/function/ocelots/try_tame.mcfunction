# Tamable Ocelot — Try Tame
# Runs as the wild ocelot being fed. @p = the feeding player.

# Cancel vanilla trust — we handle taming ourselves
data modify entity @s Age set value 0

# Increment taming progress
scoreboard players add @s ocelot.tame_prog 1

# Distinct visual feedback — emerald sparkles + purr sound
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0 5
execute at @s run particle minecraft:composter ~ ~0.5 ~ 0.2 0.3 0.2 0 3
playsound minecraft:entity.cat.purreow master @p ~ ~ ~ 1.0 1.4

# Progress message
execute if score @s ocelot.tame_prog matches 1 run tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Ocelot","color":"#C4A000"},{"text":"] ","color":"dark_gray"},{"text":"The ocelot watches you cautiously...","color":"gray","italic":true}]
execute if score @s ocelot.tame_prog matches 2 run tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Ocelot","color":"#C4A000"},{"text":"] ","color":"dark_gray"},{"text":"The ocelot creeps a little closer...","color":"gray","italic":true}]
execute if score @s ocelot.tame_prog matches 3 run tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Ocelot","color":"#C4A000"},{"text":"] ","color":"dark_gray"},{"text":"The ocelot is starting to trust you...","color":"yellow","italic":true}]
execute if score @s ocelot.tame_prog matches 4 run tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Ocelot","color":"#C4A000"},{"text":"] ","color":"dark_gray"},{"text":"The ocelot is almost tamed!","color":"yellow","italic":true}]

# Feed 5+: guaranteed tame
execute if score @s ocelot.tame_prog matches 5.. run function evercraft:ocelots/tame
execute if score @s ocelot.tame_prog matches 5.. run return 0

# Feeds 3-4: 33% chance to tame
execute if score @s ocelot.tame_prog matches 3..4 store result score #ocelot_rand ocelot.owner run random value 1..3
execute if score @s ocelot.tame_prog matches 3..4 if score #ocelot_rand ocelot.owner matches 1 run function evercraft:ocelots/tame
