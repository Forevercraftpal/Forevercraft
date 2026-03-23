# Tamable Fox — Try Tame
# Runs as the wild fox being fed. @p = the feeding player.

# Cancel vanilla breeding — wild foxes can't breed, only tamed ones can
data modify entity @s InLove set value 0
data modify entity @s Age set value 0

# Increment taming progress
scoreboard players add @s fox.tame_prog 1

# Distinct visual feedback — golden sparkles + note sound (NOT hearts, those are vanilla breeding)
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0 5
execute at @s run particle minecraft:composter ~ ~0.5 ~ 0.2 0.3 0.2 0 3
playsound minecraft:entity.fox.eat master @p ~ ~ ~ 1.0 1.2

# Progress message
execute if score @s fox.tame_prog matches 1 run tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Fox","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"The fox seems curious...","color":"gray","italic":true}]
execute if score @s fox.tame_prog matches 2 run tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Fox","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"The fox is warming up to you...","color":"gray","italic":true}]
execute if score @s fox.tame_prog matches 3 run tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Fox","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"The fox is starting to trust you...","color":"yellow","italic":true}]
execute if score @s fox.tame_prog matches 4 run tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Fox","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"The fox is almost tamed!","color":"yellow","italic":true}]

# Feed 5+: guaranteed tame
execute if score @s fox.tame_prog matches 5.. run function evercraft:foxes/tame
execute if score @s fox.tame_prog matches 5.. run return 0

# Feeds 3-4: 33% chance to tame
execute if score @s fox.tame_prog matches 3..4 store result score #fox_rand fox.owner run random value 1..3
execute if score @s fox.tame_prog matches 3..4 if score #fox_rand fox.owner matches 1 run function evercraft:foxes/tame
