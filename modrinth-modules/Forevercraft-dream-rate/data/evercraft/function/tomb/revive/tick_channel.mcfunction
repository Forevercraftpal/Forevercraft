# Tomb Revive — Channel Tick
# @s = grave marker with ec.tomb_reviving tag, positioned at grave
# Called from tick_marker every 10 ticks (0.5s)

# === FIND CHANNELING HEALER WITHIN 3 BLOCKS ===
scoreboard players operation #revive_grave_id ec.temp = @s ec.tomb_id
execute as @a[scores={ec.hl_revive=1..},distance=..3] if score @s ec.hl_revive_id = #revive_grave_id ec.temp run tag @s add ec.tomb_reviver

# No qualifying healer within range — cancel
execute unless entity @a[tag=ec.tomb_reviver] run function evercraft:tomb/revive/cancel_channel
execute unless entity @a[tag=ec.tomb_reviver] run return 0

# === DECREMENT CHANNEL TIMER ===
scoreboard players remove @a[tag=ec.tomb_reviver,limit=1] ec.hl_revive 1

# === PARTICLES AT GRAVE ===
particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.3 0.4 0.3 0.02 5
particle minecraft:sculk_soul ~ ~0.8 ~ 0.2 0.3 0.2 0.01 3
particle minecraft:end_rod ~ ~1.2 ~ 0.1 0.2 0.1 0.005 2

# === ACTIONBAR TO HEALER ===
execute store result score #revive_seconds ec.temp run scoreboard players get @a[tag=ec.tomb_reviver,limit=1] ec.hl_revive
scoreboard players operation #revive_seconds ec.temp /= #2 ec.const
execute store result storage evercraft:revive_temp seconds int 1 run scoreboard players get #revive_seconds ec.temp
execute as @a[tag=ec.tomb_reviver] run function evercraft:tomb/revive/tick_actionbar with storage evercraft:revive_temp

# === CHECK COMPLETION ===
execute if score @a[tag=ec.tomb_reviver,limit=1] ec.hl_revive matches ..0 run function evercraft:tomb/revive/complete_revive

# Clean up tag
tag @a[tag=ec.tomb_reviver] remove ec.tomb_reviver
