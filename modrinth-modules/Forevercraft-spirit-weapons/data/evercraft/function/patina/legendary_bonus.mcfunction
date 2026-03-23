# Patina — Apply Legendary +2% attribute modifier
# #pat_slot_type: 0=mainhand, 1=head, 2=chest, 3=legs, 4=feet

# Ensure attribute_modifiers component exists
execute unless data entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:attribute_modifiers" run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:attribute_modifiers" set value []

# Weapons: +2% attack damage
execute if score #pat_slot_type ec.var matches 0 run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:attribute_modifiers" append value {type:"attack_damage",id:"evercraft:patina/legendary",amount:0.02d,operation:"add_multiplied_base",slot:"mainhand"}

# Armor: +2% max health (slot-specific)
execute if score #pat_slot_type ec.var matches 1 run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:attribute_modifiers" append value {type:"max_health",id:"evercraft:patina/legendary",amount:0.02d,operation:"add_multiplied_base",slot:"head"}
execute if score #pat_slot_type ec.var matches 2 run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:attribute_modifiers" append value {type:"max_health",id:"evercraft:patina/legendary",amount:0.02d,operation:"add_multiplied_base",slot:"chest"}
execute if score #pat_slot_type ec.var matches 3 run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:attribute_modifiers" append value {type:"max_health",id:"evercraft:patina/legendary",amount:0.02d,operation:"add_multiplied_base",slot:"legs"}
execute if score #pat_slot_type ec.var matches 4 run data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:attribute_modifiers" append value {type:"max_health",id:"evercraft:patina/legendary",amount:0.02d,operation:"add_multiplied_base",slot:"feet"}
