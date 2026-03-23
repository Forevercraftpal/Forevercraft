# Friend Invite — Macro: display friend request message
# Macro args: sender_cid

tellraw @s ""
$tellraw @s [{text:"[Forevercraft] ",color:"gold"},{selector:"@a[scores={companion.id=$(sender_cid)},limit=1]",color:"yellow"},{text:" wants to be your friend!",color:"light_purple"}]
tellraw @s [{text:"  "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.fr_invite set 1"},hover_event:{action:"show_text",value:{text:"Accept friend request",color:"green"}}},{text:"  "},{text:"[Decline]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.fr_invite set -1"},hover_event:{action:"show_text",value:{text:"Decline friend request",color:"red"}}}]
tellraw @s ""
