# Abyssal Tremor — START (5 minutes)
# The deep earth shakes, revealing ancient debris

# Set world event state
scoreboard players set #we_active ec.var 1
scoreboard players set #we_event_id ec.var 3
scoreboard players set #we_timer ec.var 300
scoreboard players set #we_fx ec.var 0
scoreboard players set #we_hb_fx ec.var 0
scoreboard players set #we_debris_fx ec.var 0

# Track for achievements
scoreboard players set @a ach.we_abyssal 1
execute as @a run scoreboard players operation @s ach.tremor_base = @s ach.mined_debris

# Apply Dream Rate modifier (+1.5 for deep players below Y=0)
execute as @a[y=-64,dy=64] run attribute @s luck modifier remove ec_we_abyssal
execute as @a[y=-64,dy=64] run attribute @s luck modifier add ec_we_abyssal 1.5 add_value

# Omens + World Events: Bad Omen doubles event DR boost
tag @a[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] add ec.we_omen
execute as @a[tag=ec.we_omen] run attribute @s luck modifier add ec_we_omen_bonus 2.0 add_value
execute as @a[tag=ec.we_omen] run effect clear @s minecraft:bad_omen
execute as @a[tag=ec.we_omen] run tellraw @s [{text:"  ",color:"dark_red"},{text:"Your Bad Omen amplifies the event! ",color:"red"},{text:"(+2.0 bonus DR)",color:"gold"}]
tag @a remove ec.we_omen

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"ABYSSAL TREMOR",color:"dark_gray",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"The earth trembles... something stirs in the deep.",color:"gray",italic:true}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_gray"},{text:"Ancient debris exposed underground",color:"gray"}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_gray"},{text:"Darkness pulses in the depths",color:"gray"}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_gray"},{text:"Deep players: Dream Rate +1.5",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 5 minutes",color:"gray"}]
tellraw @a ""

# Ominous sounds
execute as @a at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 0.8 0.8
execute as @a at @s run playsound minecraft:block.sculk_shrieker.shriek master @s ~ ~ ~ 0.3 0.5
execute as @a at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.5 0.3

# Title
title @a times 10 80 30
title @a title [{text:"Abyssal Tremor",color:"dark_gray"}]
title @a subtitle [{text:"The deep earth shakes...",color:"gray",italic:true}]

# Override tick to 1s for active event
schedule function evercraft:world_events/tick 1s
