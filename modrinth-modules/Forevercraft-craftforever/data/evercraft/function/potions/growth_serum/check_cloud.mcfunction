# Growth Serum — Check single cloud
# Run as each unchecked area_effect_cloud — mark checked + apply if Growth Serum specifically
# Must match instant_health effect (not just thick base) to avoid killing other custom lingering potions
# (Treasure Seeker, Miner's Might, Potion of the Angler, Hunter's Focus all use thick base too)
tag @s add ec.growth_checked
execute if data entity @s {potion_contents:{potion:"minecraft:thick",custom_effects:[{id:"minecraft:instant_health"}]}} at @s run function evercraft:potions/growth_serum/apply
