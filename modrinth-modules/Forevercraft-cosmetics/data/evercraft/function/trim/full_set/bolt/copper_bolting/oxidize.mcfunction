# get command to replace copper block ready
$execute if data storage trim_abilities:copper_bolting {root:{degredation_level:'none'}} run data modify storage trim_abilities:copper_bolting root.oxidize_command set value 'item replace entity @s player.cursor with $(wax_flag)exposed_$(base_id) $(count)'
$execute if data storage trim_abilities:copper_bolting {root:{degredation_level:'exposed_'}} run data modify storage trim_abilities:copper_bolting root.oxidize_command set value 'item replace entity @s player.cursor with $(wax_flag)weathered_$(base_id) $(count)'
$execute if data storage trim_abilities:copper_bolting {root:{degredation_level:'weathered_'}} run data modify storage trim_abilities:copper_bolting root.oxidize_command set value 'item replace entity @s player.cursor with $(wax_flag)oxidized_$(base_id) $(count)'
$execute if data storage trim_abilities:copper_bolting {root:{degredation_level:'oxidized_'}} run data modify storage trim_abilities:copper_bolting root.oxidize_command set value 'item replace entity @s player.cursor with $(wax_flag)oxidized_$(base_id) $(count)'

# getting here means this is a valid item for bolt:
$execute unless data storage trim_abilities:copper_bolting {root:{slot:0}} run item replace entity @s player.crafting.0 from entity @s player.crafting.$(slot)
$execute unless data storage trim_abilities:copper_bolting {root:{slot:0}} run item replace entity @s player.crafting.$(slot) with air

tag @s add trim_abilities_bolting

item replace entity @s player.crafting.1 with blaze_powder[enchantment_glint_override=true,custom_name={text:"Oxidize",italic:false},custom_data={trim_abilities_bolting:1b,trim_abilities_oxidize:1b,trim_abilities_custom_item:1b},lore=[{text:"Becomes a ghost item",italic:false},{text:"when closing inventory :/",italic:false}]]
item replace entity @s player.crafting.3 with grindstone[enchantment_glint_override=true,custom_name={text:"Scrape",italic:false},custom_data={trim_abilities_bolting:1b,trim_abilities_scrape:1b,trim_abilities_custom_item:1b},lore=[{text:"Becomes a ghost item",italic:false},{text:"when closing inventory :/",italic:false}]]
item replace entity @s player.crafting.2 with stick[enchantment_glint_override=true,custom_name={text:"Cancel",italic:false},custom_data={trim_abilities_bolting:1b,trim_abilities_cancel:1b,trim_abilities_custom_item:1b},lore=[{text:"Becomes a ghost item",italic:false},{text:"when closing inventory :/",italic:false}]]
