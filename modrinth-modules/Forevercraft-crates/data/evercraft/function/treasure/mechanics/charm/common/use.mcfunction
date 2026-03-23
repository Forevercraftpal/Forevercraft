advancement revoke @s only evercraft:treasure/mechanics/charm/common

advancement revoke @s only evercraft:treasure/mechanics/charm/timer

scoreboard players add @s ec.charm_timer 600

execute store result score @s ec.common_chance run scoreboard players get #chance_common ec.var
execute store result score @s ec.rare_chance run scoreboard players get #chance_rare ec.var
execute store result score @s ec.epic_chance run scoreboard players get #chance_epic ec.var
execute store result score @s ec.mythical_chance run scoreboard players get #chance_mythical ec.var

scoreboard players operation @s ec.common_chance *= #5 ec.const
scoreboard players operation @s ec.common_chance /= #4 ec.const

scoreboard players operation @s ec.rare_chance *= #5 ec.const
scoreboard players operation @s ec.rare_chance /= #4 ec.const

scoreboard players operation @s ec.epic_chance *= #5 ec.const
scoreboard players operation @s ec.epic_chance /= #4 ec.const

scoreboard players operation @s ec.mythical_chance *= #5 ec.const
scoreboard players operation @s ec.mythical_chance /= #4 ec.const

title @s actionbar {color:"gray",text:"Activated Common Charm!"}

playsound minecraft:block.note_block.bell ambient @a[distance=..7] ~ ~ ~0.5 0 1