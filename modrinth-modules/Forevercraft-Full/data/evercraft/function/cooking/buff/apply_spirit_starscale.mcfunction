# Eat Starscale Soup — Strength II + Speed II + Haste II + Resistance I for 5 min
advancement revoke @s only evercraft:cooking/eat_spirit_starscale

# Clear any existing cooking buffs
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

# Apply effects
effect give @s minecraft:strength 300 1 true
effect give @s minecraft:speed 300 1 true
effect give @s minecraft:haste 300 1 true
effect give @s minecraft:resistance 300 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:strength 600 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:speed 600 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:haste 600 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:resistance 600 0 true

# Apply Well-Fed (+0.5 DR)
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

# Feedback
tellraw @s [{text:"[Spirit Cuisine] ",color:"#AB47BC"},{text:"Str II + Spd II + Haste II + Res I",color:"#FFD700"},{text:" for 5 min!",color:"gray"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.8 1.0
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.3 30
scoreboard players set @s ec.meal_ate 71
function evercraft:cooking/buff/adjust_wellfed_bonus
