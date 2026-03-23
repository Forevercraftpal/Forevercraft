# Add Ornate Crate trade to wandering trader with Hero of the Village discount
# Price: 4 netherite ingots (discounted from 8)
data modify entity @s Offers.Recipes prepend value {max_uses:1,buy:{id:"minecraft:netherite_ingot",count:4},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:fishing/crate_contents/ornate/1"},"minecraft:item_name":{text:"Ornate Crate",bold:true,color:"dark_purple"},"minecraft:custom_data":{fc_rarity:"ornate",fc_stat:false},"minecraft:max_stack_size":32}}}
