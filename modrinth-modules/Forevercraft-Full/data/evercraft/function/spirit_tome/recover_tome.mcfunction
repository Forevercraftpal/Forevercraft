# Spirit Tome — Recover lost tome
# Only runs if ec.sq_has_tome=1 but no tome in inventory

# Also check equipment (offhand)
execute if items entity @s weapon.offhand book[custom_data~{spirit_tome:true}] run return fail

# Re-give the tome (don't reset quest state)
give @s book[custom_name={text:"Spirit Tome",color:"aqua",bold:true,italic:false},lore=[{text:"Quest in progress",color:"gray",italic:true},{text:"",italic:false},{text:"A record of your spirit weapon's journey.",color:"dark_aqua",italic:true},{text:"Use to view and activate your next quest.",color:"dark_aqua",italic:true}],custom_data={spirit_tome:true,evercraft_item:true},consumable={consume_seconds:999999,sound:"intentionally_empty",has_consume_particles:false},use_cooldown={seconds:2,cooldown_group:"evercraft:spirit_tome"},max_stack_size=1,rarity=epic,enchantment_glint_override=true] 1

tellraw @s [{text:"  [Spirit Tome] ",color:"aqua",bold:true},{text:"Your tome has been restored.",color:"gray"}]
