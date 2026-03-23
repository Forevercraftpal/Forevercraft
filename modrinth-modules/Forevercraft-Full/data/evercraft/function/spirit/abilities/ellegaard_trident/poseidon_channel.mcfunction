# Soul Piercer — Poseidon's Wrath Channel Phase
# Run as @s at @s during charging (ec.sp_state counting down)

# Building storm particles
particle bubble ~ ~1 ~ 1.0 1.5 1.0 0.05 8
particle rain ~ ~2 ~ 2.0 2.0 2.0 0.03 10
particle dust{color:[0.0,0.3,0.8],scale:2.0} ~ ~1 ~ 0.8 1.2 0.8 0.01 6

# Rumbling sound every 10 ticks
execute store result score #pos_mod ec.temp run scoreboard players get @s ec.sp_state
scoreboard players operation #pos_mod ec.temp %= #10 ec.const
execute if score #pos_mod ec.temp matches 0 run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 0.3 0.5
