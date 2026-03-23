# Inscription Stone — Force
# +10% Attack Damage to players within 12 blocks (via attribute modifier)
execute as @a[distance=..12] run attribute @s attack_damage modifier remove evercraft:inscr_force
execute as @a[distance=..12] run attribute @s attack_damage modifier add evercraft:inscr_force 0.1 add_multiplied_base
