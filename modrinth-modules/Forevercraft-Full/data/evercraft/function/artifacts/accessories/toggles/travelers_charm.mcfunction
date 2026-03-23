# Travelers Charm — Toggle Effect (Speed I)
# 0 = ON (default), 1 = OFF

execute unless score @s ec.t_traveler matches 0..1 run scoreboard players set @s ec.t_traveler 0

# Flip the toggle
scoreboard players operation #temp ec.t_traveler = @s ec.t_traveler
execute if score #temp ec.t_traveler matches 0 run scoreboard players set @s ec.t_traveler 1
execute if score #temp ec.t_traveler matches 1 run scoreboard players set @s ec.t_traveler 0

# Feedback
execute if score @s ec.t_traveler matches 0 run tellraw @s [{text:"[Travelers Charm] ",color:"green"},{text:"Effect: ",color:"gray"},{text:"ENABLED",color:"green",bold:true},{text:" (Speed I)",color:"gray"}]
execute if score @s ec.t_traveler matches 0 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5
execute if score @s ec.t_traveler matches 1 run tellraw @s [{text:"[Travelers Charm] ",color:"green"},{text:"Effect: ",color:"gray"},{text:"DISABLED",color:"red",bold:true},{text:" (Speed I)",color:"gray"}]
execute if score @s ec.t_traveler matches 1 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.5
