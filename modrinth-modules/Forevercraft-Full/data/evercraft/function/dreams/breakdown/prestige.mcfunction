# Dream Rate Breakdown — Prestige Abilities
# Taskmaster prestige bonuses from advantage trees

scoreboard players set #dr_any ec.temp 0

# Prestige Taskmaster Level 2 (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:adv_pres_task2 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Prestige:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Taskmaster II",color:"yellow"},{text:"            +1.0",color:"gold"}]

# Prestige Taskmaster Level 3 (+2.0)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:adv_pres_task3 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Prestige:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Taskmaster III",color:"yellow"},{text:"           +2.0",color:"gold"}]
