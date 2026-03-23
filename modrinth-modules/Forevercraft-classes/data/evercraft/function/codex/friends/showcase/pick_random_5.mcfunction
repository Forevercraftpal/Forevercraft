# Showcase — Pick 5 random achievements from temp.unlocked
# Result stored in temp.picks[]

data modify storage evercraft:showcase temp.picks set value []

# Count available unlocked achievements
execute store result score #sc_count ec.temp run data get storage evercraft:showcase temp.unlocked

# If 0, nothing to do
execute if score #sc_count ec.temp matches ..0 run return 0

# If 5 or fewer, just copy all to picks
execute if score #sc_count ec.temp matches ..5 run return run data modify storage evercraft:showcase temp.picks set from storage evercraft:showcase temp.unlocked

# More than 5: pick 5 random unique entries
# Pick 1
execute store result score #sc_max ec.temp run scoreboard players get #sc_count ec.temp
scoreboard players remove #sc_max ec.temp 1
function evercraft:codex/friends/showcase/pick_one

# Pick 2
scoreboard players remove #sc_count ec.temp 1
execute store result score #sc_max ec.temp run scoreboard players get #sc_count ec.temp
scoreboard players remove #sc_max ec.temp 1
function evercraft:codex/friends/showcase/pick_one

# Pick 3
scoreboard players remove #sc_count ec.temp 1
execute store result score #sc_max ec.temp run scoreboard players get #sc_count ec.temp
scoreboard players remove #sc_max ec.temp 1
function evercraft:codex/friends/showcase/pick_one

# Pick 4
scoreboard players remove #sc_count ec.temp 1
execute store result score #sc_max ec.temp run scoreboard players get #sc_count ec.temp
scoreboard players remove #sc_max ec.temp 1
function evercraft:codex/friends/showcase/pick_one

# Pick 5
scoreboard players remove #sc_count ec.temp 1
execute store result score #sc_max ec.temp run scoreboard players get #sc_count ec.temp
scoreboard players remove #sc_max ec.temp 1
function evercraft:codex/friends/showcase/pick_one
