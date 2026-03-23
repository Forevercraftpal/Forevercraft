# Hunter Crossbow — 1s Tick (cooldown decrement)
schedule function evercraft:artifacts/hunter/tick 1s

# OPT: skip if no active cooldowns
execute unless entity @a[scores={ec.ht_cd=1..}] unless entity @a[scores={ec.ht_fade=1..}] run return 0

# Decrement main cooldown
scoreboard players remove @a[scores={ec.ht_cd=1..}] ec.ht_cd 1

# Decrement fade cooldown
scoreboard players remove @a[scores={ec.ht_fade=1..}] ec.ht_fade 1
