# Eat Expedition Feast — Well-Fed only (no combat effect)
# Laborer ration: longer duration for laborer feeding
advancement revoke @s only evercraft:cooking/eat_ration_expedition

# Clear any existing cooking buffs first
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

# No player combat effect — rations are for laborer feeding

# Apply Well-Fed (+0.5 DR)
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Well-Fed",color:"yellow"},{text:" for 60s! ",color:"gray"},{text:"(Great for laborers)",color:"#AB47BC"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 42
function evercraft:cooking/buff/adjust_wellfed_bonus
