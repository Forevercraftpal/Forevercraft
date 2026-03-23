# Eat Ironbark Bread — Resistance I for 5 min, survives 1 death
advancement revoke @s only evercraft:cooking/eat_preserve_ironbark

# Clear any existing cooking buffs first
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

# Apply effects
effect give @s minecraft:resistance 300 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:resistance 600 0 true

# Apply Well-Fed (+0.5 DR)
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

# Set preservation counter (survives 1 death)
scoreboard players set @s ec.ck_preserve 1

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Resistance I",color:"#78909C"},{text:" for 5 min! ",color:"gray"},{text:"(Survives 1 death)",color:"aqua"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.3 1.5
scoreboard players set @s ec.meal_ate 60
function evercraft:cooking/buff/adjust_wellfed_bonus
