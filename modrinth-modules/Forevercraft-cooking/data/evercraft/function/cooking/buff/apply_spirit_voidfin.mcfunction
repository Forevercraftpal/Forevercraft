# Eat Voidfin Steak — +2.0 DR attribute modifier for 10 min
advancement revoke @s only evercraft:cooking/eat_spirit_voidfin

# Clear any existing cooking buffs
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal
attribute @s minecraft:luck modifier remove evercraft:spirit_meal

# Apply Spirit DR modifier (+2.0 DR for 10 min via timer)
attribute @s minecraft:luck modifier add evercraft:spirit_meal 2.0 add_value
scoreboard players set @s ec.ck_wellfed 12000

# Also apply standard Well-Fed
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value

# Feedback
tellraw @s [{text:"[Spirit Cuisine] ",color:"#AB47BC"},{text:"+2.0 Dream Rate",color:"dark_purple","bold":true},{text:" for 10 min!",color:"gray"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.8 1.0
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.3 30
scoreboard players set @s ec.meal_ate 70
function evercraft:cooking/buff/adjust_wellfed_bonus
