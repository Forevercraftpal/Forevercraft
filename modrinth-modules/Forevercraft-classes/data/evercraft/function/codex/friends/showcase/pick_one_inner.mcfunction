# Showcase — Pick one inner (macro)
# $(rand_idx) = index to pick from temp.unlocked

$data modify storage evercraft:showcase temp.picks append from storage evercraft:showcase temp.unlocked[$(rand_idx)]
$data remove storage evercraft:showcase temp.unlocked[$(rand_idx)]
