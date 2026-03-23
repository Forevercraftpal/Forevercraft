# Spirit Tome — Give tome to player when they obtain a spirit artifact
# Called from spirit artifact loot/give functions

# Don't give duplicate tomes
execute if score @s ec.sq_has_tome matches 1.. run return fail

# Mark player as having a tome
scoreboard players set @s ec.sq_has_tome 1

# Initialize quest state
scoreboard players set @s ec.sq_part 1
scoreboard players set @s ec.sq_active 0
scoreboard players set @s ec.sq_progress 0

# Give the Spirit Tome item
give @s book[custom_name={text:"Spirit Tome",color:"aqua",bold:true,italic:false},lore=[{text:"Quest 1 of 100",color:"gray",italic:true},{text:"",italic:false},{text:"A record of your spirit weapon's journey.",color:"dark_aqua",italic:true},{text:"Use to view and activate your next quest.",color:"dark_aqua",italic:true}],custom_data={spirit_tome:true,evercraft_item:true},consumable={consume_seconds:999999,sound:"intentionally_empty",has_consume_particles:false},use_cooldown={seconds:2,cooldown_group:"evercraft:spirit_tome"},max_stack_size=1,rarity=epic,enchantment_glint_override=true] 1

# Feedback
tellraw @s [{text:""},{text:"  [Spirit Tome] ",color:"aqua",bold:true},{text:"A mysterious tome materializes before you...",color:"dark_aqua"}]
tellraw @s [{text:"  "},{text:"100 challenges await. Use the tome to begin.",color:"gray"}]
playsound minecraft:item.trident.thunder master @s ~ ~ ~ 0.3 1.5
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.8 0.7
