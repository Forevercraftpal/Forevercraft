# Weekly Challenge Announcement — Tell all players which tree is featured

# Store tree name for display
execute if score #adv_weekly_tree adv.temp matches 1 run data modify storage evercraft:advantage weekly_name set value "Agility"
execute if score #adv_weekly_tree adv.temp matches 2 run data modify storage evercraft:advantage weekly_name set value "Dexterity"
execute if score #adv_weekly_tree adv.temp matches 3 run data modify storage evercraft:advantage weekly_name set value "Evasion"
execute if score #adv_weekly_tree adv.temp matches 4 run data modify storage evercraft:advantage weekly_name set value "Stealth"
execute if score #adv_weekly_tree adv.temp matches 5 run data modify storage evercraft:advantage weekly_name set value "Vitality"
execute if score #adv_weekly_tree adv.temp matches 6 run data modify storage evercraft:advantage weekly_name set value "Taskmaster"
execute if score #adv_weekly_tree adv.temp matches 7 run data modify storage evercraft:advantage weekly_name set value "Beastmaster"
execute if score #adv_weekly_tree adv.temp matches 8 run data modify storage evercraft:advantage weekly_name set value "Victorian"
execute if score #adv_weekly_tree adv.temp matches 9 run data modify storage evercraft:advantage weekly_name set value "Fishing"
execute if score #adv_weekly_tree adv.temp matches 10 run data modify storage evercraft:advantage weekly_name set value "Mining"
execute if score #adv_weekly_tree adv.temp matches 11 run data modify storage evercraft:advantage weekly_name set value "Gathering"
execute if score #adv_weekly_tree adv.temp matches 12 run data modify storage evercraft:advantage weekly_name set value "Blacksmith"
execute if score #adv_weekly_tree adv.temp matches 13 run data modify storage evercraft:advantage weekly_name set value "Explorer"

function evercraft:advantage/challenges/weekly/announce_display with storage evercraft:advantage
