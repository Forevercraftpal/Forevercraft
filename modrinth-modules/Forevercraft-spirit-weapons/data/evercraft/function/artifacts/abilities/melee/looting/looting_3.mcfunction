# Looting Bonus 3 - Dynamic looting enchant for artifact weapons

advancement revoke @s only evercraft:artifacts/abilities/melee/looting/looting_3_trigger

# Skip if weapon is awakened (mastery handles looting via enchantment progression)
execute if items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run return 0

item modify entity @s weapon.mainhand evercraft:looting_add_3
tag @s add artifact_got_looting
