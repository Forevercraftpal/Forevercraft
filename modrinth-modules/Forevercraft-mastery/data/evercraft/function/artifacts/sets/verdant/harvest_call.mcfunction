# Harvest Call ability activation — once per Minecraft day, 32-block radius

# Check cooldown — recharges once per Minecraft day
execute if score @s ec.harvest_cd matches 1.. run tellraw @s [{text:"[Harvest Caller] ",color:"green"},{text:"Ability is recharging! Usable once per day.",color:"red"}]
execute if score @s ec.harvest_cd matches 1.. run return fail

# Check if player has Grove 4pc
execute unless entity @s[tag=verdant_4pc] run tellraw @s [{text:"[Harvest Caller] ",color:"green"},{text:"Requires Grove 4pc set bonus!",color:"red"}]
execute unless entity @s[tag=verdant_4pc] run return fail

# Set cooldown — 24000 ticks = 1 Minecraft day (20 real minutes)
scoreboard players set @s ec.harvest_cd 24000

# Success message
tellraw @s [{text:"[Harvest Caller] ",color:"green"},{text:"The harvest answers your call!",color:"gold",bold:true}]
tellraw @s [{text:"[Harvest Caller] ",color:"green"},{text:"All crops within 32 blocks instantly matured!",color:"yellow"}]

# Sound effects
playsound minecraft:item.bone_meal.use player @a ~ ~ ~ 2 0.8
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 0.6

# Particle effects (32-block spread)
particle happy_villager ~ ~1 ~ 16 1 16 0.1 200

# Grow ALL crops to max age in 32-block radius
# Y range -1 to +2 keeps under 32768 block fill limit (65x65x4 = 16900)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 wheat[age=7] replace wheat
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 carrots[age=7] replace carrots
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 potatoes[age=7] replace potatoes
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 beetroots[age=3] replace beetroots
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 melon_stem[age=7] replace melon_stem
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pumpkin_stem[age=7] replace pumpkin_stem
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 nether_wart[age=3] replace nether_wart
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 sweet_berry_bush[age=3] replace sweet_berry_bush
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 torchflower_crop[age=1] replace torchflower_crop
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pitcher_crop[half=lower,age=4] replace pitcher_crop[half=lower]
