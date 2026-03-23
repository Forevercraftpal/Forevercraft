# The Deepcrawler — Start Lever Sequence
# Called periodically to give players a chance to execute the puzzle
# Boss emits 4 rumbles indicating the sequence: always 1→2→3→4 (fixed)

# Only start if no sequence is active
execute unless score #rd_dc_lever_seq ec.var matches 0 run return 0

# Start the sequence at position 1
scoreboard players set #rd_dc_lever_seq ec.var 1

# Telegraph: rumble sounds from each direction in order
execute at @e[tag=ec.rd_dc_lever1,limit=1] run playsound minecraft:entity.warden.heartbeat master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5
execute at @e[tag=ec.rd_dc_lever2,limit=1] run playsound minecraft:entity.warden.heartbeat master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.7
execute at @e[tag=ec.rd_dc_lever3,limit=1] run playsound minecraft:entity.warden.heartbeat master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.9
execute at @e[tag=ec.rd_dc_lever4,limit=1] run playsound minecraft:entity.warden.heartbeat master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 1.1

# Directional particles from each lever
execute at @e[tag=ec.rd_dc_lever1,limit=1] run particle minecraft:dust{color:[1.0,0.8,0.2],scale:1.5} ~ ~2 ~ 0.5 1 0.5 0 10
execute at @e[tag=ec.rd_dc_lever2,limit=1] run particle minecraft:dust{color:[1.0,0.8,0.2],scale:1.5} ~ ~2 ~ 0.5 1 0.5 0 10
execute at @e[tag=ec.rd_dc_lever3,limit=1] run particle minecraft:dust{color:[1.0,0.8,0.2],scale:1.5} ~ ~2 ~ 0.5 1 0.5 0 10
execute at @e[tag=ec.rd_dc_lever4,limit=1] run particle minecraft:dust{color:[1.0,0.8,0.2],scale:1.5} ~ ~2 ~ 0.5 1 0.5 0 10

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_gray"},{text:"Raid",color:"gray",bold:true},{text:"] ",color:"dark_gray"},{text:"The tunnels rumble... Pull the levers in sequence! (1 \u2192 2 \u2192 3 \u2192 4)",color:"gold"}]
