# Spirit Raid Unlock — Descend into Spirit Raid
# Called from check_prompt when ANY player chose to descend
# Operates on ALL dungeon players (not just @s) — one player's choice pulls everyone in

# Clear ALL prompt state (everyone enters regardless of their individual choice)
tag @a remove sr.prompted
scoreboard players set @a ec.sr_prompt 0
scoreboard players set @a ec.sr_timer 0

# Announce descent to all dungeon players
tellraw @a[tag=dg.player] [{text:"\u2620 ",color:"dark_purple"},{text:"Descending into the Spirit Realm...",color:"light_purple"}]
execute as @a[tag=dg.player] at @s run playsound minecraft:ambient.basalt_deltas.mood master @s ~ ~ ~ 1 0.5

# Save structure for raid boss mapping (same as raids/check_entry)
scoreboard players operation #rd_struct ec.var = #dg_struct_id ec.var
execute store result score #rd_players ec.var if entity @a[tag=dg.player]

# Enter the raid (handles dungeon cleanup internally)
function evercraft:raids/enter
