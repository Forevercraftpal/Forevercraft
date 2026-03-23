# Add Rare Crate trade to wandering trader
# Price: 4 netherite ingots (2 with Hero of the Village)
data modify entity @s Offers.Recipes prepend value {max_uses:1,buy:{id:"minecraft:netherite_ingot",count:4},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:fishing/crate_contents/rare/1"},"minecraft:item_name":{text:"Rare Crate",bold:true,color:"aqua"},"minecraft:custom_data":{fc_rarity:"rare",fc_stat:false},"minecraft:max_stack_size":48}}}
