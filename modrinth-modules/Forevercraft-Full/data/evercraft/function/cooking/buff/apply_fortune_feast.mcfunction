# Eat Fortune Feast Meal — +2.0 DR for 180s + Well-Fed
advancement revoke @s only evercraft:cooking/eat_fortune_feast

attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

attribute @s minecraft:luck modifier add evercraft:fortune_meal 2.0 add_value
scoreboard players set @s ec.ck_fortune 3600

attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 3600

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"+2.0 Dream Rate",color:"light_purple"},{text:" for 180s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 17
function evercraft:cooking/buff/adjust_wellfed_bonus
