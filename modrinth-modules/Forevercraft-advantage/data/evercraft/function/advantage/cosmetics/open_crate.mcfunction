# Cosmetic Crate Opening — RNG roll for random cosmetic
# Called by consume_item advancement when crate is consumed

advancement revoke @s only evercraft:cosmetic_crate/use

# Roll 1-37 using random command (1.21.6+ has /random)
execute store result score @s adv.temp run random value 1..37

# Route: 1-19 = particle, 20-37 = title
execute if score @s adv.temp matches 1..19 run function evercraft:advantage/cosmetics/crate_unlock_particle
execute if score @s adv.temp matches 20..37 run function evercraft:advantage/cosmetics/crate_unlock_title
