# Codex of Everything — End Spectator Mode
# Returns player to survival and original position

# Return to survival mode
gamemode survival @s

# Teleport back to stored position based on dimension
execute if score @s ec.codex_ret_dim matches 0 in minecraft:overworld run tp @s 0 0 0
execute if score @s ec.codex_ret_dim matches 1 in minecraft:the_nether run tp @s 0 0 0
execute if score @s ec.codex_ret_dim matches 2 in minecraft:the_end run tp @s 0 0 0

# Now use the stored coordinates (workaround since we can't use scores directly in tp)
execute store result entity @s Pos[0] double 1 run scoreboard players get @s ec.codex_ret_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s ec.codex_ret_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s ec.codex_ret_z

# Feedback
tellraw @s [{text:"Codex of Everything",color:"light_purple",bold:true},{text:" returns your spirit to your body.",color:"gray"}]
playsound minecraft:entity.illusioner.mirror_move master @s ~ ~ ~ 1 1.2
particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 30
