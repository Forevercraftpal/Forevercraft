# Patina — Apply stage upgrade to cart item
# Reads #pat_new_stage ec.var for the new stage

# Write new stage
execute store result entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:custom_data".patina int 1 run scoreboard players get #pat_new_stage ec.var

# Ensure lore component exists
execute unless data entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:lore" run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:lore" set value []

# For awakened items, save the mastery line (always last) so we can re-append it after patina
data remove storage evercraft:patina saved_mastery
execute if data entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:custom_data"{awakened:1b} run data modify storage evercraft:patina saved_mastery set from entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:lore"[-1]
execute if data entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:custom_data"{awakened:1b} run data remove entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:lore"[-1]

# Add stage-appropriate lore line (now inserted before mastery for awakened items)
execute if score #pat_new_stage ec.var matches 1 run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:lore" append value {text:"Worn by adventure.",color:"gray",italic:true}
execute if score #pat_new_stage ec.var matches 2 run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:lore" append value {text:"Seasoned by countless battles.",color:"#C0A060",italic:true}
execute if score #pat_new_stage ec.var matches 3 run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:lore" append value {text:"This artifact carries stories untold.",color:"#D4A574",italic:true}
execute if score #pat_new_stage ec.var matches 4 run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:lore" append value {text:"A legend in its own right.",color:"gold",italic:true,bold:true}

# Re-append mastery line for awakened items (keeps mastery always last)
execute if data storage evercraft:patina saved_mastery run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:lore" append from storage evercraft:patina saved_mastery

# Legendary bonus: +2% attribute modifier
execute if score #pat_new_stage ec.var matches 4 run function evercraft:patina/legendary_bonus

# Announcements
execute if score #pat_new_stage ec.var matches 1 run tellraw @s [{text:"  ",color:"gray"},{text:"Your artifact has become ",color:"white"},{text:"Worn",color:"gray",bold:true},{text:".",color:"white"}]
execute if score #pat_new_stage ec.var matches 2 run tellraw @s [{text:"  ",color:"#C0A060"},{text:"Your artifact has become ",color:"white"},{text:"Seasoned",color:"#C0A060",bold:true},{text:".",color:"white"}]
execute if score #pat_new_stage ec.var matches 3 run tellraw @s [{text:"  ",color:"#D4A574"},{text:"Your artifact has become ",color:"white"},{text:"Storied",color:"#D4A574",bold:true},{text:"!",color:"white"}]
execute if score #pat_new_stage ec.var matches 4 run tellraw @s [{text:"  ",color:"gold",bold:true},{text:"Your artifact has achieved ",color:"gold"},{text:"LEGENDARY",color:"gold",bold:true},{text:" status!",color:"gold"}]

# Sounds
execute if score #pat_new_stage ec.var matches 1 run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1.2
execute if score #pat_new_stage ec.var matches 2 run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.7 1.0
execute if score #pat_new_stage ec.var matches 3 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
execute if score #pat_new_stage ec.var matches 4 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0 1.0
