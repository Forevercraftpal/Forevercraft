# Player used an ominous trial key on a vault block
# Revoke advancement and enter vault loot flow
advancement revoke @s only evercraft:structures/interact/use_ominous_vault

# Flag as ominous vault
scoreboard players set @s cf.vault_ominous 1

# Enter shared vault handler
function evercraft:structures/interact/found_vault
