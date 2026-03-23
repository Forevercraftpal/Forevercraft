# Eat Eternal Feast — AoE ALL platter buffs combined (10 min)
# Buffs all players within 32 blocks (double radius)
advancement revoke @s only evercraft:cooking/eat_feast_eternal

# Clear any existing cooking buffs first
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier remove evercraft:fortune_meal

# AoE buff — all nearby players (32 blocks!)
tag @s add CK.FeastSelf
execute at @s run effect give @a[distance=..32,tag=!CK.FeastSelf] minecraft:strength 600 0 true
execute at @s run effect give @a[distance=..32,tag=!CK.FeastSelf] minecraft:resistance 600 0 true
execute at @s run effect give @a[distance=..32,tag=!CK.FeastSelf] minecraft:speed 600 1 true
execute at @s run effect give @a[distance=..32,tag=!CK.FeastSelf] minecraft:night_vision 600 0 true
execute at @s run effect give @a[distance=..32,tag=!CK.FeastSelf] minecraft:haste 600 1 true
execute at @s run effect give @a[distance=..32,tag=!CK.FeastSelf] minecraft:fire_resistance 600 0 true
execute at @s as @a[distance=..32,tag=!CK.FeastSelf] run tellraw @s [{text:"[Feast Platter] ",color:"#FFD700"},{text:"ETERNAL FEAST! ",color:"light_purple","bold":true},{text:"ALL buffs for 10 min!",color:"gray"}]
tag @s remove CK.FeastSelf

# Self buff (all effects)
effect give @s minecraft:strength 600 0 true
effect give @s minecraft:resistance 600 0 true
effect give @s minecraft:speed 600 1 true
effect give @s minecraft:night_vision 600 0 true
effect give @s minecraft:haste 600 1 true
effect give @s minecraft:fire_resistance 600 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:strength 1200 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:resistance 1200 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:speed 1200 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:night_vision 1200 0 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:haste 1200 1 true
execute if score @s adv.pa_culi3 matches 1 run effect give @s minecraft:fire_resistance 1200 0 true

# Apply Well-Fed (+0.5 DR)
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value
scoreboard players set @s ec.ck_wellfed 1200

# Feedback
tellraw @s [{text:"[Feast Platter] ",color:"#FFD700"},{text:"ETERNAL FEAST! ",color:"light_purple","bold":true},{text:"ALL buffs for 10 min!",color:"gray"}]
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1.2
playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1.0 0.8
playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 0.8 1.2
execute at @s run particle minecraft:firework ~ ~1 ~ 0.5 0.3 0.5 0.1 30
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.5 50
scoreboard players set @s ec.meal_ate 53
function evercraft:cooking/buff/adjust_wellfed_bonus
