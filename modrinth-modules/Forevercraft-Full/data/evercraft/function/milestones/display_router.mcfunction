# World Milestones — Display Router
# Trigger value = page number (1-6), default 1
execute if score @s ec.milestones matches 1 run function evercraft:milestones/display/page1
execute if score @s ec.milestones matches 2 run function evercraft:milestones/display/page2
execute if score @s ec.milestones matches 3 run function evercraft:milestones/display/page3
execute if score @s ec.milestones matches 4 run function evercraft:milestones/display/page4
execute if score @s ec.milestones matches 5 run function evercraft:milestones/display/page5
execute if score @s ec.milestones matches 6 run function evercraft:milestones/display/page6
# Out of range — show page 1
execute if score @s ec.milestones matches 7.. run function evercraft:milestones/display/page1
