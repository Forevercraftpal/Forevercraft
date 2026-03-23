# Beastlord — On-hit router
# Triggered by player_hurt_entity advancement (melee only)

# Re-arm advancement
advancement revoke @s only evercraft:artifacts/beastlord/on_hit

# Verify still holding beastlord spear
execute unless items entity @s weapon.mainhand *[custom_data~{beastlord:true}] run return 0

# Route to spear-specific on-hit ability
execute if score @s ec.bl_spear matches 1 run function evercraft:artifacts/beastlord/on_hit/boneclub
execute if score @s ec.bl_spear matches 2 run function evercraft:artifacts/beastlord/on_hit/lance
execute if score @s ec.bl_spear matches 3 run function evercraft:artifacts/beastlord/on_hit/battlestaff
execute if score @s ec.bl_spear matches 4 run function evercraft:artifacts/beastlord/on_hit/bone_cudgel
execute if score @s ec.bl_spear matches 5 run function evercraft:artifacts/beastlord/on_hit/glaive
execute if score @s ec.bl_spear matches 6 run function evercraft:artifacts/beastlord/on_hit/infinity_lance
execute if score @s ec.bl_spear matches 7 run function evercraft:artifacts/beastlord/on_hit/gungnir_spear
execute if score @s ec.bl_spear matches 8 run function evercraft:artifacts/beastlord/on_hit/longinus
execute if score @s ec.bl_spear matches 9 run function evercraft:artifacts/beastlord/on_hit/dragonmaster_lance
