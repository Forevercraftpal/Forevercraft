# Eat Delicacy Feast Meal — Absorption IV + Regen III for 180s + Instant Health II + Well-Fed
advancement revoke @s only evercraft:cooking/eat_delicacy_feast

attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

effect give @s minecraft:absorption 180 3 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:absorption 360 3 true
effect give @s minecraft:regeneration 180 2 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:regeneration 360 2 true
effect give @s minecraft:instant_health 1 1

attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 3600

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Absorption IV + Regen III + Heal",color:"green"},{text:" for 180s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 27
function evercraft:cooking/buff/adjust_wellfed_bonus
