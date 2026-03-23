# Guild Expedition — Find MVP (highest contributor)
# @s = guild member, called per-member
# Input/Output: #gexp_mvp_score ec.temp = current best

# Skip players with 0 contribution
execute unless score @s ec.gexp_contrib matches 1.. run return 0

# If this player beats the current best, they become new MVP
execute if score @s ec.gexp_contrib > #gexp_mvp_score ec.temp run tag @a remove ec.gexp_mvp
execute if score @s ec.gexp_contrib > #gexp_mvp_score ec.temp run tag @s add ec.gexp_mvp
execute if score @s ec.gexp_contrib > #gexp_mvp_score ec.temp run scoreboard players operation #gexp_mvp_score ec.temp = @s ec.gexp_contrib
