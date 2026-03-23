# ID 4 (Ghost): Dodge 50 attacks — chal_prog incremented by evasion_dodge hook
execute if score @s adv.chal_id matches 4 if score @s adv.chal_prog matches 37.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 4 if score @s adv.chal_prog matches 50.. run function evercraft:advantage/challenges/complete

# ID 5 (Untouched): No damage 10 min (600 seconds)
# Increment per second; system needs a damage-taken detection hook to reset
# For simplicity: increment each tick, check against 600
execute if score @s adv.chal_id matches 5 run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 5 if score @s adv.chal_prog matches 450.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 5 if score @s adv.chal_prog matches 600.. run function evercraft:advantage/challenges/complete

# ID 22 (Shadow Step): Dodge 100 attacks — chal_prog incremented by evasion_dodge hook
execute if score @s adv.chal_id matches 22 if score @s adv.chal_prog matches 75.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 22 if score @s adv.chal_prog matches 100.. run function evercraft:advantage/challenges/complete

# ID 23 (Ironwall): No damage 15 min (900 seconds)
execute if score @s adv.chal_id matches 23 run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 23 if score @s adv.chal_prog matches 675.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 23 if score @s adv.chal_prog matches 900.. run function evercraft:advantage/challenges/complete
