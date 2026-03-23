# === STAGE-UP CELEBRATION ===
# #new_stage ec.temp = the new stage (1-7)
# @s = the player

# Sound + particles
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 20

# Title based on stage
execute if score #new_stage ec.temp matches 1 run title @s title [{text:"✦ ",color:"gold"},{text:"Common",color:"white",bold:true},{text:" ✦",color:"gold"}]
execute if score #new_stage ec.temp matches 2 run title @s title [{text:"✦ ",color:"gold"},{text:"Uncommon",color:"blue",bold:true},{text:" ✦",color:"gold"}]
execute if score #new_stage ec.temp matches 3 run title @s title [{text:"✦ ",color:"gold"},{text:"Rare",color:"aqua",bold:true},{text:" ✦",color:"gold"}]
execute if score #new_stage ec.temp matches 4 run title @s title [{text:"✦ ",color:"gold"},{text:"Ornate",color:"dark_purple",bold:true},{text:" ✦",color:"gold"}]
execute if score #new_stage ec.temp matches 5 run title @s title [{text:"✦ ",color:"gold"},{text:"Exquisite",color:"light_purple",bold:true},{text:" ✦",color:"gold"}]
execute if score #new_stage ec.temp matches 6 run title @s title [{text:"✦ ",color:"gold"},{text:"Mythical",color:"gold",bold:true},{text:" ✦",color:"gold"}]
execute if score #new_stage ec.temp matches 7 run title @s title [{text:"✦ ",color:"yellow"},{text:"SPIRIT",color:"yellow",bold:true},{text:" ✦",color:"yellow"}]

title @s subtitle {text:"Class Affinity Increased",color:"gray"}
