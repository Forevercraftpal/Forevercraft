# Bestiary Stages — Claim Reward (Macro)
# Args: {smob:"zombie", group:1}
# Run as player. Claims the lowest unclaimed stage reward.

# Read current stage and claim bitfield
$execute store result score #bs_stage bs.temp run scoreboard players get @s bs.s_$(smob)
$execute store result score #bs_claims bs.temp run scoreboard players get @s bs.c_$(smob)

# Find lowest unclaimed & reached stage
scoreboard players set #grant_stage bs.temp 0

# Stage 1 (bit 0, divisor=1)
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 1.. run scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 1.. run scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 1.. if score #bs_b bs.temp matches 0 run scoreboard players set #grant_stage bs.temp 1

# Stage 2 (bit 1, divisor=2)
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 2.. run scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 2.. run scoreboard players operation #bs_b bs.temp /= #pow1 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 2.. run scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 2.. if score #bs_b bs.temp matches 0 run scoreboard players set #grant_stage bs.temp 2

# Stage 3 (bit 2, divisor=4)
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 3.. run scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 3.. run scoreboard players operation #bs_b bs.temp /= #pow2 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 3.. run scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 3.. if score #bs_b bs.temp matches 0 run scoreboard players set #grant_stage bs.temp 3

# Stage 4 (bit 3, divisor=8)
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 4.. run scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 4.. run scoreboard players operation #bs_b bs.temp /= #pow3 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 4.. run scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 4.. if score #bs_b bs.temp matches 0 run scoreboard players set #grant_stage bs.temp 4

# Stage 5 (bit 4, divisor=16)
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 5.. run scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 5.. run scoreboard players operation #bs_b bs.temp /= #pow4 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 5.. run scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 5.. if score #bs_b bs.temp matches 0 run scoreboard players set #grant_stage bs.temp 5

# Stage 6 (bit 5, divisor=32)
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 6.. run scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 6.. run scoreboard players operation #bs_b bs.temp /= #pow5 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 6.. run scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 6.. if score #bs_b bs.temp matches 0 run scoreboard players set #grant_stage bs.temp 6

# Stage 7 (bit 6, divisor=64)
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 7 run scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 7 run scoreboard players operation #bs_b bs.temp /= #64 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 7 run scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #grant_stage bs.temp matches 0 if score #bs_stage bs.temp matches 7 if score #bs_b bs.temp matches 0 run scoreboard players set #grant_stage bs.temp 7

# Nothing to grant
execute if score #grant_stage bs.temp matches 0 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"No unclaimed rewards available.","color":"gray"}]
execute if score #grant_stage bs.temp matches 0 run return 0

# Set claim bit (OR into bitfield via add — safe because bit is confirmed 0)
$execute if score #grant_stage bs.temp matches 1 run scoreboard players add @s bs.c_$(smob) 1
$execute if score #grant_stage bs.temp matches 2 run scoreboard players add @s bs.c_$(smob) 2
$execute if score #grant_stage bs.temp matches 3 run scoreboard players add @s bs.c_$(smob) 4
$execute if score #grant_stage bs.temp matches 4 run scoreboard players add @s bs.c_$(smob) 8
$execute if score #grant_stage bs.temp matches 5 run scoreboard players add @s bs.c_$(smob) 16
$execute if score #grant_stage bs.temp matches 6 run scoreboard players add @s bs.c_$(smob) 32
$execute if score #grant_stage bs.temp matches 7 run scoreboard players add @s bs.c_$(smob) 64

# Set up reward dispatch scores
$scoreboard players set #rw_group bs.temp $(group)
scoreboard players operation #rw_stage bs.temp = #grant_stage bs.temp
scoreboard players set #rw_coins bs.temp 0

# Give reward crate + coins
function evercraft:bestiary/stages/give_reward

# Stage name for announcement
execute if score #grant_stage bs.temp matches 1 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Common","color":"white"},{"text":" stage reward claimed!","color":"green"}]
execute if score #grant_stage bs.temp matches 2 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Uncommon","color":"green"},{"text":" stage reward claimed!","color":"green"}]
execute if score #grant_stage bs.temp matches 3 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Rare","color":"aqua"},{"text":" stage reward claimed!","color":"green"}]
execute if score #grant_stage bs.temp matches 4 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Ornate","color":"light_purple"},{"text":" stage reward claimed!","color":"green"}]
execute if score #grant_stage bs.temp matches 5 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Exquisite","color":"gold"},{"text":" stage reward claimed!","color":"green"}]
execute if score #grant_stage bs.temp matches 6 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Mythical","color":"red"},{"text":" stage reward claimed!","color":"green"}]
execute if score #grant_stage bs.temp matches 7 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Spirit","color":"dark_purple","bold":true},{"text":" stage reward claimed!","color":"green"}]

# Sound + particles
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.05 15
