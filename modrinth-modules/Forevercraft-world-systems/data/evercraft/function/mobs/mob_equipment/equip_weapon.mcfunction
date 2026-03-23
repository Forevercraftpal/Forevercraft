$execute unless predicate {"condition":"minecraft:random_chance","chance":$(equipchance)} run return fail
$execute unless entity @s[type=#$(validmobs)] run return fail

$loot replace entity @s weapon.$(slot) loot $(equiploottable)
$execute if data storage eden:settings bestiary.mob_equipment.misc{bannershield:"enabled"} if items entity @s weapon.$(slot) minecraft:shield run function evercraft:mobs/mob_equipment/banner_shields with storage eden:settings bestiary.mob_equipment.$(slot)
$execute unless predicate {"condition":"minecraft:random_chance","chance":$(enchantment)} run item modify entity @s weapon.$(slot) evercraft:mobs/enchant_with_levels
$execute if data storage eden:settings bestiary.mob_equipment.$(slot){rngdmg:"enabled"} unless items entity @s weapon.offhand minecraft:totem_of_undying run item modify entity @s weapon.$(slot) evercraft:mobs/random_damage

$data modify entity @s drop_chances.$(slot) set value $(dropchance)F