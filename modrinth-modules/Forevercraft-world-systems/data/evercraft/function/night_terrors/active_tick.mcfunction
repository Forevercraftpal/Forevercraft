# Night Terrors — 1-second tick while warnings or encounters are active

# Stop ticking if no warned or active players
execute unless entity @a[tag=ec.nt_warned] unless entity @a[scores={ec.nt_active=1}] run return 0

# Decrement warning timers and spawn when ready
execute as @a[tag=ec.nt_warned] run scoreboard players remove @s ec.nt_warn_cd 1
execute as @a[tag=ec.nt_warned,scores={ec.nt_warn_cd=..0}] at @s run function evercraft:night_terrors/do_spawn

# Tick active terror encounters (ability cooldowns, chase, death detection)
execute as @a[scores={ec.nt_active=1}] at @s run function evercraft:night_terrors/abilities/tick

schedule function evercraft:night_terrors/active_tick 1s
