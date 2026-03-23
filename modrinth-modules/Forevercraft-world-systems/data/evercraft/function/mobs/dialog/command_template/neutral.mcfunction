$data modify storage eden:settings bestiary.$(type) merge value {allow_mob:$(allow_mob),locator_color:'$(locator_color)',locator_range:$(locator_range),type:$(type),pickup:$(pickup),attck_dmg:$(attck_dmg),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),tempt_range:$(tempt_range),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),breed:$(breed),silent:$(silent),burn:$(burn),drown:$(drown)}

$execute if data storage eden:settings bestiary.$(type){allow_mob:"enabled"} run data modify storage eden:settings bestiary.$(type).allow_mob_initial set value "false"
$execute unless data storage eden:settings bestiary.$(type){allow_mob:"enabled"} run data modify storage eden:settings bestiary.$(type).allow_mob_initial set value "true"

$execute if data storage eden:settings bestiary.$(type){burn:"enabled"} run data modify storage eden:settings bestiary.$(type).burn_initial set value "false"
$execute unless data storage eden:settings bestiary.$(type){burn:"enabled"} run data modify storage eden:settings bestiary.$(type).burn_initial set value "true"

$execute if data storage eden:settings bestiary.$(type){pickup:"enabled"} run data modify storage eden:settings bestiary.$(type).pickup_initial set value "false"
$execute unless data storage eden:settings bestiary.$(type){pickup:"enabled"} run data modify storage eden:settings bestiary.$(type).pickup_initial set value "true"

$execute if data storage eden:settings bestiary.$(type){silent:"enabled"} run data modify storage eden:settings bestiary.$(type).silent_initial set value "false"
$execute unless data storage eden:settings bestiary.$(type){silent:"enabled"} run data modify storage eden:settings bestiary.$(type).silent_initial set value "true"

$execute if data storage eden:settings bestiary.$(type){drown:"enabled"} run data modify storage eden:settings bestiary.$(type).drown_initial set value "false"
$execute unless data storage eden:settings bestiary.$(type){drown:"enabled"} run data modify storage eden:settings bestiary.$(type).drown_initial set value "true"

$execute if data storage eden:settings bestiary.$(type){breed:"enabled"} run data modify storage eden:settings bestiary.$(type).breed_initial set value "false"
$execute unless data storage eden:settings bestiary.$(type){breed:"enabled"} run data modify storage eden:settings bestiary.$(type).breed_initial set value "true"

$data modify storage eden:settings bestiary.$(type).mobhead_initial set value $(mobhead)
$execute store result storage eden:settings bestiary.$(type).mobhead float 0.01 run data get storage eden:settings bestiary.$(type).mobhead_initial

# dialog show @s evercraft:mobs/neutral  # TODO: dialog registry entry not yet created

$execute unless data storage eden:settings bestiary.$(type){type:"all_neutral"} run return fail
data modify storage eden:settings bestiary.bee merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.cave_spider merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.dolphin merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.drowned merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.enderman merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.fox merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.goat merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.iron_golem merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.llama merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.panda merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.piglin merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.polar_bear merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.spider merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.trader_llama merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.wolf merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.zombified_piglin merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.zombie_nautilus merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.zombie_horse merge from storage eden:settings bestiary.all_neutral
data modify storage eden:settings bestiary.camel_husk merge from storage eden:settings bestiary.all_neutral

data modify storage eden:settings bestiary.bee.type set value "bee"
data modify storage eden:settings bestiary.cave_spider.type set value "cave_spider"
data modify storage eden:settings bestiary.dolphin.type set value "dolphin"
data modify storage eden:settings bestiary.drowned.type set value "drowned"
data modify storage eden:settings bestiary.enderman.type set value "enderman"
data modify storage eden:settings bestiary.fox.type set value "fox"
data modify storage eden:settings bestiary.goat.type set value "goat"
data modify storage eden:settings bestiary.iron_golem.type set value "iron_golem"
data modify storage eden:settings bestiary.llama.type set value "llama"
data modify storage eden:settings bestiary.panda.type set value "panda"
data modify storage eden:settings bestiary.piglin.type set value "piglin"
data modify storage eden:settings bestiary.polar_bear.type set value "polar_bear"
data modify storage eden:settings bestiary.spider.type set value "spider"
data modify storage eden:settings bestiary.trader_llama.type set value "trader_llama"
data modify storage eden:settings bestiary.wolf.type set value "wolf"
data modify storage eden:settings bestiary.zombified_piglin.type set value "zombified_piglin"
data modify storage eden:settings bestiary.zombie_nautilus.type set value "zombie_nautilus"
data modify storage eden:settings bestiary.zombie_horse.type set value "zombie_horse"
data modify storage eden:settings bestiary.camel_husk.type set value "camel_husk"