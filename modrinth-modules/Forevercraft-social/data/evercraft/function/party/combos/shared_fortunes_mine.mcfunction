# Shared Fortunes — Mining proc → Gathering allies get bonus (macro)
# Arg: pid

# 20% chance per nearby Gathering ally (10+)
# Roll a random number 1-5, trigger if 1
$execute as @a[scores={ec.party_id=$(pid),adv.gathering=10..},distance=..48] at @s run function evercraft:party/combos/fortune_roll
