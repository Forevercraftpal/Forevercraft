# Add Ornate Crate trade to wandering trader
# Price: 8 netherite ingots (4 with Hero of the Village)
data modify entity @s Offers.Recipes prepend value {max_uses:1,buy:{id:"minecraft:netherite_ingot",count:8},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:fishing/crate_contents/ornate/1"},"minecraft:item_name":{text:"Ornate Crate",bold:true,color:"dark_purple"},"minecraft:custom_data":{fc_rarity:"ornate",fc_stat:false},"minecraft:max_stack_size":32}}}
