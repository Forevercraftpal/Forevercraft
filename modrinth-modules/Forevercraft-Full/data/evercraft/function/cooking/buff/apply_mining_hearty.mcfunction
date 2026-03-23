# Eat Mining Hearty Meal — Haste I for 60s + Well-Fed
advancement revoke @s only evercraft:cooking/eat_mining_hearty

attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

effect give @s minecraft:haste 60 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:haste 120 0 true

attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Haste I",color:"yellow"},{text:" for 60s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 7
function evercraft:cooking/buff/adjust_wellfed_bonus
