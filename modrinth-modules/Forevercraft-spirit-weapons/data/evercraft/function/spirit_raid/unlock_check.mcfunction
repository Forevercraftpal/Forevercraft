# Spirit Raid Unlock — Check (runs as player after dungeon completion)
# Called from dungeon/complete for floors < 10

# Already unlocked — just show the descent prompt
execute if score @s ec.sr_unlocked matches 1 run function evercraft:spirit_raid/show_prompt
execute if score @s ec.sr_unlocked matches 1 run return 0

# First dungeon clear — unlock and prompt
function evercraft:spirit_raid/first_unlock
