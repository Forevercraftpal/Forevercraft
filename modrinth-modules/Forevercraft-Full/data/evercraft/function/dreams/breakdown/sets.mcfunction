# Dream Rate Breakdown — Set Bonuses
# Titan 2pc, Armored Elytra luck

scoreboard players set #dr_any ec.temp 0

# Titan 2pc (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get titan_2pc_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Set Bonuses:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Titan 2pc",color:"aqua"},{text:"                +1.0",color:"gold"}]

# Armored Elytra luck modifiers (+0.5 each)
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:dragonmaster_ae_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Set Bonuses:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Dragonmaster Elytra",color:"aqua"},{text:"      +0.5",color:"gold"}]

execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:titan_ae_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Set Bonuses:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Titan Elytra",color:"aqua"},{text:"             +0.5",color:"gold"}]

execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:verdant_ae_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Set Bonuses:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Verdant Elytra",color:"aqua"},{text:"           +0.5",color:"gold"}]

execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:infernal_ae_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Set Bonuses:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Infernal Elytra",color:"aqua"},{text:"          +0.5",color:"gold"}]

execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:ender_dragon_ae_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Set Bonuses:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Ender Dragon Elytra",color:"aqua"},{text:"      +0.5",color:"gold"}]
