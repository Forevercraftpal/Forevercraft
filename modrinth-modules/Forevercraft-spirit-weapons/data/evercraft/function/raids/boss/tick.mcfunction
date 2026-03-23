# Spirit Raids — Boss Tick (runs every game tick via evercraft:tick)
# Only called when #rd_active = 1

# Check boss entity still exists — if not, it died or glitched
execute unless entity @e[type=!player,tag=ec.rd_boss,limit=1] run function evercraft:raids/boss/on_death
execute unless score #rd_active ec.var matches 1 run return 0

# Increment fight timer
scoreboard players add #rd_timer ec.var 1

# Skip checks while boss is initializing (waiting for sync_hp to heal to full)
execute if entity @e[tag=ec.rd_boss,tag=ec.rd_initializing] run return 0

# Skip checks during phase transition lock
execute if score #rd_phase_lock ec.var matches 1.. run return 0

# Phase check — read boss HP and compare to thresholds
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/phase_check

# Decrement ability cooldown
execute if score #rd_ability_cd ec.var matches 1.. run scoreboard players remove #rd_ability_cd ec.var 1

# Route to boss-specific tick based on boss ID
execute if score #rd_boss_id ec.var matches 1 run function evercraft:raids/boss/hollow_sovereign/tick
execute if score #rd_boss_id ec.var matches 2 run function evercraft:raids/boss/void_architect/tick
execute if score #rd_boss_id ec.var matches 3 run function evercraft:raids/boss/gilded_tyrant/tick
execute if score #rd_boss_id ec.var matches 4 run function evercraft:raids/boss/arbiter/tick
execute if score #rd_boss_id ec.var matches 5 run function evercraft:raids/boss/gatekeeper/tick
execute if score #rd_boss_id ec.var matches 6 run function evercraft:raids/boss/grand_illusionist/tick
execute if score #rd_boss_id ec.var matches 7 run function evercraft:raids/boss/ashen_lord/tick
execute if score #rd_boss_id ec.var matches 8 run function evercraft:raids/boss/leviathan/tick
execute if score #rd_boss_id ec.var matches 9 run function evercraft:raids/boss/eternal_pharaoh/tick
execute if score #rd_boss_id ec.var matches 10 run function evercraft:raids/boss/venomweaver/tick
execute if score #rd_boss_id ec.var matches 11 run function evercraft:raids/boss/deepcrawler/tick
execute if score #rd_boss_id ec.var matches 12 run function evercraft:raids/boss/mossheart_warden/tick
execute if score #rd_boss_id ec.var matches 13 run function evercraft:raids/boss/crimson_bulwark/tick

# Update bossbar from current HP
execute store result score #rd_temp ec.var run data get entity @e[type=!player,tag=ec.rd_boss,limit=1] Health 1
execute store result bossbar evercraft:raid_boss value run scoreboard players get #rd_temp ec.var

# Timeout: 10 minutes (12000 ticks) — enrage / force wipe
execute if score #rd_timer ec.var matches 10800 as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The boss grows restless... 1 minute remains!",color:"gray"}]
execute if score #rd_timer ec.var matches 12000 run function evercraft:raids/boss/timeout
