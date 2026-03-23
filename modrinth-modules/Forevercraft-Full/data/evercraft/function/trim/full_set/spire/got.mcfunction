# Don't re-run if already active
execute if entity @s[tag=full_set_spire] run return 0

tag @s add full_set_spire

function evercraft:trim/single/spire/got
tag @s remove single_spire
