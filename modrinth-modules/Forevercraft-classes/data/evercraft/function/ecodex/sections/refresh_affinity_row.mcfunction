# Ecodex — Refresh One Affinity Class Row (macro)
# Args: {cls:"rg", tag:"Ec.AffS1", name:"Rogue", max:7}
# Run as: player

$execute store result score #aff_stage ec.temp run scoreboard players get @s ec.affs_$(cls)

# Count claimed stages
scoreboard players set #ms_claimed ec.temp 0
$execute if entity @s[advancements={evercraft:claim/affinity/$(cls)_1=true}] run scoreboard players add #ms_claimed ec.temp 1
$execute if entity @s[advancements={evercraft:claim/affinity/$(cls)_2=true}] run scoreboard players add #ms_claimed ec.temp 1
$execute if entity @s[advancements={evercraft:claim/affinity/$(cls)_3=true}] run scoreboard players add #ms_claimed ec.temp 1
$execute if entity @s[advancements={evercraft:claim/affinity/$(cls)_4=true}] run scoreboard players add #ms_claimed ec.temp 1
$execute if entity @s[advancements={evercraft:claim/affinity/$(cls)_5=true}] run scoreboard players add #ms_claimed ec.temp 1
$execute if entity @s[advancements={evercraft:claim/affinity/$(cls)_6=true}] run scoreboard players add #ms_claimed ec.temp 1
$execute if entity @s[advancements={evercraft:claim/affinity/$(cls)_7=true}] run scoreboard players add #ms_claimed ec.temp 1

# State: all stages claimed
$execute if score #ms_claimed ec.temp matches $(max).. run data modify entity @e[type=text_display,tag=$(tag),limit=1,sort=nearest] text set value [{"text":"\u2713 ","color":"green"},{"text":"$(name)","color":"green"},{"text":" \u2014 Complete","color":"dark_green"}]

# State: claimable (stage > claimed)
$execute unless score #ms_claimed ec.temp matches $(max).. if score #aff_stage ec.temp > #ms_claimed ec.temp run data modify entity @e[type=text_display,tag=$(tag),limit=1,sort=nearest] text set value [{"text":"\u2605 ","color":"gold"},{"text":"$(name)","color":"gold"},{"text":" \u2014 ","color":"yellow"},{"text":"[Claim]","color":"green","bold":true}]

# State: in progress
$execute unless score #ms_claimed ec.temp matches $(max).. unless score #aff_stage ec.temp > #ms_claimed ec.temp run data modify entity @e[type=text_display,tag=$(tag),limit=1,sort=nearest] text set value [{"text":"\u2717 ","color":"dark_gray"},{"text":"$(name)","color":"gray"}]
