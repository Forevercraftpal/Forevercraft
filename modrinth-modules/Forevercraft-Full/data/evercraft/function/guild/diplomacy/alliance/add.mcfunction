# Guild Diplomacy — Form alliance between two guilds
# $(guild_a) $(guild_b) $(guild_a_name) $(guild_b_name)

# Add guild B to guild A's alliances
$scoreboard players set #Search ec.guild_id $(guild_a)
$execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify entity @s data.alliances append value {id:$(guild_b)}

# Add guild A to guild B's alliances
$scoreboard players set #Search ec.guild_id $(guild_b)
$execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify entity @s data.alliances append value {id:$(guild_a)}

# Announce to both guilds
$execute as @a[scores={ec.guild_id=$(guild_a)}] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Alliance formed with ",color:"green"},{text:"$(guild_b_name)",color:"gold",bold:true},{text:"!",color:"green"}]
$execute as @a[scores={ec.guild_id=$(guild_b)}] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Alliance formed with ",color:"green"},{text:"$(guild_a_name)",color:"gold",bold:true},{text:"!",color:"green"}]

# Realm milestone: alliance formed
function evercraft:milestones/increment/guild_alliance
