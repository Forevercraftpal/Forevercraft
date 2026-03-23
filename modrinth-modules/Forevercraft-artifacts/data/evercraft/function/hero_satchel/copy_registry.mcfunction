# Hero's Satchel — Copy player's bag registry to temp iteration list (macro)
# Args: id (player hero satchel ID)
$data modify storage evercraft:hero_satchel temp.bag_iter set from storage evercraft:hero_satchel registry.$(id)
