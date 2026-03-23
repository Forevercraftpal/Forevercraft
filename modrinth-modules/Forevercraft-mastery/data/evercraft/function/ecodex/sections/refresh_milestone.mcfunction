# Ecodex — Refresh One Milestone Display (macro)
# Args: {system:"personal", id:"p1", tag:"Ec.PMs1", score:"ach.comp_owned", t1:10, t2:25, t3:50, t4:75, t5:96, name:"Companion Collector", max:5}
# Run as: player (viewer of the section)
# Requires: #gui_stamp ec.temp set to @s adv.gui_session before calling

$execute store result score #ms_val ec.temp run scoreboard players get @s $(score)

# Count claimed stages
scoreboard players set #ms_claimed ec.temp 0
$execute if entity @s[advancements={evercraft:claim/$(system)/$(id)_1=true}] run scoreboard players add #ms_claimed ec.temp 1
$execute if entity @s[advancements={evercraft:claim/$(system)/$(id)_2=true}] run scoreboard players add #ms_claimed ec.temp 1
$execute if entity @s[advancements={evercraft:claim/$(system)/$(id)_3=true}] run scoreboard players add #ms_claimed ec.temp 1
$execute if entity @s[advancements={evercraft:claim/$(system)/$(id)_4=true}] run scoreboard players add #ms_claimed ec.temp 1
$execute if entity @s[advancements={evercraft:claim/$(system)/$(id)_5=true}] run scoreboard players add #ms_claimed ec.temp 1

# Count reached stages (score >= threshold)
scoreboard players set #ms_reached ec.temp 0
$execute if score #ms_val ec.temp matches $(t1).. run scoreboard players add #ms_reached ec.temp 1
$execute if score #ms_val ec.temp matches $(t2).. run scoreboard players add #ms_reached ec.temp 1
$execute if score #ms_val ec.temp matches $(t3).. run scoreboard players add #ms_reached ec.temp 1
$execute if score #ms_val ec.temp matches $(t4).. run scoreboard players add #ms_reached ec.temp 1
$execute if score #ms_val ec.temp matches $(t5).. run scoreboard players add #ms_reached ec.temp 1

# State: all stages claimed (claimed >= max)
# Session-filtered: only update text_display entities belonging to this player's GUI
$execute if score #ms_claimed ec.temp matches $(max).. as @e[type=text_display,tag=$(tag),distance=..5,limit=1] if score @s adv.gui_session = #gui_stamp ec.temp run data modify entity @s text set value [{"text":"\u2713 ","color":"green"},{"text":"$(name)","color":"green"},{"text":" \u2014 Complete","color":"dark_green"}]

# State: claimable (reached > claimed, not all claimed)
$execute unless score #ms_claimed ec.temp matches $(max).. if score #ms_reached ec.temp > #ms_claimed ec.temp as @e[type=text_display,tag=$(tag),distance=..5,limit=1] if score @s adv.gui_session = #gui_stamp ec.temp run data modify entity @s text set value [{"text":"\u2605 ","color":"gold"},{"text":"$(name)","color":"gold"},{"text":" \u2014 ","color":"yellow"},{"text":"[Claim]","color":"green","bold":true}]

# State: in progress (no stage claimable yet)
$execute unless score #ms_claimed ec.temp matches $(max).. unless score #ms_reached ec.temp > #ms_claimed ec.temp as @e[type=text_display,tag=$(tag),distance=..5,limit=1] if score @s adv.gui_session = #gui_stamp ec.temp run data modify entity @s text set value [{"text":"\u2717 ","color":"dark_gray"},{"text":"$(name)","color":"gray"}]
