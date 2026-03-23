# Cosmetics Tick — Route to active cosmetic effect
# Called as: execute as @a[scores={adv.cosm_active=1..}] at @s

execute if score @s adv.cosm_active matches 1 run function evercraft:advantage/cosmetics/particle_aura
execute if score @s adv.cosm_active matches 2 run function evercraft:advantage/cosmetics/title_tag
execute if score @s adv.cosm_active matches 3 run function evercraft:advantage/cosmetics/effect_trail
execute if score @s adv.cosm_active matches 4 run function evercraft:advantage/cosmetics/glow_outline
execute if score @s adv.cosm_active matches 5 run function evercraft:advantage/cosmetics/crown_particles
