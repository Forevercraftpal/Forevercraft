# Satchel — Copy player's bag registry to temp iteration list (macro)
# Args: id (player satchel ID)
$data modify storage evercraft:satchel temp.bag_iter set from storage evercraft:satchel registry.$(id)
