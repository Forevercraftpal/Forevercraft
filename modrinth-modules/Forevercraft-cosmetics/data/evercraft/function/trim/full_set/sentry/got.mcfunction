tag @s add full_set_sentry
# Sentry Trim - Full Set: The Inbetween Crossbow
# Check if player already has the crossbow before giving
execute unless items entity @s container.* crossbow[custom_data~{trim_abilities_sentry_crossbow:1b}] unless items entity @s weapon.* crossbow[custom_data~{trim_abilities_sentry_crossbow:1b}] run give @s crossbow[unbreakable={},enchantments={multishot:1b,piercing:4b,quick_charge:5b},custom_name={text:"The Inbetween",italic:false},enchantment_glint_override=true,custom_data={trim_abilities_custom_item:1b,trim_abilities_sentry_crossbow:1b}]