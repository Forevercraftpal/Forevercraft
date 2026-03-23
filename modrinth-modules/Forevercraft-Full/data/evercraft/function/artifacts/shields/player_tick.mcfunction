# Shield Tank — Per-Player Tick
# OPT: Only called for players holding a tank shield (cooldowns moved to bulk ops in tick)
# Run as: player holding minecraft:shield[custom_data~{tank:1b}]

# Resistance passive
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"mythical"}] run effect give @s resistance 2 1 true
execute unless items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"mythical"}] run effect give @s resistance 2 0 true

# Taunt pull: when pull CD reaches 0
execute if score @s ec.tk_pull_cd matches 0 at @s run function evercraft:artifacts/shields/taunt/pull

# Initialize pull CD for players who just started holding a shield and have taunted mobs
execute unless score @s ec.tk_pull_cd matches 0.. if score @s ec.tk_id matches 1.. run function evercraft:artifacts/shields/taunt/set_tier
