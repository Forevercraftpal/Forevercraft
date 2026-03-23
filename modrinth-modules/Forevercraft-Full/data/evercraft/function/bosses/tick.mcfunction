# World Boss System — 1s Self-Schedule Tick
schedule function evercraft:bosses/tick 1s replace

# Boss Catalog trigger check
# OPT: enable @s instead of @a — load + on_join handle first-time/reconnect
execute as @a[scores={wb.catalog=1..}] run function evercraft:bosses/catalog/display
execute as @a[scores={wb.catalog=1..}] run scoreboard players enable @s wb.catalog
scoreboard players set @a[scores={wb.catalog=1..}] wb.catalog 0

# Natural spawn check — runs when no boss is active (7 in-game day timer)
execute unless score #wb_active ec.var matches 1 run function evercraft:bosses/natural/check

# Early exit if no boss active
execute unless score #wb_active ec.var matches 1 run return 0

# Check boss entity still exists — if not, allow grace period (may be in unloaded chunk)
execute if entity @e[type=!player,tag=wb.boss,limit=1] run scoreboard players set #wb_missing ec.var 0
execute unless entity @e[type=!player,tag=wb.boss,limit=1] run scoreboard players add #wb_missing ec.var 1
# After 10s missing → cleanup (genuinely gone, not just chunk-unloaded)
execute if score #wb_missing ec.var matches 10.. run function evercraft:bosses/cleanup
execute unless score #wb_active ec.var matches 1 run return 0

# Tether: if boss is too far from all players (>80 blocks), tp to nearest participant
execute as @e[type=!player,tag=wb.boss,limit=1] at @s unless entity @a[distance=..80] run tp @s @a[tag=wb.participant,limit=1,sort=random]

# Clear engagement for participants who died (prevents anti-range punishment on respawn)
execute as @a[tag=wb.participant,scores={wb.death=1..}] run tag @s remove wb.participant
execute as @a[tag=wb.participant,scores={wb.death=1..}] run advancement revoke @s only evercraft:bosses/damage/dealt
scoreboard players set @a[scores={wb.death=1..}] wb.death 0

# Increment fight timer
scoreboard players add #wb_timer ec.var 1

# Despawn warnings and timeout
execute if score #wb_timer ec.var matches 720 run tellraw @a [{text:"[",color:"dark_red"},{text:"World Boss",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The boss grows restless... 3 minutes remaining!",color:"gray"}]
execute if score #wb_timer ec.var matches 840 run tellraw @a [{text:"[",color:"dark_red"},{text:"World Boss",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The boss is fading... 1 minute remaining!",color:"gray"}]
execute if score #wb_timer ec.var matches 900 run function evercraft:bosses/despawn
execute unless score #wb_active ec.var matches 1 run return 0

# Skip phase/ability checks while boss is initializing (waiting for sync_hp to heal to full)
execute if entity @e[tag=wb.boss,tag=wb.initializing] run return 0

# Phase check — read boss HP and compare to thresholds
execute as @e[type=!player,tag=wb.boss,limit=1] at @s run function evercraft:bosses/phase/check

# Ability dispatch — route to boss-specific ability function
execute as @e[type=!player,tag=wb.boss,limit=1] at @s run function evercraft:bosses/abilities/tick

# Seasonal effects — environmental hazards based on current season + water detection
execute as @e[type=!player,tag=wb.boss,limit=1] at @s run function evercraft:bosses/seasonal/tick

# Anti-range check — escalating debuffs on participants who are too far from the boss
execute at @e[type=!player,tag=wb.boss,limit=1] run function evercraft:bosses/anti_range/tick

# Update bossbar player list (only players within 100 blocks of boss)
execute at @e[type=!player,tag=wb.boss,limit=1] run bossbar set evercraft:world_boss players @a[distance=..100]

# Kill distant minions (too far from boss = lost)
execute at @e[type=!player,tag=wb.boss,limit=1] run kill @e[tag=wb.minion,distance=150..]
