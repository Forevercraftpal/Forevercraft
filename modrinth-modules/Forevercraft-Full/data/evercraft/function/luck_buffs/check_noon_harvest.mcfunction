# Noon harvest luck — check tool types with early exit
# OPT: return run short-circuits after first match (was 4 checks always)
execute if items entity @s weapon.mainhand #minecraft:pickaxes run tag @s add ec.has_time_dr
execute if items entity @s weapon.mainhand #minecraft:pickaxes run return run attribute @s luck modifier add ec_noon_harvest_luck 1.0 add_value
execute if items entity @s weapon.mainhand #minecraft:hoes run tag @s add ec.has_time_dr
execute if items entity @s weapon.mainhand #minecraft:hoes run return run attribute @s luck modifier add ec_noon_harvest_luck 1.0 add_value
execute if items entity @s weapon.mainhand #minecraft:axes run tag @s add ec.has_time_dr
execute if items entity @s weapon.mainhand #minecraft:axes run return run attribute @s luck modifier add ec_noon_harvest_luck 1.0 add_value
execute if items entity @s weapon.mainhand #minecraft:shovels run tag @s add ec.has_time_dr
execute if items entity @s weapon.mainhand #minecraft:shovels run return run attribute @s luck modifier add ec_noon_harvest_luck 1.0 add_value
