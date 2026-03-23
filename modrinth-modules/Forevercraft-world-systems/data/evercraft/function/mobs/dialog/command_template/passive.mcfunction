$data modify storage eden:settings bestiary.$(type) merge value {allow_mob:$(allow_mob),locator_color:'$(locator_color)',locator_range:$(locator_range),type:$(type),pickup:$(pickup),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),tempt_range:$(tempt_range),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),breed:$(breed),burn:$(burn),silent:$(silent),drown:$(drown)}

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

# dialog show @s evercraft:mobs/passive  # TODO: dialog registry entry not yet created

$execute unless data storage eden:settings bestiary.$(type){type:"all_passive"} run return fail
data modify storage eden:settings bestiary.allay merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.armadillo merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.axolotl merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.bat merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.camel merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.cat merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.chicken merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.cod merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.cow merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.donkey merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.frog merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.glow_squid merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.horse merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.mooshroom merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.mule merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.ocelot merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.parrot merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.pig merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.pufferfish merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.rabbit merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.salmon merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.sheep merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.skeleton_horse merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.sniffer merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.snow_golem merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.squid merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.strider merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.tadpole merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.tropical_fish merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.turtle merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.villager merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.wandering_trader merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.zombie_horse merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.happy_ghast merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.copper_golem merge from storage eden:settings bestiary.all_passive
data modify storage eden:settings bestiary.nautilus merge from storage eden:settings bestiary.all_passive

data modify storage eden:settings bestiary.allay.type set value "allay"
data modify storage eden:settings bestiary.armadillo.type set value "armadillo"
data modify storage eden:settings bestiary.axolotl.type set value "axolotl"
data modify storage eden:settings bestiary.bat.type set value "bat"
data modify storage eden:settings bestiary.camel.type set value "camel"
data modify storage eden:settings bestiary.cat.type set value "cat"
data modify storage eden:settings bestiary.chicken.type set value "chicken"
data modify storage eden:settings bestiary.cod.type set value "cod"
data modify storage eden:settings bestiary.cow.type set value "cow"
data modify storage eden:settings bestiary.donkey.type set value "donkey"
data modify storage eden:settings bestiary.frog.type set value "frog"
data modify storage eden:settings bestiary.glow_squid.type set value "glow_squid"
data modify storage eden:settings bestiary.horse.type set value "horse"
data modify storage eden:settings bestiary.mooshroom.type set value "mooshroom"
data modify storage eden:settings bestiary.mule.type set value "mule"
data modify storage eden:settings bestiary.ocelot.type set value "ocelot"
data modify storage eden:settings bestiary.parrot.type set value "parrot"
data modify storage eden:settings bestiary.pig.type set value "pig"
data modify storage eden:settings bestiary.pufferfish.type set value "pufferfish"
data modify storage eden:settings bestiary.rabbit.type set value "rabbit"
data modify storage eden:settings bestiary.salmon.type set value "salmon"
data modify storage eden:settings bestiary.sheep.type set value "sheep"
data modify storage eden:settings bestiary.skeleton_horse.type set value "skeleton_horse"
data modify storage eden:settings bestiary.sniffer.type set value "sniffer"
data modify storage eden:settings bestiary.snow_golem.type set value "snow_golem"
data modify storage eden:settings bestiary.squid.type set value "squid"
data modify storage eden:settings bestiary.strider.type set value "strider"
data modify storage eden:settings bestiary.tadpole.type set value "tadpole"
data modify storage eden:settings bestiary.tropical_fish.type set value "tropical_fish"
data modify storage eden:settings bestiary.turtle.type set value "turtle"
data modify storage eden:settings bestiary.villager.type set value "villager"
data modify storage eden:settings bestiary.wandering_trader.type set value "wandering_trader"
data modify storage eden:settings bestiary.happy_ghast.type set value "happy_ghast"
data modify storage eden:settings bestiary.copper_golem.type set value "copper_golem"
data modify storage eden:settings bestiary.nautilus.type set value "nautilus"