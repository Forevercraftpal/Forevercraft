# Bestiary — Check Completion (Macro)
# Args: {score:"bs.k_blaze", dscore:"bs.d_blaze", threshold:5000, pow:"#pow1", field:"lo", mob:"blaze"}
# Run as the player

# Check if already mastered — extract bit from comp field
$scoreboard players operation #bs_check bs.temp = @s bs.comp_$(field)
$scoreboard players operation #bs_check bs.temp /= $(pow) bs.temp
scoreboard players operation #bs_check bs.temp %= #2 bs.temp
execute if score #bs_check bs.temp matches 1 run return 0

# Check kill threshold
$execute unless score @s $(score) matches $(threshold).. run return 0

# Check drop tiers — need bits 0-3 all set (common, uncommon, rare, ornate)
$scoreboard players operation #bs_drops bs.temp = @s $(dscore)
scoreboard players operation #bs_drops bs.temp %= #16 bs.temp
execute unless score #bs_drops bs.temp matches 15 run return 0

# Both conditions met — grant mastery!
$function evercraft:bestiary/track/grant_mastery {pow:"$(pow)",field:"$(field)",mob:"$(mob)"}
