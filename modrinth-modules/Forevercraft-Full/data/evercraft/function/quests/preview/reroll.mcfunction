# Re-roll quest preview options (costs 1 Forever Coin)
# Run as player

# Check preview is active
execute unless score @s ec.qp_active matches 1 run return run tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"No preview active.","color":"red"}]

# Check daily re-roll limit (1 per day)
execute if score @s ec.qp_rerolled matches 1.. run return run tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"You can only re-roll once per day!","color":"red"}]

# Check player has coins
execute unless score @s ec.coins matches 1.. run return run tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"You need ","color":"red"},{"text":"1 Forever Coin","color":"gold"},{"text":" to re-roll!","color":"red"}]

# Mark as rerolled today
scoreboard players set @s ec.qp_rerolled 1

# Deduct coin
scoreboard players remove @s ec.coins 1

# Re-roll based on stored tier
execute if score @s ec.qp_tier matches 1 run function evercraft:quests/preview/open_preview {tier:1,max:50}
execute if score @s ec.qp_tier matches 2 run function evercraft:quests/preview/open_preview {tier:2,max:50}
execute if score @s ec.qp_tier matches 3 run function evercraft:quests/preview/open_preview {tier:3,max:43}
execute if score @s ec.qp_tier matches 4 run function evercraft:quests/preview/open_preview {tier:4,max:42}
execute if score @s ec.qp_tier matches 5 run function evercraft:quests/preview/open_preview {tier:5,max:35}

# Feedback
tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"Options re-rolled! ","color":"yellow"},{"text":"(-1 Coin)","color":"red"}]
