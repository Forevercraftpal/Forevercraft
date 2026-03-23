# Challenges Section — Page 1 Click Detection (original challenges)
# Run as the player with menu open

# Challenge row clicks (accept challenge for that tree)
execute as @e[type=interaction,tag=Adv.ChalClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:0}
execute as @e[type=interaction,tag=Adv.ChalClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:1}
execute as @e[type=interaction,tag=Adv.ChalClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:2}
execute as @e[type=interaction,tag=Adv.ChalClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:3}
execute as @e[type=interaction,tag=Adv.ChalClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:4}
execute as @e[type=interaction,tag=Adv.ChalClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:5}
execute as @e[type=interaction,tag=Adv.ChalClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:6}
execute as @e[type=interaction,tag=Adv.ChalClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:7}
execute as @e[type=interaction,tag=Adv.ChalClick8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:8}
execute as @e[type=interaction,tag=Adv.ChalClick9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:9}
execute as @e[type=interaction,tag=Adv.ChalClick10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:10}
execute as @e[type=interaction,tag=Adv.ChalClick11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:11}
execute as @e[type=interaction,tag=Adv.ChalClick12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:12}

# Info button — list all challenges in chat
execute as @e[type=interaction,tag=Adv.ChalInfoClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_info
