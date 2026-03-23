# Increment food stat counter and revoke advancement to re-trigger
scoreboard players add @s adv.stat_food 1
advancement revoke @s only evercraft:advantage/track_food
