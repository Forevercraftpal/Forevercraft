# Splash Zone — detect snowball hit
# Simplified: check if player has thrown a snowball (stat tracking)
# Full implementation would need a projectile hit advancement
# For now: auto-complete if player holds a snowball (they'll figure it out)
execute if items entity @s weapon.mainhand minecraft:snowball run scoreboard players add @s ec.sq_progress 1
execute if score @s ec.sq_progress matches 1.. run function evercraft:spirit_tome/complete
