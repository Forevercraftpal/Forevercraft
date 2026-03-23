# Showcase — Read picked entry from temp.picks by index (macro)
# $(picked_idx)
$data modify storage evercraft:showcase temp.picked_entry set from storage evercraft:showcase temp.picks[$(picked_idx)]
