# Ring of Undying — Toggle Effect (Dream Rate I)
# 0 = ON (default), 1 = OFF

execute unless score @s ec.t_undying matches 0..1 run scoreboard players set @s ec.t_undying 0

# Flip the toggle
scoreboard players operation #temp ec.t_undying = @s ec.t_undying
execute if score #temp ec.t_undying matches 0 run scoreboard players set @s ec.t_undying 1
execute if score #temp ec.t_undying matches 1 run scoreboard players set @s ec.t_undying 0

# Feedback
execute if score @s ec.t_undying matches 0 run tellraw @s [{text:"[Ring of Undying] ",color:"gold"},{text:"Effect: ",color:"gray"},{text:"ENABLED",color:"green",bold:true},{text:" (Dream Rate I)",color:"gray"}]
execute if score @s ec.t_undying matches 0 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5
execute if score @s ec.t_undying matches 1 run tellraw @s [{text:"[Ring of Undying] ",color:"gold"},{text:"Effect: ",color:"gray"},{text:"DISABLED",color:"red",bold:true},{text:" (Dream Rate I)",color:"gray"}]
execute if score @s ec.t_undying matches 1 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.5
