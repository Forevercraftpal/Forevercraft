function evercraft:treasure/database/fetch_uuid/generate
function evercraft:treasure/database/set with entity @s

scoreboard players set @s ec.trident 0
scoreboard players set @s ec.hold_trident 0
scoreboard players set @s ec.luck 0
scoreboard players set @s ec.charm_timer 0

# Apply current server frequency rates to joining player
execute store result score @s ec.common_chance run scoreboard players get #chance_common ec.var
execute store result score @s ec.uncommon_chance run scoreboard players get #chance_uncommon ec.var
execute store result score @s ec.rare_chance run scoreboard players get #chance_rare ec.var
execute store result score @s ec.epic_chance run scoreboard players get #chance_epic ec.var
execute store result score @s ec.exquisite_chance run scoreboard players get #chance_exquisite ec.var
execute store result score @s ec.mythical_chance run scoreboard players get #chance_mythical ec.var

execute store result score @s ec.break_stone run scoreboard players get @s ec.total

execute store result score @s ec.common_count run scoreboard players get @s ec.common_count
execute store result score @s ec.rare_count run scoreboard players get @s ec.rare_count
execute store result score @s ec.epic_count run scoreboard players get @s ec.epic_count
execute store result score @s ec.mythical_count run scoreboard players get @s ec.mythical_count

advancement grant @s only evercraft:treasure/mechanics/small/timer
advancement grant @s only evercraft:treasure/mechanics/big/timer
advancement grant @s only evercraft:treasure/mechanics/reach/timer
advancement grant @s only evercraft:treasure/mechanics/step_height/timer
advancement grant @s only evercraft:treasure/mechanics/light/timer