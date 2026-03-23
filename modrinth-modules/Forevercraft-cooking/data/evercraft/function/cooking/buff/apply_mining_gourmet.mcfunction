# Eat Mining Gourmet Meal — Haste I + Night Vision for 120s + Well-Fed
advancement revoke @s only evercraft:cooking/eat_mining_gourmet

attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

effect give @s minecraft:haste 120 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:haste 240 0 true
effect give @s minecraft:night_vision 120 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:night_vision 240 0 true

attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 2400

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Haste I + Night Vision",color:"yellow"},{text:" for 120s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 9
function evercraft:cooking/buff/adjust_wellfed_bonus
