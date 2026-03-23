# Notification Volume Control — Cycle All → Important → Off → All
# Run as player
# ec.notify stores: 0=All, 1=Important Only, 2=Off

# Initialize if not set
execute unless score @s ec.notify matches 0.. run scoreboard players set @s ec.notify 0

# Copy to temp for safe branching
scoreboard players operation #notify_old ec.temp = @s ec.notify

# Cycle: 0→1, 1→2, 2→0
execute if score #notify_old ec.temp matches 0 run scoreboard players set @s ec.notify 1
execute if score #notify_old ec.temp matches 1 run scoreboard players set @s ec.notify 2
execute if score #notify_old ec.temp matches 2.. run scoreboard players set @s ec.notify 0

# Display feedback
execute if score @s ec.notify matches 0 run tellraw @s [{text:"  Notifications: ",color:"gray"},{text:"All",color:"green"},{text:" — all messages shown",color:"dark_gray"}]
execute if score @s ec.notify matches 1 run tellraw @s [{text:"  Notifications: ",color:"gray"},{text:"Important Only",color:"yellow"},{text:" — minor messages hidden",color:"dark_gray"}]
execute if score @s ec.notify matches 2 run tellraw @s [{text:"  Notifications: ",color:"gray"},{text:"OFF",color:"red"},{text:" — only critical alerts shown",color:"dark_gray"}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
