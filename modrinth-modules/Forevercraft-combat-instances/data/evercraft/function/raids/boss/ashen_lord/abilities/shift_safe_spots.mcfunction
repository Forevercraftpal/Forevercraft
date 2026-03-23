# The Ashen Lord — Shift Safe Spots
# Removes old safe markers, spawns 4-5 new ones at random positions around the arena

# Kill old safe spots
kill @e[tag=ec.rd_al_safe]

# Spawn 5 new safe spots at random positions around the boss room
# Use spreadplayers from boss position for randomization
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon marker ~ ~ ~ {Tags:["ec.rd_mechanic","ec.rd_al_safe","ec.rd_al_safe_new"]}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon marker ~ ~ ~ {Tags:["ec.rd_mechanic","ec.rd_al_safe","ec.rd_al_safe_new"]}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon marker ~ ~ ~ {Tags:["ec.rd_mechanic","ec.rd_al_safe","ec.rd_al_safe_new"]}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon marker ~ ~ ~ {Tags:["ec.rd_mechanic","ec.rd_al_safe","ec.rd_al_safe_new"]}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon marker ~ ~ ~ {Tags:["ec.rd_mechanic","ec.rd_al_safe","ec.rd_al_safe_new"]}

# Spread them randomly within 18 blocks of boss
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run spreadplayers ~ ~ 5 18 false @e[tag=ec.rd_al_safe_new]
tag @e[tag=ec.rd_al_safe_new] remove ec.rd_al_safe_new

# Sound cue to alert players
playsound minecraft:block.beacon.activate master @a[tag=ec.rd_participant] ~ ~ ~ 0.5 1.5
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Safe spots have shifted!",color:"yellow"}]
