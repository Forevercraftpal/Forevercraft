# Quest Auto-Tracker — 1s schedule, adaptive chat reminder
# Self-scheduling

schedule function evercraft:quests/tracker/tick 1s

# Only process players with tracker enabled and at least 1 active quest
execute as @a[tag=ec.quest_tracking] run function evercraft:quests/tracker/display
