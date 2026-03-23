# Eat Explorer's Spread — AoE Speed II + Night Vision (5 min)
# Buffs all players within 16 blocks
advancement revoke @s only evercraft:cooking/eat_feast_explorers

# Clear any existing cooking buffs first
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

# AoE buff — all nearby players (16 blocks)
tag @s add CK.FeastSelf
execute at @s run effect give @a[distance=..16,tag=!CK.FeastSelf] minecraft:speed 300 1 true
execute at @s run effect give @a[distance=..16,tag=!CK.FeastSelf] minecraft:night_vision 300 0 true
execute at @s as @a[distance=..16,tag=!CK.FeastSelf] run tellraw @s [{text:"[Feast Platter] ",color:"#FFD700"},{text:"Explorer's Spread! ",color:"#4FC3F7"},{text:"Speed II + Night Vision for 5 min",color:"gray"}]
tag @s remove CK.FeastSelf

# Self buff
effect give @s minecraft:speed 300 1 true
effect give @s minecraft:night_vision 300 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:speed 600 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:night_vision 600 0 true

# Apply Well-Fed (+0.5 DR)
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

# Feedback
tellraw @s [{text:"[Feast Platter] ",color:"#FFD700"},{text:"Explorer's Spread! ",color:"#4FC3F7"},{text:"Speed II + Night Vision for 5 min",color:"gray"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 0.8 1.0
execute at @s run particle minecraft:firework ~ ~1 ~ 0.5 0.3 0.5 0.1 15
scoreboard players set @s ec.meal_ate 51
function evercraft:cooking/buff/adjust_wellfed_bonus
