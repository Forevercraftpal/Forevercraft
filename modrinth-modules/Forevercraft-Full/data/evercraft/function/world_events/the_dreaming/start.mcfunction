# The Dreaming — START (1 hour, one-time milestone)
# Triggered when ANY player first reaches DR 30
# Executed as the triggering player

# Set one-time flag (prevents ever triggering again)
scoreboard players set #dream_30_ever ec.var 1

# Set world event state
scoreboard players set #we_active ec.var 1
scoreboard players set #we_event_id ec.var 2
scoreboard players set #we_timer ec.var 3600
scoreboard players set #we_fx ec.var 0

# Set tier lock flag (checked by crate systems — guaranteed Rare+)
scoreboard players set #we_dreaming_lock ec.var 1

# Apply Dream Rate modifier (+10.0 global — massive temporary boost)
execute as @a run attribute @s luck modifier remove ec_we_dreaming
execute as @a run attribute @s luck modifier add ec_we_dreaming 10.0 add_value

# Omens + World Events: Bad Omen doubles event DR boost
tag @a[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] add ec.we_omen
execute as @a[tag=ec.we_omen] run attribute @s luck modifier add ec_we_omen_bonus 2.0 add_value
execute as @a[tag=ec.we_omen] run effect clear @s minecraft:bad_omen
execute as @a[tag=ec.we_omen] run tellraw @s [{text:"  ",color:"dark_red"},{text:"Your Bad Omen amplifies the event! ",color:"red"},{text:"(+2.0 bonus DR)",color:"gold"}]
tag @a remove ec.we_omen

# Server-wide announcement with triggering player's name
tellraw @a ""
tellraw @a [{text:"  "},{text:"✦ THE DREAMING ✦",color:"light_purple",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{selector:"@s",color:"gold",bold:true},{text:" has awakened The Dreaming!",color:"light_purple",italic:true}]
tellraw @a [{text:"  "},{text:"Reality bends to the will of dreams...",color:"light_purple",italic:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"  + ",color:"light_purple"},{text:"ALL players: Dream Rate +10.0",color:"#FF88FF"}]
tellraw @a [{text:"  "},{text:"  + ",color:"light_purple"},{text:"All crate drops guaranteed Rare+",color:"#FF88FF"}]
tellraw @a [{text:"  "},{text:"  + ",color:"light_purple"},{text:"Lore sparkle spawn rate tripled",color:"#FF88FF"}]
tellraw @a [{text:"  "},{text:"  Duration: 1 hour",color:"gray"}]
tellraw @a ""

# Ethereal sounds
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.4 1.5
execute as @a at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 1.0 0.5
execute as @a at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1.0 0.3
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 0.8

# Title for all players
title @a times 20 100 40
title @a title [{text:"The Dreaming",color:"light_purple"}]
title @a subtitle [{text:"Reality bends to the will of dreams...",color:"#FF88FF",italic:true}]

# Track for achievements
scoreboard players set @a ach.we_dreaming 1

# Override tick to 1s for active event
schedule function evercraft:world_events/tick 1s
