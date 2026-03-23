# Eat Spirit Jerky — Speed II + Strength I for 5 min, survives 3 deaths
advancement revoke @s only evercraft:cooking/eat_preserve_jerky

# Clear any existing cooking buffs first
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

# Apply effects
effect give @s minecraft:speed 300 1 true
effect give @s minecraft:strength 300 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:speed 600 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:strength 600 0 true

# Apply Well-Fed (+0.5 DR)
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

# Set preservation counter (survives 3 deaths!)
scoreboard players set @s ec.ck_preserve 3

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Speed II + Strength I",color:"light_purple"},{text:" for 5 min! ",color:"gray"},{text:"(Survives 3 deaths!)",color:"aqua","bold":true}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.3 1.5
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.3 2.0
scoreboard players set @s ec.meal_ate 62
function evercraft:cooking/buff/adjust_wellfed_bonus
