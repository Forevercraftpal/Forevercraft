# Eat Deathless Stew — Regen II + Absorption II for 3 min, survives 1 death
advancement revoke @s only evercraft:cooking/eat_preserve_deathless

# Clear any existing cooking buffs first
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

# Apply effects
effect give @s minecraft:regeneration 180 1 true
effect give @s minecraft:absorption 180 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:regeneration 360 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:absorption 360 1 true

# Apply Well-Fed (+0.5 DR)
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

# Set preservation counter (survives 1 death)
scoreboard players set @s ec.ck_preserve 1

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Regen II + Absorption II",color:"#EF5350"},{text:" for 3 min! ",color:"gray"},{text:"(Survives 1 death)",color:"aqua"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.3 1.5
scoreboard players set @s ec.meal_ate 61
function evercraft:cooking/buff/adjust_wellfed_bonus
