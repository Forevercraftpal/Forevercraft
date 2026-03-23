# Duel Start — Open World
# Called after both players are tagged ec.duel_active_tag with mode 1

# Set global duel active
scoreboard players set #duel_active ec.var 1

# Summon engage center marker at midpoint between the two duelists
# Use the accepter's position (close enough since they must be within 64 blocks)
execute as @a[tag=ec.duel_active_tag,tag=!duel.challenger_confirmed,limit=1] at @s run summon marker ~ ~ ~ {Tags:["duel.engage"]}

# NOTE: Do NOT clean up duel.challenger_confirmed here — accept_open checks it after this returns.
# All invite tags are cleaned in end/cleanup.mcfunction.

# Remove both duelists from their teams so friendlyFire doesn't block PvP
execute as @a[tag=ec.duel_active_tag] run function evercraft:duel/start/leave_team

# Give both duelists Resistance V for 4 seconds (countdown protection)
effect give @a[tag=ec.duel_active_tag] minecraft:resistance 4 4 true

# Announce to both players
tellraw @a[tag=ec.duel_active_tag] [{text:"",color:"white"},{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",strikethrough:true}]
tellraw @a[tag=ec.duel_active_tag] [{text:"  ⚔ ",color:"gold"},{text:"OPEN WORLD DUEL",color:"yellow",bold:true}]
tellraw @a[tag=ec.duel_active_tag] [{text:"  Stay within 64 blocks of the engage point!",color:"gray"}]
tellraw @a[tag=ec.duel_active_tag] [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",strikethrough:true}]

# Start countdown
function evercraft:duel/start/countdown
