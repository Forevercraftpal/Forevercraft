$data modify storage eden:settings bestiary.$(type) merge value {allow_mob:$(allow_mob),locator_color:'$(locator_color)',locator_range:$(locator_range),pickup:$(pickup),attck_dmg:$(attck_dmg),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),burn:$(burn),silent:$(silent),drown:$(drown)}

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

$data modify storage eden:settings bestiary.$(type).mobhead_initial set value $(mobhead)
$execute store result storage eden:settings bestiary.$(type).mobhead float 0.01 run data get storage eden:settings bestiary.$(type).mobhead_initial

# dialog show @s evercraft:mobs/hostile  # TODO: dialog registry entry not yet created

$execute unless data storage eden:settings bestiary.$(type){type:"all_hostile"} run return fail
data modify storage eden:settings bestiary.blaze merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.bogged merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.breeze merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.creeper merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.creaking merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.elder_guardian merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.endermite merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.evoker merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.ghast merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.guardian merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.hoglin merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.magma_cube merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.phantom merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.piglin_brute merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.pillager merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.ravager merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.shulker merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.silverfish merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.skeleton merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.slime merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.stray merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.vex merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.vindicator merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.warden merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.witch merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.wither_skeleton merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.zoglin merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.zombie merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.zombie_villager merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.husk merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.illusioner merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.wither merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.ender_dragon merge from storage eden:settings bestiary.all_hostile
data modify storage eden:settings bestiary.parched merge from storage eden:settings bestiary.all_hostile

data modify storage eden:settings bestiary.blaze.type set value "blaze"
data modify storage eden:settings bestiary.bogged.type set value "bogged"
data modify storage eden:settings bestiary.breeze.type set value "breeze"
data modify storage eden:settings bestiary.creeper.type set value "creeper"
data modify storage eden:settings bestiary.creaking.type set value "creaking"
data modify storage eden:settings bestiary.elder_guardian.type set value "elder_guardian"
data modify storage eden:settings bestiary.endermite.type set value "endermite"
data modify storage eden:settings bestiary.evoker.type set value "evoker"
data modify storage eden:settings bestiary.ghast.type set value "ghast"
data modify storage eden:settings bestiary.guardian.type set value "guardian"
data modify storage eden:settings bestiary.hoglin.type set value "hoglin"
data modify storage eden:settings bestiary.magma_cube.type set value "magma_cube"
data modify storage eden:settings bestiary.phantom.type set value "phantom"
data modify storage eden:settings bestiary.piglin_brute.type set value "piglin_brute"
data modify storage eden:settings bestiary.pillager.type set value "pillager"
data modify storage eden:settings bestiary.ravager.type set value "ravager"
data modify storage eden:settings bestiary.shulker.type set value "shulker"
data modify storage eden:settings bestiary.silverfish.type set value "silverfish"
data modify storage eden:settings bestiary.skeleton.type set value "skeleton"
data modify storage eden:settings bestiary.slime.type set value "slime"
data modify storage eden:settings bestiary.stray.type set value "stray"
data modify storage eden:settings bestiary.vex.type set value "vex"
data modify storage eden:settings bestiary.vindicator.type set value "vindicator"
data modify storage eden:settings bestiary.warden.type set value "warden"
data modify storage eden:settings bestiary.witch.type set value "witch"
data modify storage eden:settings bestiary.wither_skeleton.type set value "wither_skeleton"
data modify storage eden:settings bestiary.zoglin.type set value "zoglin"
data modify storage eden:settings bestiary.zombie.type set value "zombie"
data modify storage eden:settings bestiary.zombie_villager.type set value "zombie_villager"
data modify storage eden:settings bestiary.husk.type set value "husk"
data modify storage eden:settings bestiary.illusioner.type set value "illusioner"
data modify storage eden:settings bestiary.wither.type set value "wither"
data modify storage eden:settings bestiary.ender_dragon.type set value "ender_dragon"
data modify storage eden:settings bestiary.parched.type set value "parched"