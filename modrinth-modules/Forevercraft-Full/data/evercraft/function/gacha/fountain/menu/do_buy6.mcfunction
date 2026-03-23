# Exchange buy: Random Title for 100 Dreamdust
# Runs as @s = player
execute unless score @s ec.dreamdust matches 100.. run return run tellraw @s [{text:"\u25C6 ",color:"gray"},{text:"Not enough Dreamdust! Need 100.",color:"red"}]
scoreboard players remove @s ec.dreamdust 100

# Roll random title (19-36 range, function subtracts 18 to get ID 1-18)
execute store result score @s adv.temp run random value 19..36
function evercraft:advantage/cosmetics/crate_unlock_title

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.3
