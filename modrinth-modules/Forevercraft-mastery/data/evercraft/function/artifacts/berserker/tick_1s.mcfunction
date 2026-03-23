# Berserker — 1-Second Cooldown Tick
# Decrements rage cooldown timer for all berserkers

# Decrement cooldown for all players with active cooldown
scoreboard players remove @a[scores={ec.bk_cd=1..}] ec.bk_cd 1

# OPT: Notify when cooldown expires (3 @a scans → 1)
execute as @a[tag=ec.bk_active,scores={ec.bk_cd=0}] at @s run function evercraft:artifacts/berserker/cd_ready

# Reschedule
schedule function evercraft:artifacts/berserker/tick_1s 1s
