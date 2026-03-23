# Guild Diplomacy — Make two guilds enemies
# $(guild_a) $(guild_b) $(guild_a_name) $(guild_b_name)

# Calculate expiry: gametime + 504000 (7 real days = 7 * 72000)
execute store result score #gd_expires ec.temp run time query gametime
scoreboard players add #gd_expires ec.temp 504000
execute store result storage evercraft:guild temp.expires_at int 1 run scoreboard players get #gd_expires ec.temp

# Add guild B as enemy on guild A's marker
$scoreboard players set #Search ec.guild_id $(guild_a)
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/diplomacy/enemy/append_b with storage evercraft:guild temp

# Add guild A as enemy on guild B's marker
$scoreboard players set #Search ec.guild_id $(guild_b)
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/diplomacy/enemy/append_a with storage evercraft:guild temp

# Announce to both guilds
$execute as @a[scores={ec.guild_id=$(guild_a)}] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"WAR DECLARED against ",color:"dark_red",bold:true},{text:"$(guild_b_name)",color:"red",bold:true},{text:"!",color:"dark_red",bold:true}]
$execute as @a[scores={ec.guild_id=$(guild_b)}] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"$(guild_a_name)",color:"red",bold:true},{text:" has DECLARED WAR!",color:"dark_red",bold:true}]

# Realm milestone: guild war declared
function evercraft:milestones/increment/guild_war
