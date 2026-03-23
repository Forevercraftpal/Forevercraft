# Pick a random custom profession (1-11)
execute store result score #wt_prof bestiary.technical run random value 1..11

# Strip any existing profession tags
function evercraft:professions/berries/strip_all_tags

# Route to the selected profession
execute if score #wt_prof bestiary.technical matches 1 run function evercraft:professions/jobs/artificer/change_to_profession
execute if score #wt_prof bestiary.technical matches 2 run function evercraft:professions/jobs/bartender/change_to_profession
execute if score #wt_prof bestiary.technical matches 3 run function evercraft:professions/jobs/beekeeper/change_to_profession
execute if score #wt_prof bestiary.technical matches 4 run function evercraft:professions/jobs/circut_board/change_to_profession
execute if score #wt_prof bestiary.technical matches 5 run function evercraft:professions/jobs/explorer/change_to_profession
execute if score #wt_prof bestiary.technical matches 6 run function evercraft:professions/jobs/hunter/change_to_profession
execute if score #wt_prof bestiary.technical matches 7 run function evercraft:professions/jobs/miner/change_to_profession
execute if score #wt_prof bestiary.technical matches 8 run function evercraft:professions/jobs/nymph/change_to_profession
execute if score #wt_prof bestiary.technical matches 9 run function evercraft:professions/jobs/retired_adventurer/change_to_profession
execute if score #wt_prof bestiary.technical matches 10 run function evercraft:professions/jobs/wise_wanderer/change_to_profession
execute if score #wt_prof bestiary.technical matches 11 run function evercraft:professions/jobs/zookeeper/change_to_profession

# Prevent mob manager from re-processing this companion
tag @s add bestiary.settings.applied
