# Called when player takes damage - check if they have spire set
advancement revoke @s only evercraft:trim/spire_damage

execute if entity @s[tag=full_set_spire] run function evercraft:trim/full_set/spire/on_hit