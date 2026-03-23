# Infinite Castle — Spawn Bosses on Boss Floors
# Number of bosses = floor / 10 (floor 10=1, floor 20=2, ..., floor 100=10)
# Run at: ic.center marker position

# Calculate boss count
scoreboard players operation #ic_boss_count ec.var = #ic_floor ec.var
scoreboard players operation #ic_boss_count ec.var /= #10 ec.const

# Store for announcement
execute store result storage evercraft:castle boss.count int 1 run scoreboard players get #ic_boss_count ec.var

# Announce boss floor
tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_red"},{text:"BOSS FLOOR! ",color:"dark_red",bold:true},{text:"World Bosses incoming!",color:"red"}]
playsound minecraft:entity.wither.spawn master @a[tag=ic.player] ~ ~ ~ 0.8 0.5

# Spawn bosses in a loop
function evercraft:castle/spawn_boss_loop
