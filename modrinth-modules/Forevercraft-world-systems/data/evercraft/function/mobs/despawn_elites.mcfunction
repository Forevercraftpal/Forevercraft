# Despawn CustomName mobs far from all players
# CustomName makes mobs persistent (never vanilla-despawn), so we simulate it
# Covers: Patrons, Furia, player-head mobs
# Runs every 5 seconds

# Instant despawn: no player within 128 blocks (vanilla instant despawn range)
execute as @e[tag=ec.patron] at @s unless entity @a[distance=..128] run kill @s
execute as @e[tag=ec.furia] at @s unless entity @a[distance=..128] run kill @s
execute as @e[tag=ec.playerhead] at @s unless entity @a[distance=..128] run kill @s

# Gradual despawn: no player within 64 blocks, 5% chance per check
# Prevents accumulation in areas players have moved past
execute as @e[tag=ec.patron] at @s unless entity @a[distance=..64] if predicate {"condition":"minecraft:random_chance","chance":0.05} run kill @s
execute as @e[tag=ec.furia] at @s unless entity @a[distance=..64] if predicate {"condition":"minecraft:random_chance","chance":0.05} run kill @s
execute as @e[tag=ec.playerhead] at @s unless entity @a[distance=..64] if predicate {"condition":"minecraft:random_chance","chance":0.05} run kill @s

schedule function evercraft:mobs/despawn_elites 5s
