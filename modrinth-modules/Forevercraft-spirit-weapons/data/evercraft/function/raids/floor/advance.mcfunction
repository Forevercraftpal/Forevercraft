# Spirit Raids — Advance to Next Floor
# Increments floor, starts countdown for next wave

# Increment floor
scoreboard players add #rd_floor ec.var 1

# Floor 10 = boss floor — hand off to boss entry
execute if score #rd_floor ec.var matches 10 run function evercraft:raids/boss/enter
execute if score #rd_floor ec.var matches 10 run return 0

# Floors 1-9: standard raid floors with mob waves
# Reset wave counter and start countdown
scoreboard players set #rd_wave ec.var 0
scoreboard players set #rd_timer ec.var 60

# Kill remaining mobs (safety)
kill @e[tag=rd.mob]

# Pick new instance theme for mob variety
execute store result score #rd_instance ec.var run random value 1..16

# Floor clear coin reward: 3 coins per player
execute as @a[tag=rd.player] run scoreboard players add @s ec.coins 3
execute as @a[tag=rd.player] run scoreboard players add #rm_coins ec.var 3
execute as @a[tag=rd.player] run tellraw @s [{text:"  ★ ",color:"#E0B0FF"},{text:"+3 Forever Coins",color:"#E0B0FF"},{text:" — Floor Cleared!",color:"gray"}]

# Floor 5+ crate rewards
execute if score #rd_floor ec.var matches 5 as @a[tag=rd.player] run loot give @s loot evercraft:artifacts/rare/main
execute if score #rd_floor ec.var matches 5 as @a[tag=rd.player] run tellraw @s [{text:"  ★ ",color:"aqua"},{text:"Rare Artifact",color:"aqua",bold:true},{text:" — Floor 5 Bonus!",color:"gray"}]
execute if score #rd_floor ec.var matches 8 as @a[tag=rd.player] run loot give @s loot evercraft:artifacts/ornate/main
execute if score #rd_floor ec.var matches 8 as @a[tag=rd.player] run tellraw @s [{text:"  ★ ",color:"dark_purple"},{text:"Ornate Artifact",color:"dark_purple",bold:true},{text:" — Floor 8 Bonus!",color:"gray"}]

# Announce floor
execute store result storage evercraft:raids floor.current int 1 run scoreboard players get #rd_floor ec.var
function evercraft:raids/floor/announce with storage evercraft:raids floor

# Effects
execute as @a[tag=rd.player] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.4 0.8
execute at @e[type=marker,tag=rd.center,limit=1] run particle minecraft:reverse_portal ~ ~1 ~ 2 1 2 0.05 100 force
