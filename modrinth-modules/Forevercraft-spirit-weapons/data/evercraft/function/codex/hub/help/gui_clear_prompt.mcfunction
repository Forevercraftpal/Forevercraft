# Codex Hub — Help Guide — GUI Cleanup Prompt
# Run as the interaction entity that was clicked
# Shows a tellraw asking the player to confirm clearing floating GUIs

# Clear interaction data
data remove entity @s interaction

# Route back to the owning player via session
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp run tellraw @s [{text:"\n"},{text:"\u2699 ",color:"gray"},{text:"Do you want to clear all floating GUIs in your area?",color:"white"},{text:"\n"},{text:"  [Yes]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.guiclear set 1"},hover_event:{action:"show_text",value:"Clear all floating GUI entities nearby"}},{text:"  "},{text:"[No]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger adv.guiclear set 0"},hover_event:{action:"show_text",value:"Cancel"}}]
