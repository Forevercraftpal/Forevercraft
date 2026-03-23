tag @s add single_sentry
# Single Sentry Trim: Pillager War Horn
# Check if player already has the horn before giving
execute unless items entity @s container.* goat_horn[custom_data~{trim_abilities_pillager_war_horn:1b}] unless items entity @s weapon.* goat_horn[custom_data~{trim_abilities_pillager_war_horn:1b}] run give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Pillager War Horn",italic:false},lore=[{text:"Summon pillagers to attack your target",italic:false}],instrument="minecraft:seek_goat_horn",custom_data={trim_abilities_custom_item:1b,trim_abilities_pillager_war_horn:1b}]
