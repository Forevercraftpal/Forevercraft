$data modify storage evercraft:treasure/database "$(intUUID)".lastName set from storage evercraft:treasure/name currentName

$scoreboard players set @s ec.total $(total)
$scoreboard players set @s ec.common_count $(common_count)
$scoreboard players set @s ec.rare_count $(rare_count)
$scoreboard players set @s ec.epic_count $(epic_count)
$scoreboard players set @s ec.mythical_count $(mythical_count)
$scoreboard players set @s ec.mythical_count $(mythical_count)
$scoreboard players set @s ec.play_time $(play_time)

