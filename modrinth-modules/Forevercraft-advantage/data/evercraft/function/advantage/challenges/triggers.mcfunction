# Challenge Triggers
scoreboard players operation #chal_val adv.temp = @s adv.challenge

# View menu
execute if score #chal_val adv.temp matches 0 run function evercraft:advantage/challenges/offer_menu

# Cancel active challenge
execute if score #chal_val adv.temp matches -1 run function evercraft:advantage/challenges/cancel

# Accept challenge (1-17)
execute if score #chal_val adv.temp matches 1..17 run function evercraft:advantage/challenges/accept
