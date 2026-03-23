# Moon phase events - called once at dusk
scoreboard players set #ec_moon_notified ec.var 1

# === FULL MOON (phase 0) ===
execute if score #moon_phase ec.var matches 0 as @a at @s run playsound minecraft:block.respawn_anchor.ambient master @s ~ ~ ~ 0.3 1.4
execute if score #moon_phase ec.var matches 0 run tellraw @a [{text:""},{text:"The moon seems to be drawing out the life in the ocean!",color:"aqua",italic:true}]

# Harvest Moon roll (1/8 chance on full moon)
execute if score #moon_phase ec.var matches 0 run function evercraft:luck_buffs/harvest_moon_roll

# === NEW MOON (phase 4) ===
execute if score #moon_phase ec.var matches 4 as @a at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.3 0.7
execute if score #moon_phase ec.var matches 4 run tellraw @a [{text:""},{text:"The aura cast by the darkened moon is creating hostility!",color:"dark_gray",italic:true}]

# --- Achievement: Track unique moon phases seen ---
# Uses additive counting: full=+1, harvest=+2, new=+4. Total of 7 = all seen.
# Only add if not already counted (check ranges to avoid double-add)
# Full moon (phase 0): add 1 if ach.moons_seen is 0, 2, 4, or 6 (bit 1 not set)
execute if score #moon_phase ec.var matches 0 as @a[scores={ach.moons_seen=0}] run scoreboard players add @s ach.moons_seen 1
execute if score #moon_phase ec.var matches 0 as @a[scores={ach.moons_seen=2}] run scoreboard players add @s ach.moons_seen 1
execute if score #moon_phase ec.var matches 0 as @a[scores={ach.moons_seen=4}] run scoreboard players add @s ach.moons_seen 1
execute if score #moon_phase ec.var matches 0 as @a[scores={ach.moons_seen=6}] run scoreboard players add @s ach.moons_seen 1
# New moon (phase 4): add 4 if ach.moons_seen is 0, 1, 2, or 3 (bit 4 not set)
execute if score #moon_phase ec.var matches 4 as @a[scores={ach.moons_seen=0}] run scoreboard players add @s ach.moons_seen 4
execute if score #moon_phase ec.var matches 4 as @a[scores={ach.moons_seen=1}] run scoreboard players add @s ach.moons_seen 4
execute if score #moon_phase ec.var matches 4 as @a[scores={ach.moons_seen=2}] run scoreboard players add @s ach.moons_seen 4
execute if score #moon_phase ec.var matches 4 as @a[scores={ach.moons_seen=3}] run scoreboard players add @s ach.moons_seen 4
