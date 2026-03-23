# Starfall Convergence — START (1 night)
# Rare fallen stars descend from the heavens

# Set world event state
scoreboard players set #we_active ec.var 1
scoreboard players set #we_event_id ec.var 1
scoreboard players set #we_fx ec.var 0

# Apply Dream Rate modifier (+2.0 global)
execute as @a run attribute @s luck modifier remove ec_we_starfall
execute as @a run attribute @s luck modifier add ec_we_starfall 2.0 add_value

# Omens + World Events: Bad Omen doubles event DR boost (+2.0 extra)
tag @a[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] add ec.we_omen
execute as @a[tag=ec.we_omen] run attribute @s luck modifier add ec_we_omen_bonus 2.0 add_value
execute as @a[tag=ec.we_omen] run effect clear @s minecraft:bad_omen
execute as @a[tag=ec.we_omen] run tellraw @s [{text:"  ",color:"dark_red"},{text:"Your Bad Omen amplifies the event! ",color:"red"},{text:"(+2.0 bonus DR)",color:"gold"}]
tag @a remove ec.we_omen

# Track for achievements
scoreboard players set @a ach.we_starfall 1

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"STARFALL CONVERGENCE",color:"#FFDD44",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"The stars align in a rare convergence!",color:"gold",italic:true}]
tellraw @a [{text:"  "},{text:"  + ",color:"#FFDD44"},{text:"Fallen stars descend from the heavens",color:"gold"}]
tellraw @a [{text:"  "},{text:"  + ",color:"#FFDD44"},{text:"Collect them for powerful rewards",color:"gold"}]
tellraw @a [{text:"  "},{text:"  + ",color:"#FFDD44"},{text:"Dream Rate +2.0",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: Until dawn",color:"gray"}]
tellraw @a ""

# Celestial sounds
execute as @a at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1.0 0.5
execute as @a at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 0.8 0.8
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.2 2.0

# Title
title @a times 10 80 30
title @a title [{text:"Starfall Convergence",color:"#FFDD44"}]
title @a subtitle [{text:"Fallen stars rain from the sky!",color:"gold",italic:true}]

# Override tick to 1s for active event
schedule function evercraft:world_events/tick 1s
