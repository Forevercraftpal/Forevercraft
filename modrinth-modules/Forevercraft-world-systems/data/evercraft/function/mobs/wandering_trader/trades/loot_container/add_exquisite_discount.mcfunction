# Add Exquisite Crate trade to wandering trader with Hero of the Village discount
# Price: 8 netherite ingots (discounted from 16)
data modify entity @s Offers.Recipes prepend value {max_uses:1,buy:{id:"minecraft:netherite_ingot",count:8},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:fishing/crate_contents/exquisite/1"},"minecraft:item_name":{text:"Exquisite Crate",bold:true,color:"light_purple"},"minecraft:custom_data":{fc_rarity:"exquisite",fc_stat:false},"minecraft:max_stack_size":16}}}
