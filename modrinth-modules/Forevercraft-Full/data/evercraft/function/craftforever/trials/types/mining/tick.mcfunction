# Mining Trial — Per-tick score tracking
# Run as/at: ec.tt_player in a mining trial (type 1)
# Computes delta between current stats and snapshot to determine score

# Route to tier-specific tracker
execute if score @s ec.tt_tier matches 1 run function evercraft:craftforever/trials/types/mining/track_t1
execute if score @s ec.tt_tier matches 2 run function evercraft:craftforever/trials/types/mining/track_t2
execute if score @s ec.tt_tier matches 3 run function evercraft:craftforever/trials/types/mining/track_t3
execute if score @s ec.tt_tier matches 4 run function evercraft:craftforever/trials/types/mining/track_t4
execute if score @s ec.tt_tier matches 5 run function evercraft:craftforever/trials/types/mining/track_t5
execute if score @s ec.tt_tier matches 6 run function evercraft:craftforever/trials/types/mining/track_t6
execute if score @s ec.tt_tier matches 7 run function evercraft:craftforever/trials/types/mining/track_t7
execute if score @s ec.tt_tier matches 8 run function evercraft:craftforever/trials/types/mining/track_t8
execute if score @s ec.tt_tier matches 9 run function evercraft:craftforever/trials/types/mining/track_t9
execute if score @s ec.tt_tier matches 10 run function evercraft:craftforever/trials/types/mining/track_t10
