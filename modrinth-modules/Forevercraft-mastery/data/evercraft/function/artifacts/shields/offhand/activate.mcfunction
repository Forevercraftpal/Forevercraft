# Shield Offhand Ability — Route to specific shield's ability
# Runs as player with tank shield in offhand + sneaking

# Cooldown check
execute if score @s ec.tk_off_cd matches 1.. run return run title @s actionbar {"text":"Shield ability recharging...","color":"red","italic":true}

# Route by artifact ID (check artifact key first, then weapon key)
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{artifact:"common_deku_shield"}] run return run function evercraft:artifacts/shields/offhand/deku_shield
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{artifact:"tower_shield"}] run return run function evercraft:artifacts/shields/offhand/tower_shield
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{artifact:"dragonslayer_shield"}] run return run function evercraft:artifacts/shields/offhand/dragonslayer_shield
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{artifact:"dragonmaster_shield"}] run return run function evercraft:artifacts/shields/offhand/dragonmaster_shield
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{artifact:"golden_goliath_shield"}] run return run function evercraft:artifacts/shields/offhand/golden_goliath_shield
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{artifact:"command_block_shield"}] run return run function evercraft:artifacts/shields/offhand/command_block_shield
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{artifact:"drowned_king_shield"}] run return run function evercraft:artifacts/shields/offhand/drowned_king_shield

# Biome artifact shields
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{weapon:"trial_shield"}] run return run function evercraft:artifacts/shields/offhand/trial_shield
