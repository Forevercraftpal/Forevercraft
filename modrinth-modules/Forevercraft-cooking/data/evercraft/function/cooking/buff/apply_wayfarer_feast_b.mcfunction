# Eat Wayfarer Feast Meal (B) — Speed II + Jump Boost I for 210s + Well-Fed
advancement revoke @s only evercraft:cooking/eat_wayfarer_feast_b

attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

effect give @s minecraft:speed 210 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:speed 420 1 true
effect give @s minecraft:jump_boost 210 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:jump_boost 420 0 true

attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 4200

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Speed II + Jump Boost I",color:"aqua"},{text:" for 210s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 24
function evercraft:cooking/buff/adjust_wellfed_bonus
