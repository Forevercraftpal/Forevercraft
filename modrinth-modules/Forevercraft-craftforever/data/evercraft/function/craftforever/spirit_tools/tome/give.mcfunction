# Artisan Tome — Give tome to player when they obtain a spirit tool
# Called when spirit tool detected but no tome yet

# Don't give duplicate tomes
execute if score @s ec.tq_has_tome matches 1.. run return fail

# Mark player as having a tome
scoreboard players set @s ec.tq_has_tome 1

# Initialize quest state
scoreboard players set @s ec.tq_part 1
scoreboard players set @s ec.tq_active 0
scoreboard players set @s ec.tq_progress 0

# Give the Artisan Tome item
give @s book[custom_name={text:"Artisan Tome",color:"green",bold:true,italic:false},lore=[{text:"Quest 1 of 100",color:"gray",italic:true},{text:"",italic:false},{text:"A record of your spirit tool's journey.",color:"dark_green",italic:true},{text:"Use to view and activate your next quest.",color:"dark_green",italic:true}],custom_data={artisan_tome:true,evercraft_item:true},consumable={consume_seconds:999999,sound:"intentionally_empty",has_consume_particles:false},use_cooldown={seconds:2,cooldown_group:"evercraft:artisan_tome"},max_stack_size=1,rarity=epic,enchantment_glint_override=true] 1

# Feedback
tellraw @s [{text:""},{text:"  [Artisan Tome] ",color:"green",bold:true},{text:"A craftsman's journal materializes before you...",color:"dark_green"}]
tellraw @s [{text:"  "},{text:"100 challenges await. Use the tome to begin.",color:"gray"}]
playsound minecraft:item.trident.thunder master @s ~ ~ ~ 0.3 1.5
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.8 0.7
