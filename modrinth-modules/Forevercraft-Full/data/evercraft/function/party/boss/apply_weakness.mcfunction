# Apply post-death Weakness to players who died during boss fight
# Runs 2 ticks after death (player has respawned by now)

execute as @a[tag=party.boss_death] run effect give @s minecraft:weakness 30 3 false
execute as @a[tag=party.boss_death] run tellraw @s [{text:"[Boss] ",color:"dark_red"},{text:"You feel weakened from death... (30s debuff)",color:"gray"}]
tag @a remove party.boss_death
