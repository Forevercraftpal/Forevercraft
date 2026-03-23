# Shared Fortunes — Gathering proc → Mining allies get bonus (macro)
# Arg: pid

# 20% chance per nearby Mining ally (10+)
$execute as @a[scores={ec.party_id=$(pid),adv.mining=10..},distance=..48] at @s run function evercraft:party/combos/fortune_roll
