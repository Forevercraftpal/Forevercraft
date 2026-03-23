# Eat Combat Hearty Meal — Strength I for 60s + Well-Fed
advancement revoke @s only evercraft:cooking/eat_combat_hearty

# Clear any existing cooking buffs first
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

# Apply effects
effect give @s minecraft:strength 60 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:strength 120 0 true

# Apply Well-Fed (+0.5 DR)
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Strength I",color:"red"},{text:" for 60s! ",color:"gray"},{text:"(+0.5 DR Well-Fed)",color:"gold"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 1
function evercraft:cooking/buff/adjust_wellfed_bonus
