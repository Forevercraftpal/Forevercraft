# Spirit Tome — Check quest progress (1s self-schedule)
# Runs for all players with active spirit tome quests

# Tick down use cooldown (prevents using_item spam)
scoreboard players remove @a[scores={ec.sq_cd=1..}] ec.sq_cd 1

# Recovery: re-give tome if player lost it (every check, ~1s)
execute as @a[scores={ec.sq_has_tome=1}] unless items entity @s container.* book[custom_data~{spirit_tome:true}] run function evercraft:spirit_tome/recover_tome

execute as @a[scores={ec.sq_active=1}] run function evercraft:spirit_tome/check_player

# Re-schedule
schedule function evercraft:spirit_tome/check_progress 20t replace
