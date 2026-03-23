# Spirit Tools — Cooldown tick (self-scheduling every 1s)

# Decrement cooldown by 20 ticks (1 second)
scoreboard players remove @a[scores={ec.st_cd=1..}] ec.st_cd 20
execute as @a[scores={ec.st_cd=..-1}] run scoreboard players set @s ec.st_cd 0

# Show cooldown on actionbar for holders with active CD
execute as @a[tag=ec.st_held,scores={ec.st_cd=1..}] run function evercraft:craftforever/spirit_tools/show_cooldown

# Decrement active mastery timer
scoreboard players remove @a[scores={ec.st_mastery_t=1..}] ec.st_mastery_t 20
execute as @a[scores={ec.st_mastery_t=..-1}] run scoreboard players set @s ec.st_mastery_t 0

# Reschedule
schedule function evercraft:craftforever/spirit_tools/cooldown_tick 1s
