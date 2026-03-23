# Eat Wayfarer Hearty Meal (B) — Speed I for 75s + Well-Fed
advancement revoke @s only evercraft:cooking/eat_wayfarer_hearty_b

attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

effect give @s minecraft:speed 75 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:speed 150 0 true

attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1500

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Speed I",color:"aqua"},{text:" for 75s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 20
function evercraft:cooking/buff/adjust_wellfed_bonus
