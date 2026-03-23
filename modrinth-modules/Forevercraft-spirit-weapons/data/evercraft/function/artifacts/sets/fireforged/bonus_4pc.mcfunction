# Fireforged 4-Piece Bonus: Phoenix Rebirth — Auto-revive once per day
# The actual revive is handled in worn_tick via the rebirth ability on helm/chest

# Tag player as having 4pc bonus
execute unless entity @s[tag=fireforged_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Fireforged 4pc: ",color:"light_purple"},{text:"Phoenix Rebirth — Auto-revive (1x/day)",color:"gray"}]
tag @s add fireforged_4pc

# Visual effect — fire particles
particle flame ~ ~1 ~ 0.3 0.5 0.3 0.01 3 force @s
