### if going to '(waxed_)copper_block', append '_block'
# get command to replace copper block ready
$execute if data storage trim_abilities:copper_bolting {root:{degredation_level:'oxidized_'}} run return run data modify storage trim_abilities:copper_bolting root.scrape_command set value 'item replace entity @s player.cursor with $(wax_flag)weathered_$(base_id) $(count)'
$execute if data storage trim_abilities:copper_bolting {root:{degredation_level:'weathered_'}} run return run data modify storage trim_abilities:copper_bolting root.scrape_command set value 'item replace entity @s player.cursor with $(wax_flag)exposed_$(base_id) $(count)'

## wierd '_block' suffix
$execute if data storage trim_abilities:copper_bolting {root:{degredation_level:'exposed_'}} if items entity @s player.crafting.0 exposed_copper run return run data modify storage trim_abilities:copper_bolting root.scrape_command set value 'item replace entity @s player.cursor with $(wax_flag)$(base_id)_block $(count)'
$execute if data storage trim_abilities:copper_bolting {root:{degredation_level:'none'}} if items entity @s player.crafting.0 copper_block run return run data modify storage trim_abilities:copper_bolting root.scrape_command set value 'item replace entity @s player.cursor with $(wax_flag)$(base_id)_block $(count)'

## proceed as normal
$execute if data storage trim_abilities:copper_bolting {root:{degredation_level:'exposed_'}} run return run data modify storage trim_abilities:copper_bolting root.scrape_command set value 'item replace entity @s player.cursor with $(wax_flag)$(base_id) $(count)'
$execute if data storage trim_abilities:copper_bolting {root:{degredation_level:'none'}} run return run data modify storage trim_abilities:copper_bolting root.scrape_command set value 'item replace entity @s player.cursor with $(wax_flag)$(base_id) $(count)'

# getting here means this is a valid item for bolt (those extra command are handled in 'oxidize')
## at this point, the other function should have completed already
