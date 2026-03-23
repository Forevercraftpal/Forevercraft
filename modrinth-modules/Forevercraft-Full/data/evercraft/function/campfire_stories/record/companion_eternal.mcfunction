# ============================================================
# Campfire Stories — Record Companion Eternal Bond
# Run as the player whose companion reached Eternal Bond
# Set evercraft:campfire temp.companion to companion name before calling
# ============================================================

data modify storage evercraft:campfire temp.player set from entity @s CustomName
execute store result storage evercraft:campfire temp.day int 1 run time query day
execute unless data storage evercraft:campfire temp.companion run data modify storage evercraft:campfire temp.companion set value "their companion"

data modify storage evercraft:campfire history append value {type:"companion_eternal",player:"unknown",pet:"unknown",day:0}
data modify storage evercraft:campfire history[-1].player set from storage evercraft:campfire temp.player
data modify storage evercraft:campfire history[-1].pet set from storage evercraft:campfire temp.companion
data modify storage evercraft:campfire history[-1].day set from storage evercraft:campfire temp.day

execute store result score #cf_count ec.var run data get storage evercraft:campfire history
execute if score #cf_count ec.var matches 51.. run data remove storage evercraft:campfire history[0]

# Achievement tracking: story recorded
scoreboard players add @s ach.cf_recorded 1
