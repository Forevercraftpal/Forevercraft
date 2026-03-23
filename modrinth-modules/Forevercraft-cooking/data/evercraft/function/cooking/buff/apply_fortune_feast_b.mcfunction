# Eat Fortune Feast Meal (B) — +2.0 DR for 210s + Well-Fed
advancement revoke @s only evercraft:cooking/eat_fortune_feast_b

attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

attribute @s minecraft:luck modifier add evercraft:fortune_meal 2.0 add_value
scoreboard players set @s ec.ck_fortune 4200

attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 4200

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"+2.0 Dream Rate",color:"light_purple"},{text:" for 210s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 18
function evercraft:cooking/buff/adjust_wellfed_bonus
