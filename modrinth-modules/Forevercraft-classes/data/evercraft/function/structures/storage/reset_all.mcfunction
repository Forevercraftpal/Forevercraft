# Reset all players' structure crate counts and clear looted markers
# Refresh markers are preserved so ready crates remain openable
scoreboard players set @a adv.stat_struct 0
kill @e[type=marker,tag=cf.looted_marker]
tellraw @a [{"text":"[Dreams] ","color":"dark_purple"},{"text":"All structure crate progress has been reset.","color":"gray","italic":true}]
