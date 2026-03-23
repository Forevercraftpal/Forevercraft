# Tomb System — Give XP Levels to Player
# @s = player to receive XP
# #tomb_xp_give ec.temp = number of levels to give
# Uses a loop since xp add doesn't take scoreboard values directly

# Give 1 level at a time (simple approach — works for reasonable level counts)
xp add @s 1 levels
scoreboard players remove #tomb_xp_give ec.temp 1
execute if score #tomb_xp_give ec.temp matches 1.. run function evercraft:tomb/give_xp
