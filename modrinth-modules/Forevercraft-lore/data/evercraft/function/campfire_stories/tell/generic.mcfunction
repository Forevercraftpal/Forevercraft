# ============================================================
# Campfire Stories — Generic (fallback when no history exists)
# Picks a random atmospheric story
# ============================================================

# Use gametime to pick from 6 generic stories
execute store result score #cf_gen ec.var run time query gametime
scoreboard players set #cf_gen_mod ec.var 6
scoreboard players operation #cf_gen ec.var %= #cf_gen_mod ec.var

execute if score #cf_gen ec.var matches 0 run tellraw @a[distance=..8] [{text:"",color:"white"},{text:"\n"},{text:"  \u2726 ","color":"gold"},{text:"The fire crackles softly...\n","color":"#D4A574","italic":true},{text:"  ","color":"white"},{text:"\"Some say the world dreams when we sleep... and the best treasures are found by those who dream deepest.\"","color":"#E8C99B"},{text:"\n"}]

execute if score #cf_gen ec.var matches 1 run tellraw @a[distance=..8] [{text:"",color:"white"},{text:"\n"},{text:"  \u2726 ","color":"gold"},{text:"Embers rise into the night sky...\n","color":"#D4A574","italic":true},{text:"  ","color":"white"},{text:"\"The old miners used to say that the deepest veins glow brighter under a new moon.\"","color":"#E8C99B"},{text:"\n"}]

execute if score #cf_gen ec.var matches 2 run tellraw @a[distance=..8] [{text:"",color:"white"},{text:"\n"},{text:"  \u2726 ","color":"gold"},{text:"The flames dance with familiar warmth...\n","color":"#D4A574","italic":true},{text:"  ","color":"white"},{text:"\"Every adventurer needs a moment by the fire. The best stories always start here.\"","color":"#E8C99B"},{text:"\n"}]

execute if score #cf_gen ec.var matches 3 run tellraw @a[distance=..8] [{text:"",color:"white"},{text:"\n"},{text:"  \u2726 ","color":"gold"},{text:"A comfortable silence settles...\n","color":"#D4A574","italic":true},{text:"  ","color":"white"},{text:"\"They say companions chosen under a full moon share a bond that never fades.\"","color":"#E8C99B"},{text:"\n"}]

execute if score #cf_gen ec.var matches 4 run tellraw @a[distance=..8] [{text:"",color:"white"},{text:"\n"},{text:"  \u2726 ","color":"gold"},{text:"Sparks drift upward like tiny stars...\n","color":"#D4A574","italic":true},{text:"  ","color":"white"},{text:"\"The Nymph once told me that every artifact remembers its first owner. Treat them well.\"","color":"#E8C99B"},{text:"\n"}]

execute if score #cf_gen ec.var matches 5 run tellraw @a[distance=..8] [{text:"",color:"white"},{text:"\n"},{text:"  \u2726 ","color":"gold"},{text:"The campfire hums a low melody...\n","color":"#D4A574","italic":true},{text:"  ","color":"white"},{text:"\"There are places in this world where the veil is thin. Pay attention... you might find something extraordinary.\"","color":"#E8C99B"},{text:"\n"}]

execute at @s run playsound minecraft:block.campfire.crackle master @a[distance=..8] ~ ~ ~ 0.4 1.2
