# Accessory Toggle — Check if player holds a toggleable accessory
# Run as sneaking player with no cooldown (@s context)
# OPT: Extracted from toggle_check to avoid 20 @a selector evaluations

# Common
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"pebble_of_dreams"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"travelers_charm"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"worn_compass"}] run tag @s add ec.t_holding

# Uncommon
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"glowstone_pendant"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"iron_talisman"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"featherweight_stone"}] run tag @s add ec.t_holding

# Rare
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"diamond_ring"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ruin_watch"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"heartstone"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"stormcatcher_shard"}] run tag @s add ec.t_holding

# Ornate
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"merchants_coin"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"healers_salve"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"wind_chime"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"anglers_pearl"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"phoenix_feather"}] run tag @s add ec.t_holding

# Exquisite
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ring_of_undying"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"void_heart"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"phantom_charm"}] run tag @s add ec.t_holding
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"sculk_heart"}] run tag @s add ec.t_holding

# Mythical
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"redstone_heart"}] run tag @s add ec.t_holding
