
execute if entity @s[advancements={evercraft:treasure/treasure_advancements/root=true}] run scoreboard players operation @s ec.common_chance = #chance_common ec.var
scoreboard players operation @s ec.rare_chance = #chance_rare ec.var
scoreboard players operation @s ec.epic_chance = #chance_epic ec.var
scoreboard players operation @s ec.mythical_chance = #chance_mythical ec.var
scoreboard players operation @s ec.mythical_chance = #chance_mythical ec.var

function evercraft:treasure/database/get with entity @s

function evercraft:treasure/player_update

# Gets current names
summon item_display ~ ~ ~ {UUID:[I;0,0,0,1],view_range:0f,width:0f,height:0f,item:{id:"minecraft:player_head",count:1}}
item modify entity 0-0-0-0-1 container.0 {function:fill_player_head,entity:this}

data modify storage evercraft:treasure/name currentName set from entity 0-0-0-0-1 item.components.minecraft:profile.name

kill 0-0-0-0-1

# compares currentName and lastName
execute store result score .comp ec.const run data modify storage evercraft:treasure/write data.lastName set from storage evercraft:treasure/name currentName

execute if score .comp ec.const matches 1 run function evercraft:treasure/database/name/update with storage evercraft:treasure/write data

scoreboard players set @s ec.log_out 0

advancement revoke @s only evercraft:treasure/technical/database/log_out