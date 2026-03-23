# Eat Eel Lightning Roll — Speed III + Jump III + Slow Fall for 5 min
advancement revoke @s only evercraft:cooking/eat_spirit_eel

# Clear any existing cooking buffs
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

# Apply effects
effect give @s minecraft:speed 300 2 true
effect give @s minecraft:jump_boost 300 2 true
effect give @s minecraft:slow_falling 300 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:speed 600 2 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:jump_boost 600 2 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:slow_falling 600 0 true

# Apply Well-Fed (+0.5 DR)
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

# Feedback
tellraw @s [{text:"[Spirit Cuisine] ",color:"#AB47BC"},{text:"Speed III + Jump III + Slow Fall",color:"#4FC3F7"},{text:" for 5 min!",color:"gray"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.8 1.0
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.3 30
scoreboard players set @s ec.meal_ate 72
function evercraft:cooking/buff/adjust_wellfed_bonus
