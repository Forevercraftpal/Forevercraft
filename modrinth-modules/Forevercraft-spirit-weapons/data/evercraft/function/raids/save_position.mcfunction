# Spirit Raids — Save Player Position
# Called as each player to save their return coordinates

# Store current position
execute store result score @s ec.rd_ox run data get entity @s Pos[0] 1
execute store result score @s ec.rd_oy run data get entity @s Pos[1] 1
execute store result score @s ec.rd_oz run data get entity @s Pos[2] 1

# Store dimension (0=overworld, 1=nether, 2=end)
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s ec.rd_dim 0
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s ec.rd_dim 1
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s ec.rd_dim 2
