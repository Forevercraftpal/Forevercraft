# Marriage — Macro: display proposal message
# Macro args: proposer_cid
tellraw @s ""
$tellraw @s [{text:"[Forevercraft] ",color:"gold"},{selector:"@a[scores={companion.id=$(proposer_cid)},limit=1]",color:"yellow"},{text:" has proposed marriage!",color:"light_purple"}]
tellraw @s [{text:"  "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.fr_marry set 1"},hover_event:{action:"show_text",value:{text:"Accept proposal",color:"green"}}},{text:"  "},{text:"[Decline]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.fr_marry set -1"},hover_event:{action:"show_text",value:{text:"Decline proposal",color:"red"}}}]
tellraw @s ""
