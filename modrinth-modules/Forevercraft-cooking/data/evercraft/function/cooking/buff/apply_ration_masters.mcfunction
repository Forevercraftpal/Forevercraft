# Eat Master's Provisions — Well-Fed only (no combat effect)
# Laborer ration: artisan tier, longest duration for laborer feeding
advancement revoke @s only evercraft:cooking/eat_ration_masters

# Clear any existing cooking buffs first
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

# No player combat effect — rations are for laborer feeding
# Saturation II as a small bonus for the artisan tier
effect give @s minecraft:saturation 30 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:saturation 60 1 true

# Apply Well-Fed (+0.5 DR)
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Saturation II",color:"#FFD700"},{text:" for 30s! ",color:"gray"},{text:"(Artisan ration)",color:"#AB47BC"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
scoreboard players set @s ec.meal_ate 43
function evercraft:cooking/buff/adjust_wellfed_bonus
