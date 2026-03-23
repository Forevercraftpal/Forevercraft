summon item ~ ~ ~ {Item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_data":{vault_loot_placeholder:1b}}}}
$loot replace entity @n[type=item,nbt={Item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_data":{vault_loot_placeholder:1b}}}}] contents loot evercraft:trim/$(vault)
