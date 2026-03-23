# DR Leaderboard — Shows top 3 Dream Rates from all online players
# Run as: the clicking player

# Constants
scoreboard players set #10 ec.temp 10

# Get all online players' DR × 10 (1 decimal precision)
execute as @a store result score @s ec.temp run attribute @s luck get 10

# === FIND #1 (highest DR) ===
scoreboard players set #max ec.temp -1
execute as @a run scoreboard players operation #max ec.temp > @s ec.temp
execute as @a if score @s ec.temp = #max ec.temp run tag @s add ec.dr_1

# Store score and compute display values
execute as @a[tag=ec.dr_1,limit=1] run scoreboard players operation #dr1 ec.temp = @s ec.temp
scoreboard players operation #dr1_int ec.temp = #dr1 ec.temp
scoreboard players operation #dr1_int ec.temp /= #10 ec.temp
scoreboard players operation #dr1_frac ec.temp = #dr1 ec.temp
scoreboard players operation #dr1_frac ec.temp %= #10 ec.temp

# Remove #1 from contention
execute as @a[tag=ec.dr_1] run scoreboard players set @s ec.temp -1

# === FIND #2 ===
scoreboard players set #max ec.temp -1
execute as @a[tag=!ec.dr_1] run scoreboard players operation #max ec.temp > @s ec.temp
execute if score #max ec.temp matches 0.. as @a[tag=!ec.dr_1] if score @s ec.temp = #max ec.temp run tag @s add ec.dr_2

execute as @a[tag=ec.dr_2,limit=1] run scoreboard players operation #dr2 ec.temp = @s ec.temp
scoreboard players operation #dr2_int ec.temp = #dr2 ec.temp
scoreboard players operation #dr2_int ec.temp /= #10 ec.temp
scoreboard players operation #dr2_frac ec.temp = #dr2 ec.temp
scoreboard players operation #dr2_frac ec.temp %= #10 ec.temp

execute as @a[tag=ec.dr_2] run scoreboard players set @s ec.temp -1

# === FIND #3 ===
scoreboard players set #max ec.temp -1
execute as @a[tag=!ec.dr_1,tag=!ec.dr_2] run scoreboard players operation #max ec.temp > @s ec.temp
execute if score #max ec.temp matches 0.. as @a[tag=!ec.dr_1,tag=!ec.dr_2] if score @s ec.temp = #max ec.temp run tag @s add ec.dr_3

execute as @a[tag=ec.dr_3,limit=1] run scoreboard players operation #dr3 ec.temp = @s ec.temp
scoreboard players operation #dr3_int ec.temp = #dr3 ec.temp
scoreboard players operation #dr3_int ec.temp /= #10 ec.temp
scoreboard players operation #dr3_frac ec.temp = #dr3 ec.temp
scoreboard players operation #dr3_frac ec.temp %= #10 ec.temp

# === DISPLAY ===
tellraw @s ""
tellraw @s [{text:"  "},{text:"═══ Dream Rate Leaderboard ═══",color:"gold"}]
tellraw @s ""

# #1 — Gold
execute if entity @a[tag=ec.dr_1] run tellraw @s [{text:"   "},{text:"🥇 ",color:"gold"},{selector:"@a[tag=ec.dr_1,limit=1]",color:"yellow"},{text:" — ",color:"dark_gray"},{score:{name:"#dr1_int",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#dr1_frac",objective:"ec.temp"},color:"gold"},{text:" DR",color:"gray"}]

# #2 — Silver
execute if entity @a[tag=ec.dr_2] run tellraw @s [{text:"   "},{text:"🥈 ",color:"gray"},{selector:"@a[tag=ec.dr_2,limit=1]",color:"white"},{text:" — ",color:"dark_gray"},{score:{name:"#dr2_int",objective:"ec.temp"},color:"gray"},{text:".",color:"gray"},{score:{name:"#dr2_frac",objective:"ec.temp"},color:"gray"},{text:" DR",color:"gray"}]

# #3 — Bronze
execute if entity @a[tag=ec.dr_3] run tellraw @s [{text:"   "},{text:"🥉 ",color:"#CD7F32"},{selector:"@a[tag=ec.dr_3,limit=1]",color:"white"},{text:" — ",color:"dark_gray"},{score:{name:"#dr3_int",objective:"ec.temp"},color:"#CD7F32"},{text:".",color:"#CD7F32"},{score:{name:"#dr3_frac",objective:"ec.temp"},color:"#CD7F32"},{text:" DR",color:"gray"}]

tellraw @s ""

# Sound
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.5

# Clean up tags
tag @a remove ec.dr_1
tag @a remove ec.dr_2
tag @a remove ec.dr_3
