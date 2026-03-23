# Shared vault handler — called after on_use_vault or on_use_ominous_vault
# cf.vault_ominous is already set (0=normal, 1=ominous)
# Raycast to find the vault block the player is looking at
execute at @s anchored eyes positioned ^ ^ ^ run function evercraft:structures/interact/raycast_vault
