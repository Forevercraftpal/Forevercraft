# Increment ranged hit stat counter and revoke advancement to re-trigger
scoreboard players add @s adv.stat_ranged 1
advancement revoke @s only evercraft:advantage/track_ranged
