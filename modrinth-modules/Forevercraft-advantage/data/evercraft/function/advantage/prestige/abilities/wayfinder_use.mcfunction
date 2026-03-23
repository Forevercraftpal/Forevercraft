# Explorer P3: Wayfinder — locate + buff to reach nearest structure
# Triggered via /trigger adv.explore set 2
# Locates a random structure type and gives exploration buffs

# Check P3 unlocked
execute unless score @s adv.pa_expl3 matches 1 run return run tellraw @s {text:"You haven't unlocked Wayfinder yet!",color:"red"}

# Check cooldown
execute if score @s adv.pa_expl3_cd matches 1.. run return run tellraw @s [{text:"Wayfinder on cooldown! ",color:"red"},{text:"(~",color:"gray"},{score:{name:"@s",objective:"adv.pa_expl3_cd"},color:"gold"},{text:" ticks remaining)",color:"gray"}]

# Set 24-hour cooldown (1,728,000 ticks)
scoreboard players set @s adv.pa_expl3_cd 1728000

tellraw @s [{text:"✦ ",color:"gold"},{text:"Wayfinder ",color:"dark_aqua",bold:true},{text:"guides your path...",color:"gray"}]

# Roll a random structure to locate (1-9 overworld, 10-11 nether, 12 end)
execute store result score #wf_type adv.temp run random value 1..12
execute if score #wf_type adv.temp matches 1 run locate structure minecraft:village
execute if score #wf_type adv.temp matches 2 run locate structure minecraft:pillager_outpost
execute if score #wf_type adv.temp matches 3 run locate structure minecraft:stronghold
execute if score #wf_type adv.temp matches 4 run locate structure minecraft:trial_chambers
execute if score #wf_type adv.temp matches 5 run locate structure minecraft:ancient_city
execute if score #wf_type adv.temp matches 6 run locate structure minecraft:mansion
execute if score #wf_type adv.temp matches 7 run locate structure minecraft:desert_pyramid
execute if score #wf_type adv.temp matches 8 run locate structure minecraft:jungle_pyramid
execute if score #wf_type adv.temp matches 9 run locate structure minecraft:ocean_monument
execute if score #wf_type adv.temp matches 10 run locate structure minecraft:fortress
execute if score #wf_type adv.temp matches 11 run locate structure minecraft:bastion_remnant
execute if score #wf_type adv.temp matches 12 run locate structure minecraft:end_city

# Grant exploration buffs (5 minutes) to reach the structure
effect give @s minecraft:speed 300 2 false
effect give @s minecraft:night_vision 300 0 true
effect give @s minecraft:dolphins_grace 300 0 true
effect give @s minecraft:slow_falling 300 0 true

# Feedback
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.5 1.5
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.5 50
tellraw @s [{text:"Follow the path! ",color:"gold",italic:true},{text:"Exploration buffs granted for 5 minutes.",color:"dark_aqua"}]
