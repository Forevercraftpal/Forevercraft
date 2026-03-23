# Team Duel — Start (all 4 players confirmed)
# Set global duel active
scoreboard players set #duel_active ec.var 1

# Assign team numbers
execute as @a[tag=duel.team_challenger] run scoreboard players set @s ec.duel_team_num 1
execute as @a[tag=duel.partner_a] run scoreboard players set @s ec.duel_team_num 1
execute as @a[tag=duel.team_opponent_confirmed] run scoreboard players set @s ec.duel_team_num 2
execute as @a[tag=duel.partner_b] run scoreboard players set @s ec.duel_team_num 2

# Tag all 4 as active duelists
execute as @a[tag=duel.team_challenger] run tag @s add ec.duel_active_tag
execute as @a[tag=duel.partner_a] run tag @s add ec.duel_active_tag
execute as @a[tag=duel.team_opponent_confirmed] run tag @s add ec.duel_active_tag
execute as @a[tag=duel.partner_b] run tag @s add ec.duel_active_tag

# Set duel mode to 4 (team)
execute as @a[tag=ec.duel_active_tag] run scoreboard players set @s ec.duel_mode 4
execute as @a[tag=ec.duel_active_tag] run scoreboard players set @s ec.duel_active 1

# Initialize alive counts
scoreboard players set #duel_t1_alive ec.var 2
scoreboard players set #duel_t2_alive ec.var 2

# Save return positions
execute as @a[tag=ec.duel_active_tag] at @s run summon marker ~ ~ ~ {Tags:["duel.return_team"]}

# Build arena at first duelist's position (use challenger's location)
execute as @a[tag=duel.team_challenger,limit=1] at @s positioned ~ ~172 ~ run function evercraft:duel/start/build_arena

# Teleport — Team 1 on west side, Team 2 on east side
execute as @a[tag=duel.team_challenger,limit=1] at @s positioned ~ ~172 ~ run tp @a[tag=duel.team_challenger] ~-5 ~2 ~-2
execute as @a[tag=duel.team_challenger,limit=1] at @s positioned ~ ~172 ~ run tp @a[tag=duel.partner_a] ~-5 ~2 ~2
execute as @a[tag=duel.team_challenger,limit=1] at @s positioned ~ ~172 ~ run tp @a[tag=duel.team_opponent_confirmed] ~5 ~2 ~-2
execute as @a[tag=duel.team_challenger,limit=1] at @s positioned ~ ~172 ~ run tp @a[tag=duel.partner_b] ~5 ~2 ~2

# Remove from teams for PvP
execute as @a[tag=ec.duel_active_tag] run function evercraft:duel/start/leave_team

# Protection during countdown
effect give @a[tag=ec.duel_active_tag] minecraft:blindness 1 0 true
effect give @a[tag=ec.duel_active_tag] minecraft:resistance 5 4 true

# Announce
tellraw @a[tag=ec.duel_active_tag] [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]
tellraw @a[tag=ec.duel_active_tag] [{text:"  ",color:"gold"},{text:"TEAM DUEL (2v2)",color:"gold",bold:true}]
tellraw @a[tag=ec.duel_active_tag] [{text:"  Eliminate both opponents to win!",color:"gray"}]
tellraw @a[tag=ec.duel_active_tag] [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]

# Broadcast to spectators
function evercraft:duel/spectate/broadcast

# Countdown
function evercraft:duel/start/countdown
