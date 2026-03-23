# Eat Wayfarer Feast Meal — Speed II + Jump Boost I for 180s + Well-Fed
advancement revoke @s only evercraft:cooking/eat_wayfarer_feast

attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

effect give @s minecraft:speed 180 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:speed 360 1 true
effect give @s minecraft:jump_boost 180 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:jump_boost 360 0 true

attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 3600

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Speed II + Jump Boost I",color:"aqua"},{text:" for 180s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 23
function evercraft:cooking/buff/adjust_wellfed_bonus
