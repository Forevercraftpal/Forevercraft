# Increment times-hit stat counter and revoke advancement to re-trigger
scoreboard players add @s adv.stat_hit 1
advancement revoke @s only evercraft:advantage/track_hit
# Untouched challenge (ID 5) / Ironwall (ID 23): reset progress on taking damage
execute if score @s adv.chal_id matches 5 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 23 run scoreboard players set @s adv.chal_prog 0
