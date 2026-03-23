# ============================================================
# Campfire Stories — Record Dream Rate Milestone
# Run as the player who hit the milestone
# Set evercraft:campfire temp.milestone before calling (e.g. "30")
# ============================================================

data modify storage evercraft:campfire temp.player set from entity @s CustomName
execute store result storage evercraft:campfire temp.day int 1 run time query day
execute unless data storage evercraft:campfire temp.milestone run data modify storage evercraft:campfire temp.milestone set value "a legendary level"

data modify storage evercraft:campfire history append value {type:"dream_milestone",player:"unknown",milestone:"0",day:0}
data modify storage evercraft:campfire history[-1].player set from storage evercraft:campfire temp.player
data modify storage evercraft:campfire history[-1].milestone set from storage evercraft:campfire temp.milestone
data modify storage evercraft:campfire history[-1].day set from storage evercraft:campfire temp.day

execute store result score #cf_count ec.var run data get storage evercraft:campfire history
execute if score #cf_count ec.var matches 51.. run data remove storage evercraft:campfire history[0]

# Achievement tracking: story recorded
scoreboard players add @s ach.cf_recorded 1
