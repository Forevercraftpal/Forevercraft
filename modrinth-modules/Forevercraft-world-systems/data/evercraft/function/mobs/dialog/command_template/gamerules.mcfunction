$gamerule minecraft:spawn_phantoms $(insomnia)
$gamerule minecraft:spawn_wardens $(warden)
$gamerule minecraft:send_command_feedback $(cmdfeedback)
$gamerule minecraft:raids $(raids)
$gamerule minecraft:mob_drops $(mobloot)
$gamerule minecraft:spawn_patrols $(patrols)
$gamerule minecraft:spawn_wandering_traders $(trader)
$gamerule minecraft:mob_griefing $(griefing)
$gamerule minecraft:locator_bar $(locatorbar)
$gamerule minecraft:max_entity_cramming $(cramming)

execute store result storage eden:temp bestiary.gamerules.insomnia int 1 run gamerule minecraft:spawn_phantoms
execute if data storage eden:temp bestiary.gamerules{insomnia:1} run data modify storage eden:settings bestiary.gamerules.insomnia_initial set value "false"
execute unless data storage eden:temp bestiary.gamerules{insomnia:1} run data modify storage eden:settings bestiary.gamerules.insomnia_initial set value "true"

execute store result storage eden:temp bestiary.gamerules.warden int 1 run gamerule minecraft:spawn_wardens
execute if data storage eden:temp bestiary.gamerules{warden:1} run data modify storage eden:settings bestiary.gamerules.warden_initial set value "false"
execute unless data storage eden:temp bestiary.gamerules{warden:1} run data modify storage eden:settings bestiary.gamerules.warden_initial set value "true"

execute store result storage eden:temp bestiary.gamerules.cmdfeedback int 1 run gamerule minecraft:send_command_feedback
execute if data storage eden:temp bestiary.gamerules{cmdfeedback:1} run data modify storage eden:settings bestiary.gamerules.cmdfeedback_initial set value "false"
execute unless data storage eden:temp bestiary.gamerules{cmdfeedback:1} run data modify storage eden:settings bestiary.gamerules.cmdfeedback_initial set value "true"

execute store result storage eden:temp bestiary.gamerules.raids int 1 run gamerule minecraft:raids
execute if data storage eden:temp bestiary.gamerules{raids:1} run data modify storage eden:settings bestiary.gamerules.raids_initial set value "false"
execute unless data storage eden:temp bestiary.gamerules{raids:1} run data modify storage eden:settings bestiary.gamerules.raids_initial set value "true"

execute store result storage eden:temp bestiary.gamerules.mobloot int 1 run gamerule minecraft:mob_drops
execute if data storage eden:temp bestiary.gamerules{mobloot:1} run data modify storage eden:settings bestiary.gamerules.mobloot_initial set value "false"
execute unless data storage eden:temp bestiary.gamerules{mobloot:1} run data modify storage eden:settings bestiary.gamerules.mobloot_initial set value "true"

execute store result storage eden:temp bestiary.gamerules.patrols int 1 run gamerule minecraft:spawn_patrols
execute if data storage eden:temp bestiary.gamerules{patrols:1} run data modify storage eden:settings bestiary.gamerules.patrols_initial set value "false"
execute unless data storage eden:temp bestiary.gamerules{patrols:1} run data modify storage eden:settings bestiary.gamerules.patrols_initial set value "true"

execute store result storage eden:temp bestiary.gamerules.trader int 1 run gamerule minecraft:spawn_wandering_traders
execute if data storage eden:temp bestiary.gamerules{trader:1} run data modify storage eden:settings bestiary.gamerules.trader_initial set value "false"
execute unless data storage eden:temp bestiary.gamerules{trader:1} run data modify storage eden:settings bestiary.gamerules.trader_initial set value "true"

execute store result storage eden:temp bestiary.gamerules.griefing int 1 run gamerule minecraft:mob_griefing
execute if data storage eden:temp bestiary.gamerules{griefing:1} run data modify storage eden:settings bestiary.gamerules.griefing_initial set value "false"
execute unless data storage eden:temp bestiary.gamerules{griefing:1} run data modify storage eden:settings bestiary.gamerules.griefing_initial set value "true"

execute store result storage eden:temp bestiary.gamerules.locatorbar int 1 run gamerule minecraft:locator_bar
execute if data storage eden:temp bestiary.gamerules{locatorbar:1} run data modify storage eden:settings bestiary.gamerules.locatorbar_initial set value "false"
execute unless data storage eden:temp bestiary.gamerules{locatorbar:1} run data modify storage eden:settings bestiary.gamerules.locatorbar_initial set value "true"

execute store result storage eden:settings bestiary.gamerules.cramming int 1 run gamerule minecraft:max_entity_cramming

# dialog show @s evercraft:mobs/main  # TODO: dialog registry entry not yet created
