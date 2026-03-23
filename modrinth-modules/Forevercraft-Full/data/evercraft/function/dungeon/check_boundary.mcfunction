# Dungeon Instance System — Boundary Check
# Called once per second during active dungeon
# Structure dungeons: 64-block radius | Village defense: 128-block radius

# === VILLAGE DEFENSE (type 2) — 128 block boundary ===
execute if score #dg_type ec.var matches 2 at @e[type=marker,tag=dg.center,limit=1] as @a[tag=dg.player,distance=96..128] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You're leaving the village! Return to the center!",color:"red"}]
execute if score #dg_type ec.var matches 2 at @e[type=marker,tag=dg.center,limit=1] as @a[tag=dg.player,distance=96..128] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score #dg_type ec.var matches 2 at @e[type=marker,tag=dg.center,limit=1] run tag @a[tag=dg.player,distance=128..] add dg.oob

# === STRUCTURE DUNGEON (type 1) — 64 block boundary ===
execute if score #dg_type ec.var matches 1 at @e[type=marker,tag=dg.center,limit=1] as @a[tag=dg.player,distance=48..64] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"You're leaving the dungeon area! Return to the center!",color:"red"}]
execute if score #dg_type ec.var matches 1 at @e[type=marker,tag=dg.center,limit=1] as @a[tag=dg.player,distance=48..64] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score #dg_type ec.var matches 1 at @e[type=marker,tag=dg.center,limit=1] run tag @a[tag=dg.player,distance=64..] add dg.oob

# === TELEPORT OUT-OF-BOUNDS PLAYERS ===
tp @a[tag=dg.oob] @e[type=marker,tag=dg.center,limit=1]
tellraw @a[tag=dg.oob] [{text:"[Dungeon] ",color:"dark_purple"},{text:"You've been pulled back to the dungeon!",color:"red"}]
execute as @a[tag=dg.oob] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
effect give @a[tag=dg.oob] slowness 3 1 true

# Cleanup tag
tag @a[tag=dg.oob] remove dg.oob
