title @s actionbar {color:"gray",text:"Your charm ran out!"}

scoreboard players set @s ec.charm_timer 0

execute store result score @s ec.common_chance run scoreboard players get #chance_common ec.var
execute store result score @s ec.rare_chance run scoreboard players get #chance_rare ec.var
execute store result score @s ec.epic_chance run scoreboard players get #chance_epic ec.var
execute store result score @s ec.mythical_chance run scoreboard players get #chance_mythical ec.var
execute store result score @s ec.mythical_chance run scoreboard players get #chance_mythical ec.var

playsound block.beacon.deactivate player @s ~ ~ ~ 1 2 1