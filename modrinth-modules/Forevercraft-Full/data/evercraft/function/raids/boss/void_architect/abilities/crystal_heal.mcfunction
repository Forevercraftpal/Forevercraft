# Void Architect — Crystal Healing
# Called as boss entity when within 10 blocks of a crystal
# Heals 5 HP per second (called every 20 ticks = 1 second)

# Heal (undead uses instant_damage)
effect give @s regeneration 2 1 true

# Healing beam VFX from crystal to boss
execute at @e[tag=ec.rd_va_crystal,sort=nearest,limit=1] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 5

# Warning to players
execute at @e[tag=ec.rd_va_crystal,sort=nearest,limit=1] run playsound minecraft:block.beacon.ambient hostile @a[tag=ec.rd_participant,distance=..15] ~ ~ ~ 0.5 1.5
