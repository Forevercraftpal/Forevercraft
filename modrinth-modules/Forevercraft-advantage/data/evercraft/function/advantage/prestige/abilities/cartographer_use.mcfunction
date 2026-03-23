# Explorer P2: Cartographer — locate nearest structures in current dimension
# Triggered via /trigger adv.explore set 1

# Check P2 unlocked
execute unless score @s adv.pa_expl2 matches 1 run return run tellraw @s {text:"You haven't unlocked Cartographer yet!",color:"red"}

# Check cooldown
execute if score @s adv.pa_expl2_cd matches 1.. run return run tellraw @s [{text:"Cartographer on cooldown! ",color:"red"},{text:"(~",color:"gray"},{score:{name:"@s",objective:"adv.pa_expl2_cd"},color:"gold"},{text:" ticks remaining)",color:"gray"}]

# Set 50-hour cooldown (3,600,000 ticks)
scoreboard players set @s adv.pa_expl2_cd 3600000

tellraw @s [{text:"✦ ",color:"gold"},{text:"Cartographer ",color:"dark_aqua",bold:true},{text:"reveals nearby structures...",color:"gray"}]

# Overworld structures
execute in minecraft:overworld run locate structure minecraft:village
execute in minecraft:overworld run locate structure minecraft:pillager_outpost
execute in minecraft:overworld run locate structure minecraft:stronghold
execute in minecraft:overworld run locate structure minecraft:trial_chambers
execute in minecraft:overworld run locate structure minecraft:ancient_city
execute in minecraft:overworld run locate structure minecraft:mansion

# Nether structures
execute in minecraft:the_nether run locate structure minecraft:fortress
execute in minecraft:the_nether run locate structure minecraft:bastion_remnant

# End structures
execute in minecraft:the_end run locate structure minecraft:end_city

# Feedback
playsound minecraft:item.lodestone_compass.lock master @s ~ ~ ~ 1 1
execute at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 30
tellraw @s {text:"The map reveals all...",color:"gold",italic:true}
