# Bulk claim all unclaimed stages for one bestiary mob (macro)
# Args: {smob:"zombie", group:1}
# Increments @s ec.claim_cnt for each claimed stage
$execute store result score #bs_stage bs.temp run scoreboard players get @s bs.s_$(smob)
execute if score #bs_stage bs.temp matches 0 run return 0
$execute store result score #bs_claims bs.temp run scoreboard players get @s bs.c_$(smob)

# Try claiming stages 1-7 (bit-check then set bit + give reward)
# Stage 1 (bit 0)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
$execute if score #bs_stage bs.temp matches 1.. if score #bs_b bs.temp matches 0 run scoreboard players add @s bs.c_$(smob) 1
execute if score #bs_stage bs.temp matches 1.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_cnt 1
$execute if score #bs_stage bs.temp matches 1.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_group bs.temp $(group)
execute if score #bs_stage bs.temp matches 1.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_stage bs.temp 1
execute if score #bs_stage bs.temp matches 1.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_coins bs.temp 0
execute if score #bs_stage bs.temp matches 1.. if score #bs_b bs.temp matches 0 run function evercraft:bestiary/stages/give_reward

# Reload claims after potential modification
$execute store result score #bs_claims bs.temp run scoreboard players get @s bs.c_$(smob)

# Stage 2 (bit 1)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow1 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
$execute if score #bs_stage bs.temp matches 2.. if score #bs_b bs.temp matches 0 run scoreboard players add @s bs.c_$(smob) 2
execute if score #bs_stage bs.temp matches 2.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_cnt 1
$execute if score #bs_stage bs.temp matches 2.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_group bs.temp $(group)
execute if score #bs_stage bs.temp matches 2.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_stage bs.temp 2
execute if score #bs_stage bs.temp matches 2.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_coins bs.temp 0
execute if score #bs_stage bs.temp matches 2.. if score #bs_b bs.temp matches 0 run function evercraft:bestiary/stages/give_reward
$execute store result score #bs_claims bs.temp run scoreboard players get @s bs.c_$(smob)

# Stage 3 (bit 2)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow2 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
$execute if score #bs_stage bs.temp matches 3.. if score #bs_b bs.temp matches 0 run scoreboard players add @s bs.c_$(smob) 4
execute if score #bs_stage bs.temp matches 3.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_cnt 1
$execute if score #bs_stage bs.temp matches 3.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_group bs.temp $(group)
execute if score #bs_stage bs.temp matches 3.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_stage bs.temp 3
execute if score #bs_stage bs.temp matches 3.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_coins bs.temp 0
execute if score #bs_stage bs.temp matches 3.. if score #bs_b bs.temp matches 0 run function evercraft:bestiary/stages/give_reward
$execute store result score #bs_claims bs.temp run scoreboard players get @s bs.c_$(smob)

# Stage 4 (bit 3)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow3 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
$execute if score #bs_stage bs.temp matches 4.. if score #bs_b bs.temp matches 0 run scoreboard players add @s bs.c_$(smob) 8
execute if score #bs_stage bs.temp matches 4.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_cnt 1
$execute if score #bs_stage bs.temp matches 4.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_group bs.temp $(group)
execute if score #bs_stage bs.temp matches 4.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_stage bs.temp 4
execute if score #bs_stage bs.temp matches 4.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_coins bs.temp 0
execute if score #bs_stage bs.temp matches 4.. if score #bs_b bs.temp matches 0 run function evercraft:bestiary/stages/give_reward
$execute store result score #bs_claims bs.temp run scoreboard players get @s bs.c_$(smob)

# Stage 5 (bit 4)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow4 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
$execute if score #bs_stage bs.temp matches 5.. if score #bs_b bs.temp matches 0 run scoreboard players add @s bs.c_$(smob) 16
execute if score #bs_stage bs.temp matches 5.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_cnt 1
$execute if score #bs_stage bs.temp matches 5.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_group bs.temp $(group)
execute if score #bs_stage bs.temp matches 5.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_stage bs.temp 5
execute if score #bs_stage bs.temp matches 5.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_coins bs.temp 0
execute if score #bs_stage bs.temp matches 5.. if score #bs_b bs.temp matches 0 run function evercraft:bestiary/stages/give_reward
$execute store result score #bs_claims bs.temp run scoreboard players get @s bs.c_$(smob)

# Stage 6 (bit 5)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow5 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
$execute if score #bs_stage bs.temp matches 6.. if score #bs_b bs.temp matches 0 run scoreboard players add @s bs.c_$(smob) 32
execute if score #bs_stage bs.temp matches 6.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_cnt 1
$execute if score #bs_stage bs.temp matches 6.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_group bs.temp $(group)
execute if score #bs_stage bs.temp matches 6.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_stage bs.temp 6
execute if score #bs_stage bs.temp matches 6.. if score #bs_b bs.temp matches 0 run scoreboard players set #rw_coins bs.temp 0
execute if score #bs_stage bs.temp matches 6.. if score #bs_b bs.temp matches 0 run function evercraft:bestiary/stages/give_reward
$execute store result score #bs_claims bs.temp run scoreboard players get @s bs.c_$(smob)

# Stage 7 (bit 6)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow6 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
$execute if score #bs_stage bs.temp matches 7 if score #bs_b bs.temp matches 0 run scoreboard players add @s bs.c_$(smob) 64
execute if score #bs_stage bs.temp matches 7 if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_cnt 1
$execute if score #bs_stage bs.temp matches 7 if score #bs_b bs.temp matches 0 run scoreboard players set #rw_group bs.temp $(group)
execute if score #bs_stage bs.temp matches 7 if score #bs_b bs.temp matches 0 run scoreboard players set #rw_stage bs.temp 7
execute if score #bs_stage bs.temp matches 7 if score #bs_b bs.temp matches 0 run scoreboard players set #rw_coins bs.temp 0
execute if score #bs_stage bs.temp matches 7 if score #bs_b bs.temp matches 0 run function evercraft:bestiary/stages/give_reward
