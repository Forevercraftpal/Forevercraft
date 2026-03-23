tag @s add full_set_silence
# Silence Trim - Full Set: Sonic Boom Attack + Haunted Bow
# Check if player already has the bow before giving
execute unless items entity @s container.* bow[custom_data~{trim_abilities_sonic_boom:1b}] unless items entity @s weapon.* bow[custom_data~{trim_abilities_sonic_boom:1b}] run give @s bow[unbreakable={},enchantments={infinity:1b},custom_name={text:"Haunted Bow",italic:false},enchantment_glint_override=true,custom_data={trim_abilities_sonic_boom:1b,trim_abilities_custom_item:1b}]