# Infernal Hook — Searing Line: auto-cook caught fish
# Called from check_crate when player holds the Infernal Hook
# Swaps 1 raw fish for 1 cooked (per catch event)

# Try raw cod first — remove 1, give 1 cooked
execute store result score #sear adv.temp run clear @s cod 0
execute if score #sear adv.temp matches 1.. run clear @s cod 1
execute if score #sear adv.temp matches 1.. run give @s cooked_cod 1
execute if score #sear adv.temp matches 1.. run return 0

# Try raw salmon — remove 1, give 1 cooked
execute store result score #sear adv.temp run clear @s salmon 0
execute if score #sear adv.temp matches 1.. run clear @s salmon 1
execute if score #sear adv.temp matches 1.. run give @s cooked_salmon 1