# Codex of Everything — Enter Spectator Mode
# duration: 30 seconds, Cooldown: 7 days (504000 ticks)

# Store current position for return
execute store result score @s ec.codex_ret_x run data get entity @s Pos[0]
execute store result score @s ec.codex_ret_y run data get entity @s Pos[1]
execute store result score @s ec.codex_ret_z run data get entity @s Pos[2]

# Store current dimension
execute if entity @s[predicate=evercraft:in_overworld] run scoreboard players set @s ec.codex_ret_dim 0
execute if entity @s[predicate=evercraft:in_nether] run scoreboard players set @s ec.codex_ret_dim 1
execute if entity @s[predicate=evercraft:in_end] run scoreboard players set @s ec.codex_ret_dim 2

# Set spectator mode
gamemode spectator @s

# Set timer (30 seconds = 600 ticks)
scoreboard players set @s ec.codex_spec_time 600

# Set cooldown (7 days = 504000 ticks)
scoreboard players set @s ec.codex_spec_cd 504000

# Feedback
tellraw @s [{text:"Codex of Everything",color:"light_purple",bold:true},{text:" grants you ",color:"gray"},{text:"Astral Projection",color:"aqua",bold:true},{text:" for 30 seconds!",color:"gray"}]
tellraw @s [{text:"You will return to your original position when it ends.",color:"dark_gray",italic:true}]

# Effects
playsound minecraft:entity.illusioner.cast_spell master @s ~ ~ ~ 1 0.6
particle minecraft:soul ~ ~1 ~ 0.5 1 0.5 0.05 30
