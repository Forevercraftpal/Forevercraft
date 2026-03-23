# Artisan Tome — On Use (right-click handler)
# Triggered by using_item advancement (fires every tick while holding right-click)

# Revoke advancement immediately
advancement revoke @s only evercraft:craftforever/tool_tome/use_tome

# Only works from mainhand
execute unless items entity @s weapon.mainhand book[custom_data~{artisan_tome:true}] run return fail

# Cooldown: using_item fires every tick, only process once per use
execute if score @s ec.tq_cd matches 1.. run return fail
scoreboard players set @s ec.tq_cd 3

# Check if all 100 quests are complete
execute if score @s ec.tq_part matches 101.. run return run tellraw @s [{text:"  [Artisan Tome] ",color:"green",bold:true},{text:"All 100 quests complete. Your spirit tools are fully attuned.",color:"gold"}]

# If no active quest: activate current quest
execute unless score @s ec.tq_active matches 1 run return run function evercraft:craftforever/spirit_tools/tome/activate

# Active quest: show current progress
function evercraft:craftforever/spirit_tools/tome/show_status
