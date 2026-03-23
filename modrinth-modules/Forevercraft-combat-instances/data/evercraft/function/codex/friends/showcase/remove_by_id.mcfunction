# Showcase — Remove entry matching temp.filter_id from temp.unlocked (macro)
# Iterates through unlocked list and removes matching entry
$data remove storage evercraft:showcase temp.unlocked[{id:"$(filter_id)"}]
