# Coast trim full set: +1 Looting on kill, removed next tick
advancement revoke @s only evercraft:trim/kill_mob_coast

# Only apply if player has full coast trim set
execute unless entity @s[tag=full_set_coast] run return 0

item modify entity @s weapon.mainhand evercraft:trim/looting_add
tag @s add full_set_coast_got_looting
