# Tokens — Check Milestone Awards
# Called after levelup. Caller sets #milestone_check adv.temp = new level.
# Awards tokens at milestones: 5=2, 10=5, 15=10, 20=20, 25=50

# Level 5: 2 tokens
execute if score #milestone_check adv.temp matches 5 run data modify storage evercraft:tokens amount set value 2
execute if score #milestone_check adv.temp matches 5 run function evercraft:advantage/tokens/award with storage evercraft:tokens

# Level 10: 5 tokens
execute if score #milestone_check adv.temp matches 10 run data modify storage evercraft:tokens amount set value 5
execute if score #milestone_check adv.temp matches 10 run function evercraft:advantage/tokens/award with storage evercraft:tokens

# Level 15: 10 tokens
execute if score #milestone_check adv.temp matches 15 run data modify storage evercraft:tokens amount set value 10
execute if score #milestone_check adv.temp matches 15 run function evercraft:advantage/tokens/award with storage evercraft:tokens

# Level 20: 20 tokens
execute if score #milestone_check adv.temp matches 20 run data modify storage evercraft:tokens amount set value 20
execute if score #milestone_check adv.temp matches 20 run function evercraft:advantage/tokens/award with storage evercraft:tokens

# Level 25: 50 tokens
execute if score #milestone_check adv.temp matches 25 run data modify storage evercraft:tokens amount set value 50
execute if score #milestone_check adv.temp matches 25 run function evercraft:advantage/tokens/award with storage evercraft:tokens
