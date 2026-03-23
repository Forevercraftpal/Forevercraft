# Artisan Tome — Check quest progress (1s self-schedule)
# Runs for all players with active artisan tome quests

# Tick down use cooldown (prevents using_item spam)
scoreboard players remove @a[scores={ec.tq_cd=1..}] ec.tq_cd 1

# Recovery: re-give tome if player lost it (every check, ~1s)
execute as @a[scores={ec.tq_has_tome=1}] unless items entity @s container.* book[custom_data~{artisan_tome:true}] run function evercraft:craftforever/spirit_tools/tome/recover_tome

execute as @a[scores={ec.tq_active=1}] run function evercraft:craftforever/spirit_tools/tome/check_player

# Re-schedule
schedule function evercraft:craftforever/spirit_tools/tome/check_progress 20t replace
