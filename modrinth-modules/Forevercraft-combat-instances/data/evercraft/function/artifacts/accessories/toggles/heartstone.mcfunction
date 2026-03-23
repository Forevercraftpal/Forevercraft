# Heartstone — Toggle Effect (Regen I below 6 hearts)
# 0 = ON (default), 1 = OFF

execute unless score @s ec.t_heart matches 0..1 run scoreboard players set @s ec.t_heart 0

# Flip the toggle
scoreboard players operation #temp ec.t_heart = @s ec.t_heart
execute if score #temp ec.t_heart matches 0 run scoreboard players set @s ec.t_heart 1
execute if score #temp ec.t_heart matches 1 run scoreboard players set @s ec.t_heart 0

# Feedback
execute if score @s ec.t_heart matches 0 run tellraw @s [{text:"[Heartstone] ",color:"dark_purple"},{text:"Effect: ",color:"gray"},{text:"ENABLED",color:"green",bold:true},{text:" (Regen I)",color:"gray"}]
execute if score @s ec.t_heart matches 0 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5
execute if score @s ec.t_heart matches 1 run tellraw @s [{text:"[Heartstone] ",color:"dark_purple"},{text:"Effect: ",color:"gray"},{text:"DISABLED",color:"red",bold:true},{text:" (Regen I)",color:"gray"}]
execute if score @s ec.t_heart matches 1 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.5
