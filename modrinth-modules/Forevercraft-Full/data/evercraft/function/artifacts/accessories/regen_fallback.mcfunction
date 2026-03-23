# Regen Fallback — Instant heal when player already has Regen II+
# Called by regen artifacts when regeneration would be wasted
# Shared 5s cooldown matches Regen I's heal rate (2 HP per 5s)
# Runs as @s = player

execute if score @s ec.regen_ih_cd matches 1.. run return 0

effect give @s instant_health 1 0 true
particle heart ~ ~1.5 ~ 0.3 0.3 0.3 0 1
scoreboard players set @s ec.regen_ih_cd 5
