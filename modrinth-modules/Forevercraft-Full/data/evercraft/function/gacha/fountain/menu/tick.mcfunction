# Fountain menu tick — update coin display, distance check
# Runs as @s = player with ec.InFountain, at @s

# Distance check — close menu if player walks too far from fountain
execute unless entity @e[type=interaction,tag=ec.fountain_click,distance=..5] run return run function evercraft:gacha/fountain/menu/close

# Auto-close after 20 seconds of inactivity (400 ticks)
scoreboard players add @s ec.gf_idle 1
execute if score @s ec.gf_idle matches 400.. run return run function evercraft:gacha/fountain/menu/close
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=ec.FountainElement,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run scoreboard players set @p[tag=ec.InFountain,distance=..5] ec.gf_idle 0

# Gentle water particles at fountain base (below GUI)
execute at @e[type=interaction,tag=ec.fountain_click,distance=..5,limit=1] run particle splash ~ ~0.3 ~ 0.3 0.05 0.3 0.01 2 force @s
execute at @e[type=interaction,tag=ec.fountain_click,distance=..5,limit=1] run particle falling_water ~ ~0.5 ~ 0.2 0.1 0.2 0.005 1 force @s
