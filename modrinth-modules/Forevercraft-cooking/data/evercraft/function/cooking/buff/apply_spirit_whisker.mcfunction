# Eat Whisker Broth — Regen IV + Absorption IV + Resistance II for 3 min
advancement revoke @s only evercraft:cooking/eat_spirit_whisker

# Clear any existing cooking buffs
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

# Apply effects
effect give @s minecraft:regeneration 180 3 true
effect give @s minecraft:absorption 180 3 true
effect give @s minecraft:resistance 180 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:regeneration 360 3 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:absorption 360 3 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:resistance 360 1 true

# Apply Well-Fed (+0.5 DR)
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

# Feedback
tellraw @s [{text:"[Spirit Cuisine] ",color:"#AB47BC"},{text:"Regen IV + Abs IV + Res II",color:"#EF5350"},{text:" for 3 min!",color:"gray"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.8 1.0
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.3 30
scoreboard players set @s ec.meal_ate 73
function evercraft:cooking/buff/adjust_wellfed_bonus
