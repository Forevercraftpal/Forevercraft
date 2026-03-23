# ============================================================
# Campfire Stories — Record Mythical Find
# Run as the player who found the mythical artifact
# Call after setting evercraft:campfire temp.artifact to the crate type
# ============================================================

data modify storage evercraft:campfire temp.player set from entity @s CustomName
execute store result storage evercraft:campfire temp.day int 1 run time query day
execute unless data storage evercraft:campfire temp.artifact run data modify storage evercraft:campfire temp.artifact set value "a mythical treasure"

data modify storage evercraft:campfire history append value {type:"mythical_find",player:"unknown",artifact:"unknown",day:0}
data modify storage evercraft:campfire history[-1].player set from storage evercraft:campfire temp.player
data modify storage evercraft:campfire history[-1].artifact set from storage evercraft:campfire temp.artifact
data modify storage evercraft:campfire history[-1].day set from storage evercraft:campfire temp.day

execute store result score #cf_count ec.var run data get storage evercraft:campfire history
execute if score #cf_count ec.var matches 51.. run data remove storage evercraft:campfire history[0]

# Achievement tracking: story recorded
scoreboard players add @s ach.cf_recorded 1
