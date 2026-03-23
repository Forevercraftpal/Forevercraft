# Beastmaster P3: War Cry — buff all wolves in 32 blocks for 30s
# Triggered via /trigger adv.warcry set 1

# Check unlock
execute unless score @s adv.pa_beas3 matches 1 run return run tellraw @s [{text:"[Beastmaster] ",color:"green"},{text:"You haven't unlocked War Cry yet!",color:"red"}]

# Check cooldown (300s = 15000 ticks at 20t/cycle = 15000 raw ticks)
execute if score @s adv.pa_beas3_cd matches 1.. run return run tellraw @s [{text:"[Beastmaster] ",color:"green"},{text:"War Cry is on cooldown!",color:"red"}]

# Set 5-minute cooldown (300 seconds, decremented every 20t in wolf_tick = 15000/20 = 750 cycles)
# Actually wolf_tick decrements by 1 per cycle (20t), so 300s = 15s per tick...
# Let's use raw seconds: 300 ticks at 1/sec decrement would need a 1s schedule
# Since wolf_tick runs every 20t and decrements by 1, we need 300s * 1 cycle/20t * 20t/s = 300
# wolf_tick runs every 20 ticks (1 second), decrement by 1 each time → 300 = 300 seconds
scoreboard players set @s adv.pa_beas3_cd 300

# Apply Speed II + Strength II to all wolves within 32 blocks for 30 seconds
execute at @s run effect give @e[type=wolf,distance=..32] minecraft:speed 30 1 false
execute at @s run effect give @e[type=wolf,distance=..32] minecraft:strength 30 1 false
execute at @s run effect give @e[type=fox,distance=..32,tag=ec.fox_tamed] minecraft:speed 30 1 false
execute at @s run effect give @e[type=fox,distance=..32,tag=ec.fox_tamed] minecraft:strength 30 1 false

# Visual + audio feedback
execute at @s run particle minecraft:angry_villager ~ ~1 ~ 2 1 2 0.1 20
execute at @s run playsound minecraft:entity.wolf_puglin.ambient master @a ~ ~ ~ 2 0.6
execute at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.5 1.8
tellraw @s [{text:"✦ ",color:"gold"},{text:"[War Cry] ",color:"green",bold:true},{text:"Your wolves surge with power! Speed II + Strength II for 30s",color:"yellow"}]
