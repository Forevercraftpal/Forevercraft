# Sculk Heart — Toggle Effect (Dream Rate II)
# 0 = ON (default), 1 = OFF

execute unless score @s ec.t_sculkhrt matches 0..1 run scoreboard players set @s ec.t_sculkhrt 0

# Flip the toggle
scoreboard players operation #temp ec.t_sculkhrt = @s ec.t_sculkhrt
execute if score #temp ec.t_sculkhrt matches 0 run scoreboard players set @s ec.t_sculkhrt 1
execute if score #temp ec.t_sculkhrt matches 1 run scoreboard players set @s ec.t_sculkhrt 0

# Feedback
execute if score @s ec.t_sculkhrt matches 0 run tellraw @s [{text:"[Sculk Heart] ",color:"gold"},{text:"Effect: ",color:"gray"},{text:"ENABLED",color:"green",bold:true},{text:" (Dream Rate II)",color:"gray"}]
execute if score @s ec.t_sculkhrt matches 0 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5
execute if score @s ec.t_sculkhrt matches 1 run tellraw @s [{text:"[Sculk Heart] ",color:"gold"},{text:"Effect: ",color:"gray"},{text:"DISABLED",color:"red",bold:true},{text:" (Dream Rate II)",color:"gray"}]
execute if score @s ec.t_sculkhrt matches 1 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.5
