# Eat Delicacy Gourmet Meal — Absorption II + Regeneration II for 120s + Well-Fed
advancement revoke @s only evercraft:cooking/eat_delicacy_gourmet

attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

effect give @s minecraft:absorption 120 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:absorption 240 1 true
effect give @s minecraft:regeneration 120 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:regeneration 240 1 true

attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 2400

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Absorption II + Regen II",color:"green"},{text:" for 120s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 26
function evercraft:cooking/buff/adjust_wellfed_bonus
