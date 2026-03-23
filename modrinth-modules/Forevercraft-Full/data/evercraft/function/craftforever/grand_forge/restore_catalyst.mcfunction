# Restore consumed Forge Catalyst (1-tick delay after consume_item)
# Only for players tagged ec.gf_restore who just consumed their catalyst
execute as @a[tag=ec.gf_restore] unless items entity @s container.* nether_star[custom_data~{forge_catalyst:true}] unless items entity @s weapon.offhand nether_star[custom_data~{forge_catalyst:true}] run loot give @s loot evercraft:craftforever/forge_catalyst
execute as @a[tag=ec.gf_restore] run tag @s remove ec.gf_restore
