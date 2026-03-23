# Team Duel — Opponent Accepted (runs as opponent)
# They need to select their partner by looking at someone

# Validate invite exists
execute unless score @s ec.duel_inv matches 1 run return 0
execute unless entity @s[tag=duel.pending_target] run return 0

# Clear invite state
scoreboard players set @s ec.duel_inv 0
scoreboard players set @s ec.duel_inv_cd 0
tag @s remove duel.pending_target

# Auto-pick a random eligible player as partner
# Filter out: involved players, restricted states, non-survival gamemodes
tag @s add duel.team_opponent_confirmed
execute as @a[tag=!duel.team_challenger,tag=!duel.partner_a,tag=!duel.team_opponent_confirmed,tag=!ec.duel_active_tag,tag=!dr.in_realm,tag=!dg.player,tag=!Adv.InMenu,tag=!TX.InMenu,tag=!RF.InMenu,tag=!HS.InMenu,tag=!DG.InMenu,gamemode=!spectator,gamemode=!creative,limit=1,sort=random] run tag @s add duel.partner_b

# Check if partner found
execute unless entity @a[tag=duel.partner_b] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Not enough players for a team duel!",color:"red"}]
execute unless entity @a[tag=duel.partner_b] run function evercraft:duel/team/cleanup_tags
execute unless entity @a[tag=duel.partner_b] run return 0

# Notify partner_b
tellraw @a[tag=duel.partner_b] [{text:"[Forevercraft] ",color:"gold"},{selector:"@s",color:"aqua"},{text:" picked you for a team duel! ",color:"yellow"},{text:"[Confirm]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.duel set 30"},hover_event:{action:"show_text",value:{text:"Join the team duel",color:"gray"}}},{text:" "},{text:"[Decline]",color:"red",click_event:{action:"run_command",command:"/trigger ec.duel set 31"},hover_event:{action:"show_text",value:{text:"Refuse to participate",color:"gray"}}}]

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Waiting for ",color:"yellow"},{selector:"@a[tag=duel.partner_b]",color:"aqua"},{text:" to confirm...",color:"yellow"}]

# Set 30-second timeout for partner_b confirmation (uses invite timer)
execute as @a[tag=duel.partner_b] run scoreboard players set @s ec.duel_inv_cd 600
execute as @a[tag=duel.partner_b] run scoreboard players enable @s ec.duel
