# Artisan Tome — Recover lost tome
# Only runs if ec.tq_has_tome=1 but no tome in inventory

# Also check equipment (offhand)
execute if items entity @s weapon.offhand book[custom_data~{artisan_tome:true}] run return fail

# Re-give the tome (don't reset quest state)
give @s book[custom_name={text:"Artisan Tome",color:"green",bold:true,italic:false},lore=[{text:"Quest in progress",color:"gray",italic:true},{text:"",italic:false},{text:"A record of your spirit tool's journey.",color:"dark_green",italic:true},{text:"Use to view and activate your next quest.",color:"dark_green",italic:true}],custom_data={artisan_tome:true,evercraft_item:true},consumable={consume_seconds:999999,sound:"intentionally_empty",has_consume_particles:false},use_cooldown={seconds:2,cooldown_group:"evercraft:artisan_tome"},max_stack_size=1,rarity=epic,enchantment_glint_override=true] 1

tellraw @s [{text:"  [Artisan Tome] ",color:"green",bold:true},{text:"Your tome has been restored.",color:"gray"}]
