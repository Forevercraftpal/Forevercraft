# Transmute GUI — Deposit Warning
# Shows confirmation prompt when depositing a valuable artifact
# (enchanted, mastered, or ornate+ tier)
# Run as: player, at player position

playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"\u26a0 This artifact has enhancements that will be lost!",color:"red"}]
tellraw @s [{text:"  "},{text:"[Confirm Deposit]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger tx.dep_conf set 1"},hover_event:{action:"show_text",value:{text:"Permanently sacrifice this artifact",color:"gray"}}}]
