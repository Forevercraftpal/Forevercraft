# Lifewoven Branch — Life Surge Channel Phase
# Run as @s at @s during channeling (ec.sp_state counting down)
# Green particle buildup around player

# Building nature energy particles (intensifying)
particle happy_villager ~ ~0.5 ~ 1.5 1.0 1.5 0.1 5
particle dust{color:[0.2,1.0,0.3],scale:1.8} ~ ~1 ~ 1.0 1.5 1.0 0.02 4
particle enchant ~ ~1.5 ~ 1.0 1.0 1.0 0.5 3

# Rumbling nature sound every 10 ticks
execute store result score #sg_mod ec.temp run scoreboard players get @s ec.sp_state
scoreboard players operation #sg_mod ec.temp %= #10 ec.const
execute if score #sg_mod ec.temp matches 0 run playsound minecraft:block.grass.break player @a ~ ~ ~ 0.6 0.3
