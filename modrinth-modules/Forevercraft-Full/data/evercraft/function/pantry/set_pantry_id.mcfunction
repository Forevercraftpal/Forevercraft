# Pantry — Set pantry_id on hopper_minecart item (macro)
# Args: new_pid
$data modify entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] Items[0].components."minecraft:custom_data".pantry_id set value $(new_pid)
