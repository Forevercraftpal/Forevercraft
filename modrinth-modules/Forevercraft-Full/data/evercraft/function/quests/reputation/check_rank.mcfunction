# ============================================================
# Check Reputation Rank
# Updates rank flags and announces rank-ups
# ============================================================

# Rank thresholds:
# 0-99: Stranger
# 100-249: Acquaintance
# 250-499: Friend
# 500-999: Ally
# 1000-2499: Hero
# 2500+: Legend

# Check for Acquaintance rank-up (100+)
execute if score @s ec.village_rep matches 100.. unless score @s ec.rep_rank matches 1.. run function evercraft:quests/reputation/rank_acquaintance

# Check for Friend rank-up (250+)
execute if score @s ec.village_rep matches 250.. unless score @s ec.rep_rank matches 2.. run function evercraft:quests/reputation/rank_friend

# Check for Ally rank-up (500+)
execute if score @s ec.village_rep matches 500.. unless score @s ec.rep_rank matches 3.. run function evercraft:quests/reputation/rank_ally

# Check for Hero rank-up (1000+)
execute if score @s ec.village_rep matches 1000.. unless score @s ec.rep_rank matches 4.. run function evercraft:quests/reputation/rank_hero

# Check for Legend rank-up (2500+)
execute if score @s ec.village_rep matches 2500.. unless score @s ec.rep_rank matches 5.. run function evercraft:quests/reputation/rank_legend
