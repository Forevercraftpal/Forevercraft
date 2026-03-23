$data modify storage eden:settings bestiary.mob_equipment.$(slot) merge value {validmobs:'$(validmobs)',equiploottable:'$(equiploottable)',rngdmg:$(rngdmg)}

$data modify storage eden:settings bestiary.mob_equipment.$(slot).equipchance_initial set value $(equipchance)
$execute store result storage eden:settings bestiary.mob_equipment.$(slot).equipchance float 0.01 run data get storage eden:settings bestiary.mob_equipment.$(slot).equipchance_initial

$data modify storage eden:settings bestiary.mob_equipment.$(slot).dropchance_initial set value $(dropchance)
$execute store result storage eden:settings bestiary.mob_equipment.$(slot).dropchance float 0.01 run data get storage eden:settings bestiary.mob_equipment.$(slot).dropchance_initial

$data modify storage eden:settings bestiary.mob_equipment.$(slot).enchantment_initial set value $(enchantment)
$execute store result storage eden:settings bestiary.mob_equipment.$(slot).enchantment float 0.01 run data get storage eden:settings bestiary.mob_equipment.$(slot).enchantment_initial

$execute if data storage eden:settings bestiary.mob_equipment.$(slot){rngdmg:"enabled"} run data modify storage eden:settings bestiary.mob_equipment.$(slot).rngdmg_initial set value "false"
$execute unless data storage eden:settings bestiary.mob_equipment.$(slot){rngdmg:"enabled"} run data modify storage eden:settings bestiary.mob_equipment.$(slot).rngdmg_initial set value "true"

# dialog show @s evercraft:mobs/mob_equipment  # TODO: dialog registry entry not yet created