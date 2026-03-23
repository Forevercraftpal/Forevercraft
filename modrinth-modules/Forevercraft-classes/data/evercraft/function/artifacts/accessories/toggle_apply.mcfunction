# Accessory Toggle — Apply Toggle
# Called when a player has sneaked for 1s while holding a toggleable accessory
# Sets cooldown and dispatches to the correct per-artifact toggle function

# Set cooldown (3 seconds) and reset sneak timer
scoreboard players set @s ec.t_cooldown 3
scoreboard players set @s ec.t_sneak 0

# Common
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"pebble_of_dreams"}] run function evercraft:artifacts/accessories/toggles/pebble_of_dreams
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"travelers_charm"}] run function evercraft:artifacts/accessories/toggles/travelers_charm
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"worn_compass"}] run function evercraft:artifacts/accessories/toggles/worn_compass

# Uncommon
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"glowstone_pendant"}] run function evercraft:artifacts/accessories/toggles/glowstone_pendant
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"iron_talisman"}] run function evercraft:artifacts/accessories/toggles/iron_talisman
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"featherweight_stone"}] run function evercraft:artifacts/accessories/toggles/featherweight_stone

# Rare
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"diamond_ring"}] run function evercraft:artifacts/accessories/toggles/diamond_ring
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ruin_watch"}] run function evercraft:artifacts/accessories/toggles/ruin_watch
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"heartstone"}] run function evercraft:artifacts/accessories/toggles/heartstone
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"stormcatcher_shard"}] run function evercraft:artifacts/accessories/toggles/stormcatcher_shard

# Ornate
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"merchants_coin"}] run function evercraft:artifacts/accessories/toggles/merchants_coin
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"healers_salve"}] run function evercraft:artifacts/accessories/toggles/healers_salve
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"wind_chime"}] run function evercraft:artifacts/accessories/toggles/wind_chime
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"anglers_pearl"}] run function evercraft:artifacts/accessories/toggles/anglers_pearl
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"phoenix_feather"}] run function evercraft:artifacts/accessories/toggles/phoenix_feather

# Exquisite
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ring_of_undying"}] run function evercraft:artifacts/accessories/toggles/ring_of_undying
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"void_heart"}] run function evercraft:artifacts/accessories/toggles/void_heart
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"phantom_charm"}] run function evercraft:artifacts/accessories/toggles/phantom_charm
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"sculk_heart"}] run function evercraft:artifacts/accessories/toggles/sculk_heart

# Mythical
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"redstone_heart"}] run function evercraft:artifacts/accessories/toggles/redstone_heart
