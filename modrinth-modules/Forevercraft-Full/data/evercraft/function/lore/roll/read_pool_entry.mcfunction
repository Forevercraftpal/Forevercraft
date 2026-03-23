# Lore Roll: Read pool entry at index (macro)
# Reads temp.pool[pick_idx] into ec.lore_set_id on @s
$execute store result score @s ec.lore_set_id run data get storage evercraft:lore temp.pool[$(pick_idx)]
