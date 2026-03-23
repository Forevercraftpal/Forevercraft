# Eat Fortune Gourmet Meal — +1.0 DR for 120s + Well-Fed
advancement revoke @s only evercraft:cooking/eat_fortune_gourmet

attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

attribute @s minecraft:luck modifier add evercraft:fortune_meal 1.0 add_value
scoreboard players set @s ec.ck_fortune 2400

attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 2400

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"+1.0 Dream Rate",color:"light_purple"},{text:" for 120s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 15
function evercraft:cooking/buff/adjust_wellfed_bonus
