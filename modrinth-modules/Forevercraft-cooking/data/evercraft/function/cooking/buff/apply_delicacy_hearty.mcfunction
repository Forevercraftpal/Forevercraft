# Eat Delicacy Hearty Meal — Saturation II for 10s + Well-Fed
advancement revoke @s only evercraft:cooking/eat_delicacy_hearty

attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

effect give @s minecraft:saturation 10 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:saturation 20 1 true

attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Saturation II",color:"green"},{text:" for 10s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 25
function evercraft:cooking/buff/adjust_wellfed_bonus
