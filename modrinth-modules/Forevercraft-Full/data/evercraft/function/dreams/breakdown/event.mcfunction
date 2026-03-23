# Dream Rate Breakdown — Event Bonus
# Dream Surge event modifier

scoreboard players set #dr_any ec.temp 0

execute store success score #has ec.temp run attribute @s luck modifier value get ec_event_dream_surge 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Event:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    ",color:"white"},{text:"✦ DREAM SURGE",color:"light_purple",bold:true},{text:"          +25.0",color:"gold"}]
