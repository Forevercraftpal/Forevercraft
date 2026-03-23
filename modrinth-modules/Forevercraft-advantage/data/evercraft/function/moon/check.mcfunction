# Moon Phase Check — Shows current moon phase, time of day, and active effects
# Called via /trigger ec.moon
# Slow daylight: daytime IS visual_time (0-24000), day % 8 = moon phase

# Get current values directly (no sub_day computation needed)
execute store result score #info_vtime ec.var run time query daytime
execute store result score #info_day ec.var run time query day

# Moon phase = day % 8
scoreboard players operation #info_phase ec.var = #info_day ec.var
scoreboard players operation #info_phase ec.var %= #8 ec.const

# Header
tellraw @s {text:""}
tellraw @s [{text:"  ☽ ",color:"gold"},{text:"MOON & SKY",color:"yellow",bold:true},{text:" ☽",color:"gold"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}

# Current moon phase with effects
execute if score #info_phase ec.var matches 0 run tellraw @s [{text:"  Moon: ",color:"gray"},{text:"Full Moon",color:"aqua",bold:true}]
execute if score #info_phase ec.var matches 0 run tellraw @s [{text:"    The ocean teems with life",color:"dark_aqua",italic:true}]
execute if score #info_phase ec.var matches 0 run tellraw @s [{text:"    +0.5 Fishing Dream Rate at night",color:"gray"}]

execute if score #info_phase ec.var matches 1 run tellraw @s [{text:"  Moon: ",color:"gray"},{text:"Waning Gibbous",color:"white"}]
execute if score #info_phase ec.var matches 2 run tellraw @s [{text:"  Moon: ",color:"gray"},{text:"Third Quarter",color:"white"}]
execute if score #info_phase ec.var matches 3 run tellraw @s [{text:"  Moon: ",color:"gray"},{text:"Waning Crescent",color:"white"}]

execute if score #info_phase ec.var matches 4 run tellraw @s [{text:"  Moon: ",color:"gray"},{text:"New Moon",color:"dark_purple",bold:true}]
execute if score #info_phase ec.var matches 4 run tellraw @s [{text:"    Hostility stirs in the darkness",color:"dark_gray",italic:true}]
execute if score #info_phase ec.var matches 4 run tellraw @s [{text:"    2x Patron & Furia spawn chance, +0.5 Mob Dream Rate",color:"gray"}]

execute if score #info_phase ec.var matches 5 run tellraw @s [{text:"  Moon: ",color:"gray"},{text:"Waxing Crescent",color:"white"}]
execute if score #info_phase ec.var matches 6 run tellraw @s [{text:"  Moon: ",color:"gray"},{text:"First Quarter",color:"white"}]
execute if score #info_phase ec.var matches 7 run tellraw @s [{text:"  Moon: ",color:"gray"},{text:"Waxing Gibbous",color:"white"}]

# No-effect phases get a generic line
execute if score #info_phase ec.var matches 1..3 run tellraw @s [{text:"    No special effects this phase",color:"dark_gray",italic:true}]
execute if score #info_phase ec.var matches 5..7 run tellraw @s [{text:"    No special effects this phase",color:"dark_gray",italic:true}]

tellraw @s {text:"  ─────────────────────",color:"dark_gray"}

# Time of day (24000 DayTime scale, 72000 real ticks per day)
# Morning 0-6000, Noon 6000-13000, Night 13000-23000, Dawn 23000-24000
execute if score #info_vtime ec.var matches 0..6000 run tellraw @s [{text:"  Time: ",color:"gray"},{text:"Morning",color:"yellow"},{text:" — fishing is most fruitful",color:"dark_gray"}]
execute if score #info_vtime ec.var matches 6001..13000 run tellraw @s [{text:"  Time: ",color:"gray"},{text:"Afternoon",color:"gold"},{text:" — harvest and mining thrive",color:"dark_gray"}]
execute if score #info_vtime ec.var matches 13001..23000 run tellraw @s [{text:"  Time: ",color:"gray"},{text:"Night",color:"dark_purple"},{text:" — creatures of darkness emerge",color:"dark_gray"}]
execute if score #info_vtime ec.var matches 23001..24000 run tellraw @s [{text:"  Time: ",color:"gray"},{text:"Dawn",color:"yellow"},{text:" — a new day approaches",color:"dark_gray"}]

# Active special effects
execute if score #ec_harvest_moon ec.var matches 1 run tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score #ec_harvest_moon ec.var matches 1 run tellraw @s [{text:"  ",color:"dark_gray"},{text:"HARVEST MOON",color:"gold",bold:true},{text:" is active!",color:"gold"}]
execute if score #ec_harvest_moon ec.var matches 1 run tellraw @s [{text:"    +1.5 Dream Rate, crops growing rapidly",color:"yellow"}]

# Next phase info
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}

# Calculate ticks until next dusk (daytime 13000)
# DayTime ticks run at 1/3 speed → multiply by 3 to get real ticks for minutes display
execute if score #info_vtime ec.var matches 0..12999 run scoreboard players set #next_dusk ec.var 13000
execute if score #info_vtime ec.var matches 13000..23999 run scoreboard players set #next_dusk ec.var 37000
execute if score #info_vtime ec.var matches 0..12999 run scoreboard players operation #next_dusk ec.var -= #info_vtime ec.var
execute if score #info_vtime ec.var matches 13000..23999 run scoreboard players operation #next_dusk ec.var -= #info_vtime ec.var

# Convert DayTime ticks to real-time minutes: dt_ticks * 3 / 1200
scoreboard players operation #next_dusk ec.var *= #3 ec.const
scoreboard players set #1200 ec.const 1200
scoreboard players operation #next_min ec.var = #next_dusk ec.var
scoreboard players operation #next_min ec.var /= #1200 ec.const

tellraw @s [{text:"  Next moon event in ~",color:"gray"},{score:{name:"#next_min",objective:"ec.var"},color:"yellow"},{text:" minutes",color:"gray"}]
tellraw @s {text:""}

playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.5 0.8
