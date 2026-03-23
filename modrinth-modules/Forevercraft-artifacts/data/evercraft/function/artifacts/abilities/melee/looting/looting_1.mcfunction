# Looting Bonus 1 - Dynamic looting enchant for artifact weapons
# This function is called when player kills an entity while holding a looting_bonus:1 weapon
# The looting is temporarily added to affect loot drops

advancement revoke @s only evercraft:artifacts/abilities/melee/looting/looting_1_trigger

# Skip if weapon is awakened (mastery handles looting via enchantment progression)
execute if items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run return 0

item modify entity @s weapon.mainhand evercraft:looting_add_1
tag @s add artifact_got_looting
