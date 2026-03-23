# Dungeon Difficulty Menu — Check Clicks
# Run as: player with DG.InMenu

# Cancel button
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=DG.CancelBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:dungeon/menu/close

# Easy button (difficulty 0)
execute as @e[type=interaction,tag=DG.EasyBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:dungeon/menu/select {difficulty:0,label:"Easy",color:"green"}

# Normal button (difficulty 1)
execute as @e[type=interaction,tag=DG.NormalBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:dungeon/menu/select {difficulty:1,label:"Normal",color:"yellow"}

# Hard button (difficulty 2)
execute as @e[type=interaction,tag=DG.HardBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:dungeon/menu/select {difficulty:2,label:"Hard",color:"red"}

# Brutal button (difficulty 3)
execute as @e[type=interaction,tag=DG.BrutalBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:dungeon/menu/select {difficulty:3,label:"Brutal",color:"dark_red"}
