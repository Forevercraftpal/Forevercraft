# === AUTO-COLLECT PROMPT ===
# Shown after 10th lifetime reward claim
# Asks if player wants rewards auto-collected on codex open
# Run as: player

tellraw @s ""
tellraw @s [{text:"\u2726 ",color:"yellow"},{text:"You've claimed ",color:"gray"},{text:"10 rewards",color:"gold",bold:true},{text:"!",color:"gray"}]
tellraw @s [{text:"  Would you like rewards to be ",color:"gray"},{text:"auto-collected",color:"green",bold:true},{text:" when opening your codex?",color:"gray"}]
tellraw @s [{text:"  "},{text:"[Yes, enable auto-collect]",color:"green",bold:true,clickEvent:{action:"run_command",value:"/trigger ec.auto_clm set 1"},hoverEvent:{action:"show_text",value:{text:"Rewards will be collected automatically when you open the codex",color:"gray"}}},{text:"  "},{text:"[No thanks]",color:"red",clickEvent:{action:"run_command",value:"/trigger ec.auto_clm set 2"},hoverEvent:{action:"show_text",value:{text:"Continue claiming manually",color:"gray"}}}]
tellraw @s ""
playsound minecraft:block.note_block.chime player @s ~ ~ ~ 0.5 1.0
