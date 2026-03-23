# ID 7 (Tank): Take 200 damage (stat_dmg delta — vanilla damage_taken)
execute if score @s adv.chal_id matches 7 run scoreboard players operation #delta adv.temp = @s adv.stat_dmg
execute if score @s adv.chal_id matches 7 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 7 if score #delta adv.temp matches 150.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 7 if score #delta adv.temp matches 200.. run function evercraft:advantage/challenges/complete

# ID 8 (Deathless): Don't die for 7 days (604800 seconds)
# Increment per second. Death resets via a death detection hook (or deathCount check)
execute if score @s adv.chal_id matches 8 run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 8 if score @s adv.chal_prog matches 453600.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 8 if score @s adv.chal_prog matches 604800.. run function evercraft:advantage/challenges/complete

# ID 26 (Juggernaut): Take 500 damage and survive (stat_dmg delta — vanilla damage_taken)
execute if score @s adv.chal_id matches 26 run scoreboard players operation #delta adv.temp = @s adv.stat_dmg
execute if score @s adv.chal_id matches 26 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 26 if score #delta adv.temp matches 375.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 26 if score #delta adv.temp matches 500.. run function evercraft:advantage/challenges/complete

# ID 27 (Immortal): Survive 14 days without dying (1209600 seconds)
execute if score @s adv.chal_id matches 27 run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 27 if score @s adv.chal_prog matches 907200.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 27 if score @s adv.chal_prog matches 1209600.. run function evercraft:advantage/challenges/complete
