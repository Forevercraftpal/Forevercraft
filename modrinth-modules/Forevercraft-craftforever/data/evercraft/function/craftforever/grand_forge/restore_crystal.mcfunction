# Restore consumed Forge Crystal (1-tick delay after consume_item destroys it)
# Only restore for tagged players who just used the crystal
execute as @a[tag=ec.gf_crystal_restore] unless items entity @s container.* emerald[custom_data~{forge_crystal:true}] unless items entity @s weapon.offhand emerald[custom_data~{forge_crystal:true}] run loot give @s loot evercraft:craftforever/forge_crystal
execute as @a[tag=ec.gf_crystal_restore] run tag @s remove ec.gf_crystal_restore
