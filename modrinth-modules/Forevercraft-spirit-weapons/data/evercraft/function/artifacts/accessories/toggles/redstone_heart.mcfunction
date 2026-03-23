# Redstone Heart — Toggle Effect (Haste III)
# 0 = ON (default), 1 = OFF

execute unless score @s ec.t_redhrt matches 0..1 run scoreboard players set @s ec.t_redhrt 0

# Flip the toggle
scoreboard players operation #temp ec.t_redhrt = @s ec.t_redhrt
execute if score #temp ec.t_redhrt matches 0 run scoreboard players set @s ec.t_redhrt 1
execute if score #temp ec.t_redhrt matches 1 run scoreboard players set @s ec.t_redhrt 0

# Feedback
execute if score @s ec.t_redhrt matches 0 run tellraw @s [{text:"[Redstone Heart] ",color:"light_purple"},{text:"Effect: ",color:"gray"},{text:"ENABLED",color:"green",bold:true},{text:" (Haste III)",color:"gray"}]
execute if score @s ec.t_redhrt matches 0 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5
execute if score @s ec.t_redhrt matches 1 run tellraw @s [{text:"[Redstone Heart] ",color:"light_purple"},{text:"Effect: ",color:"gray"},{text:"DISABLED",color:"red",bold:true},{text:" (Haste III)",color:"gray"}]
execute if score @s ec.t_redhrt matches 1 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.5
