# Featherweight Stone — Toggle Effect (Slow Falling)
# 0 = ON (default), 1 = OFF

execute unless score @s ec.t_feather matches 0..1 run scoreboard players set @s ec.t_feather 0

# Flip the toggle
scoreboard players operation #temp ec.t_feather = @s ec.t_feather
execute if score #temp ec.t_feather matches 0 run scoreboard players set @s ec.t_feather 1
execute if score #temp ec.t_feather matches 1 run scoreboard players set @s ec.t_feather 0

# Feedback
execute if score @s ec.t_feather matches 0 run tellraw @s [{text:"[Featherweight Stone] ",color:"aqua"},{text:"Effect: ",color:"gray"},{text:"ENABLED",color:"green",bold:true},{text:" (Slow Falling)",color:"gray"}]
execute if score @s ec.t_feather matches 0 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5
execute if score @s ec.t_feather matches 1 run tellraw @s [{text:"[Featherweight Stone] ",color:"aqua"},{text:"Effect: ",color:"gray"},{text:"DISABLED",color:"red",bold:true},{text:" (Slow Falling)",color:"gray"}]
execute if score @s ec.t_feather matches 1 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.5
