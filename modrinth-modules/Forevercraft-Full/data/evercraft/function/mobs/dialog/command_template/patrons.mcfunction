$data modify storage eden:settings mobs.patrons.$(type) merge value {customname:$(customname),particles:$(particles),spawntime:$(spawntime),spawnchance_initial:$(spawnchance),health:$(health),validmobs:'$(validmobs)',loottable:'$(loottable)'}

$execute if data storage eden:settings mobs.patrons.$(type){customname:"enabled"} run data modify storage eden:settings mobs.patrons.$(type).customname_initial set value "false"
$execute unless data storage eden:settings mobs.patrons.$(type){customname:"enabled"} run data modify storage eden:settings mobs.patrons.$(type).customname_initial set value "true"

$execute if data storage eden:settings mobs.patrons.$(type){particles:"enabled"} run data modify storage eden:settings mobs.patrons.$(type).particles_initial set value "false"
$execute unless data storage eden:settings mobs.patrons.$(type){particles:"enabled"} run data modify storage eden:settings mobs.patrons.$(type).particles_initial set value "true"

$execute store result storage eden:settings mobs.patrons.$(type).spawnchance float 0.01 run data get storage eden:settings mobs.patrons.$(type).spawnchance_initial

# dialog show @s evercraft:mobs/patrons  # TODO: dialog registry entry not yet created