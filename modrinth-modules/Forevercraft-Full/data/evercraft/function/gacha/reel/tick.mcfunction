# Reel animation tick — runs as @s = player with ec.reel_tick score, at @s
# Increments timer and dispatches scramble at decreasing frequency

scoreboard players add @s ec.reel_tick 1

# Safety: if reel entities gone (player walked away), abort
execute unless entity @e[tag=ec.ReelSlot,distance=..20,limit=1] run return run function evercraft:gacha/reel/cleanup

# === PHASE 1 (tick 1-20): Scramble every tick — rapid fire ===
execute if score @s ec.reel_tick matches 1..20 run function evercraft:gacha/reel/scramble

# === PHASE 2 (tick 21-40): Scramble every 2 ticks — slowing ===
execute if score @s ec.reel_tick matches 21..40 run scoreboard players operation #reel_mod ec.temp = @s ec.reel_tick
execute if score @s ec.reel_tick matches 21..40 run scoreboard players operation #reel_mod ec.temp %= #2 ec.const
execute if score @s ec.reel_tick matches 21..40 if score #reel_mod ec.temp matches 0 run function evercraft:gacha/reel/scramble

# === PHASE 3 (tick 41-55): Scramble every 3 ticks — tension building ===
execute if score @s ec.reel_tick matches 41..55 run scoreboard players operation #reel_mod ec.temp = @s ec.reel_tick
execute if score @s ec.reel_tick matches 41..55 run scoreboard players operation #reel_mod ec.temp %= #3 ec.const
execute if score @s ec.reel_tick matches 41..55 if score #reel_mod ec.temp matches 0 run function evercraft:gacha/reel/scramble

# === PHASE 4 (tick 56-70): Scramble every 5 ticks — almost there ===
execute if score @s ec.reel_tick matches 56..70 run scoreboard players operation #reel_mod ec.temp = @s ec.reel_tick
execute if score @s ec.reel_tick matches 56..70 run scoreboard players operation #reel_mod ec.temp %= #5 ec.const
execute if score @s ec.reel_tick matches 56..70 if score #reel_mod ec.temp matches 0 run function evercraft:gacha/reel/scramble

# === PHASE 5 (tick 75): Last scramble, then lock in winning item ===
execute if score @s ec.reel_tick matches 75 run function evercraft:gacha/reel/scramble
execute if score @s ec.reel_tick matches 75 run function evercraft:gacha/reel/set_winning_visual

# === REVEAL at tick 80 ===
execute if score @s ec.reel_tick matches 80 run function evercraft:gacha/reel/reveal

# === TICK 95: Next pull or cleanup ===
# If more pulls remain (10-pull), transition to next animation
execute if score @s ec.reel_tick matches 95 if score @s ec.reel_count matches 1.. run return run function evercraft:gacha/reel/next_pull
# Otherwise, final cleanup
execute if score @s ec.reel_tick matches 95 run return run function evercraft:gacha/reel/cleanup

# Beacon ambient tension sound (plays periodically)
execute if score @s ec.reel_tick matches 1 run playsound minecraft:block.beacon.ambient master @s ~ ~ ~ 0.4 0.8
execute if score @s ec.reel_tick matches 30 run playsound minecraft:block.beacon.ambient master @s ~ ~ ~ 0.5 1.0
execute if score @s ec.reel_tick matches 60 run playsound minecraft:block.beacon.ambient master @s ~ ~ ~ 0.6 1.2

# Safety timeout
execute if score @s ec.reel_tick matches 100.. run function evercraft:gacha/reel/cleanup
