# Depthsworn — Ability 2: Phalanx Charge (Sneak+Right-click, 20s CD)
# Charge forward 10 blocks (14 at spirit tier) with shield raised, AoE slam at end

# Set cooldown (400 ticks = 20s)
scoreboard players set @s ec.sp_cd2 400

# Determine charge distance: 5 steps of 2 blocks = 10 blocks, spirit tier 7 steps = 14 blocks
scoreboard players set @s ec.sp_state 5
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_state 7

# Grant damage immunity during charge
effect give @s resistance 3 4 true
tag @s add ec.sp_charging

# VFX
playsound minecraft:entity.ravager.roar master @a[distance=..20] ~ ~ ~ 0.4 1.5
particle dust{color:[0.7,0.7,0.7],scale:1.5} ~ ~1 ~ 0.5 0.3 0.5 0.05 15

# Feedback
tellraw @s [{"text":"Phalanx Charge","color":"white","bold":true},{"text":"!","color":"gray"}]
