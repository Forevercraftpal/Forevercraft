# Count unclaimed bestiary stages for one mob (macro)
# Args: {smob:"zombie"}
# Adds to @s ec.claim_bst for each unclaimed-but-reached stage
$execute store result score #bs_stage bs.temp run scoreboard players get @s bs.s_$(smob)
execute if score #bs_stage bs.temp matches 0 run return 0
$execute store result score #bs_claims bs.temp run scoreboard players get @s bs.c_$(smob)

# Stage 1 (bit 0)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #bs_stage bs.temp matches 1.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_bst 1

# Stage 2 (bit 1)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow1 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #bs_stage bs.temp matches 2.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_bst 1

# Stage 3 (bit 2)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow2 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #bs_stage bs.temp matches 3.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_bst 1

# Stage 4 (bit 3)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow3 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #bs_stage bs.temp matches 4.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_bst 1

# Stage 5 (bit 4)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow4 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #bs_stage bs.temp matches 5.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_bst 1

# Stage 6 (bit 5)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow5 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #bs_stage bs.temp matches 6.. if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_bst 1

# Stage 7 (bit 6)
scoreboard players operation #bs_b bs.temp = #bs_claims bs.temp
scoreboard players operation #bs_b bs.temp /= #pow6 bs.temp
scoreboard players operation #bs_b bs.temp %= #2 bs.temp
execute if score #bs_stage bs.temp matches 7 if score #bs_b bs.temp matches 0 run scoreboard players add @s ec.claim_bst 1
