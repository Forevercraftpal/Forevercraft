# Shield On-Block Passive — runs as blocking player
# Applies tier-scaled effect when successfully blocking an attack
# Called from party/triggers/on_shield_block

# Must have a tank shield equipped (mainhand or offhand)
execute unless items entity @s weapon.mainhand minecraft:shield[custom_data~{tank:1b}] unless items entity @s weapon.offhand minecraft:shield[custom_data~{tank:1b}] run return 0

# Cooldown check (3s)
execute if score @s ec.shield_cd matches 1.. run return 0
scoreboard players set @s ec.shield_cd 3

# Dispatch by tier (highest first) — check mainhand then offhand
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"mythical"}] run return run function evercraft:artifacts/shields/block_mythical
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{tier:"mythical"}] run return run function evercraft:artifacts/shields/block_mythical
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"exquisite"}] run return run function evercraft:artifacts/shields/block_exquisite
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{tier:"exquisite"}] run return run function evercraft:artifacts/shields/block_exquisite
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"rare"}] run return run function evercraft:artifacts/shields/block_rare
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{tier:"rare"}] run return run function evercraft:artifacts/shields/block_rare
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"uncommon"}] run return run function evercraft:artifacts/shields/block_uncommon
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{tier:"uncommon"}] run return run function evercraft:artifacts/shields/block_uncommon
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"common"}] run return run function evercraft:artifacts/shields/block_common
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{tier:"common"}] run return run function evercraft:artifacts/shields/block_common
