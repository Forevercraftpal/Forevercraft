# Duel Start — Arena
# Called at the accepter's position after both players tagged

# Set global duel active
scoreboard players set #duel_active ec.var 1

# Save both players' return positions with markers
execute as @a[tag=ec.duel_active_tag,tag=duel.challenger_confirmed] at @s run summon marker ~ ~ ~ {Tags:["duel.return_a"]}
execute as @a[tag=ec.duel_active_tag,tag=!duel.challenger_confirmed] at @s run summon marker ~ ~ ~ {Tags:["duel.return_b"]}

# Build arena 172 blocks above current position
execute positioned ~ ~172 ~ run function evercraft:duel/start/build_arena

# Teleport both duelists into the arena pit
# Challenger on one side, target on the other
execute positioned ~ ~172 ~ as @a[tag=ec.duel_active_tag,tag=duel.challenger_confirmed] run tp @s ~-5 ~2 ~
execute positioned ~ ~172 ~ as @a[tag=ec.duel_active_tag,tag=!duel.challenger_confirmed] run tp @s ~5 ~2 ~

# NOTE: Do NOT clean up duel.challenger_confirmed here — accept_arena checks it after this returns.
# All invite tags are cleaned in end/cleanup.mcfunction.

# Brief blindness for dramatic transition
effect give @a[tag=ec.duel_active_tag] minecraft:blindness 1 0 true

# Remove both duelists from their teams so friendlyFire doesn't block PvP
execute as @a[tag=ec.duel_active_tag] run function evercraft:duel/start/leave_team

# Give both duelists Resistance V for 5 seconds (transition + countdown protection)
effect give @a[tag=ec.duel_active_tag] minecraft:resistance 5 4 true

# Announce to both players
tellraw @a[tag=ec.duel_active_tag] [{text:"",color:"white"},{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",strikethrough:true}]
tellraw @a[tag=ec.duel_active_tag] [{text:"  ⚔ ",color:"gold"},{text:"ARENA DUEL",color:"light_purple",bold:true}]
tellraw @a[tag=ec.duel_active_tag] [{text:"  Fight to the death in the gladiator arena!",color:"gray"}]
tellraw @a[tag=ec.duel_active_tag] [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",strikethrough:true}]

# Broadcast to all other players
function evercraft:duel/spectate/broadcast

# Start countdown
function evercraft:duel/start/countdown
