# Glyphforge Effects — Apply per-player
# Remove all glyphforge modifiers, then re-apply based on held weapon
# Each rune has unique modifier IDs so multiple runes can coexist

# Strip all modifiers first
function evercraft:glyphforge/effects/strip

# Emberheart: +1.5 attack damage
execute if items entity @s weapon.mainhand *[custom_data~{rf_emberheart:1b}] run attribute @s attack_damage modifier add ec_rf_emberheart 1.5 add_value

# Verdant: +4 max health
execute if items entity @s weapon.mainhand *[custom_data~{rf_verdant:1b}] run attribute @s max_health modifier add ec_rf_verdant 4.0 add_value

# Quicksilver: +20% attack speed
execute if items entity @s weapon.mainhand *[custom_data~{rf_quicksilver:1b}] run attribute @s attack_speed modifier add ec_rf_quicksilver 0.2 add_multiplied_total

# Obsidian: +2.5 attack damage
execute if items entity @s weapon.mainhand *[custom_data~{rf_obsidian:1b}] run attribute @s attack_damage modifier add ec_rf_obsidian 2.5 add_value

# Zephyr: +15% movement speed
execute if items entity @s weapon.mainhand *[custom_data~{rf_zephyr:1b}] run attribute @s movement_speed modifier add ec_rf_zephyr 0.15 add_multiplied_total

# Briar: +3 armor
execute if items entity @s weapon.mainhand *[custom_data~{rf_briar:1b}] run attribute @s armor modifier add ec_rf_briar 3.0 add_value

# Stalwart: +2 attack damage, +1 armor
execute if items entity @s weapon.mainhand *[custom_data~{rf_stalwart:1b}] run attribute @s attack_damage modifier add ec_rf_stalwart_dmg 2.0 add_value
execute if items entity @s weapon.mainhand *[custom_data~{rf_stalwart:1b}] run attribute @s armor modifier add ec_rf_stalwart_arm 1.0 add_value

# Gilded: +1.5 luck (Dream Rate)
execute if items entity @s weapon.mainhand *[custom_data~{rf_gilded:1b}] run attribute @s luck modifier add ec_rf_gilded 1.5 add_value

# Tidecall: +6 max health
execute if items entity @s weapon.mainhand *[custom_data~{rf_tidecall:1b}] run attribute @s max_health modifier add ec_rf_tidecall 6.0 add_value

# Hearthstone: +3 armor, +1 armor toughness
execute if items entity @s weapon.mainhand *[custom_data~{rf_hearthstone:1b}] run attribute @s armor modifier add ec_rf_hearth_arm 3.0 add_value
execute if items entity @s weapon.mainhand *[custom_data~{rf_hearthstone:1b}] run attribute @s armor_toughness modifier add ec_rf_hearth_tgh 1.0 add_value

# Prism: +5 armor toughness
execute if items entity @s weapon.mainhand *[custom_data~{rf_prism:1b}] run attribute @s armor_toughness modifier add ec_rf_prism 5.0 add_value

# Tempest: +1.5 attack damage
execute if items entity @s weapon.mainhand *[custom_data~{rf_tempest:1b}] run attribute @s attack_damage modifier add ec_rf_tempest 1.5 add_value
