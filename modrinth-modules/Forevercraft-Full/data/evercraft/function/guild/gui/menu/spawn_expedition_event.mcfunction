# Guild Menu — Read expedition data from guild marker into storage
# @s = guild marker (state 2 confirmed)
# Positioned at 0 -61 0
# After this, refresh_event spawns rows in player context

scoreboard players set #ev_has_expedition ec.temp 1

# Read expedition data from marker
execute store result score #gexp_progress ec.temp run data get entity @s data.expedition.progress
execute store result score #gexp_goal ec.temp run data get entity @s data.expedition.goal
execute store result score #gexp_biome_id ec.temp run data get entity @s data.expedition.target_biome

# Calculate time remaining (ticks)
execute store result score #gexp_now ec.temp run time query gametime
execute store result score #gexp_ends ec.temp run data get entity @s data.expedition.ends_at
scoreboard players operation #gexp_remaining ec.temp = #gexp_ends ec.temp
scoreboard players operation #gexp_remaining ec.temp -= #gexp_now ec.temp
execute if score #gexp_remaining ec.temp matches ..-1 run scoreboard players set #gexp_remaining ec.temp 0

# Convert remaining ticks to minutes (ticks / 1200)
scoreboard players operation #gexp_rem_min ec.temp = #gexp_remaining ec.temp
scoreboard players operation #gexp_rem_min ec.temp /= #1200 ec.const

# Compute completion percentage
scoreboard players operation #gexp_pct ec.temp = #gexp_progress ec.temp
scoreboard players operation #gexp_pct ec.temp *= #100 ec.const
scoreboard players operation #gexp_pct ec.temp /= #gexp_goal ec.temp
execute if score #gexp_pct ec.temp matches 101.. run scoreboard players set #gexp_pct ec.temp 100

# Get biome name
function evercraft:guild/expedition/get_biome_name

# Store all values for macro
execute store result storage evercraft:expedition event.progress int 1 run scoreboard players get #gexp_progress ec.temp
execute store result storage evercraft:expedition event.goal int 1 run scoreboard players get #gexp_goal ec.temp
execute store result storage evercraft:expedition event.pct int 1 run scoreboard players get #gexp_pct ec.temp
execute store result storage evercraft:expedition event.minutes int 1 run scoreboard players get #gexp_rem_min ec.temp
data modify storage evercraft:expedition event.biome set from storage evercraft:expedition temp.biome_name

# Map activity name
data modify storage evercraft:expedition event.activity set value "None"
execute if score #expedition_activity ec.var matches 1 run data modify storage evercraft:expedition event.activity set value "Dungeons"
execute if score #expedition_activity ec.var matches 2 run data modify storage evercraft:expedition event.activity set value "Fishing"
execute if score #expedition_activity ec.var matches 3 run data modify storage evercraft:expedition event.activity set value "Foraging"
execute if score #expedition_activity ec.var matches 4 run data modify storage evercraft:expedition event.activity set value "Mob Slaying"
execute if score #expedition_activity ec.var matches 5 run data modify storage evercraft:expedition event.activity set value "Prospecting"
execute if score #expedition_activity ec.var matches 6 run data modify storage evercraft:expedition event.activity set value "Fountain of Dreams"
execute if score #expedition_activity ec.var matches 7 run data modify storage evercraft:expedition event.activity set value "Quests"
execute if score #expedition_activity ec.var matches 8 run data modify storage evercraft:expedition event.activity set value "Bounties"
execute if score #expedition_activity ec.var matches 9 run data modify storage evercraft:expedition event.activity set value "Lore Discovery"
execute if score #expedition_activity ec.var matches 10 run data modify storage evercraft:expedition event.activity set value "World Bosses"
execute if score #expedition_activity ec.var matches 11 run data modify storage evercraft:expedition event.activity set value "Structure Crates"
execute if score #expedition_activity ec.var matches 12 run data modify storage evercraft:expedition event.activity set value "Patron Mobs"
execute if score #expedition_activity ec.var matches 13 run data modify storage evercraft:expedition event.activity set value "Cooking"
