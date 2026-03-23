# Guild Event — Node Scatter: Start
# Triggered every 4 MC days at noon. Spawns waves of 3 nodes per player every 10s.
# Duration: 3 minutes (3600 ticks). Each node despawns after 30s.

# Activate
scoreboard players set #ge_scatter_active ec.var 1
scoreboard players set #ge_scatter_timer ec.var 3600
scoreboard players operation #ge_scatter_day ec.var = #visual_day ec.var

# Announce to all guilded players
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"✦ A node scatter has begun! ",color:"gold"},{text:"Glowing nodes are appearing all around you — grab them!",color:"yellow"}]
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"Nodes contain: ",color:"gray"},{text:"XP",color:"green"},{text:", ",color:"gray"},{text:"Coins",color:"#E0B0FF"},{text:", ",color:"gray"},{text:"Crates",color:"aqua"},{text:", and more...",color:"gray"}]
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"[Click to Teleport to Guildstone]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.ge_event_tp set 1"},hover_event:{action:"show_text",value:{text:"Teleport to your guild zone!",color:"green"}}}]

# Sound
execute as @a[scores={ec.guild_id=1..}] at @s run playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.5 0.8

# Spawn first wave immediately + start wave schedule
function evercraft:guild/events/scatter/spawn_wave

# Start particle schedule
schedule function evercraft:guild/events/scatter/tick_particles 10t
