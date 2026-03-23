# Player used a trial key on a vault block
# Revoke advancement and enter vault loot flow
advancement revoke @s only evercraft:structures/interact/use_vault

# Flag as normal vault (not ominous)
scoreboard players set @s cf.vault_ominous 0

# Enter shared vault handler
function evercraft:structures/interact/found_vault
