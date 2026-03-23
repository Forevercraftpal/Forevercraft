# Newcomer: Ask Combatant or Pacifist preference
# Called once during first-join flow (after difficulty selection)
# Player picks a path, then chooses from spirit weapons or spirit tools

tellraw @s ""
tellraw @s [{text:"═══════════════════════════","color":"gold","strikethrough":true}]
tellraw @s [{text:"  ","color":"white"},{text:"Choose Your Path","color":"gold","bold":true}]
tellraw @s [{text:"  What kind of adventurer are you?","color":"gray","italic":true}]
tellraw @s ""
tellraw @s [{text:"  ","color":"white"},{text:"[Combatant]","color":"red","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.newcomer_pick set 100"},"hover_event":{"action":"show_text","value":[{"text":"Path of War\n","color":"red","bold":true},{"text":"Choose a spirit weapon and fight.\n","color":"gray","bold":false},{"text":"13 combat classes available.","color":"dark_gray","bold":false}]}},{text:"   ","color":"white"},{text:"[Pacifist]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.newcomer_pick set 101"},"hover_event":{"action":"show_text","value":[{"text":"Path of Peace\n","color":"green","bold":true},{"text":"Choose a spirit tool and craft.\n","color":"gray","bold":false},{"text":"6 artisan paths available.","color":"dark_gray","bold":false}]}}]
tellraw @s ""
tellraw @s [{text:"═══════════════════════════","color":"gold","strikethrough":true}]
