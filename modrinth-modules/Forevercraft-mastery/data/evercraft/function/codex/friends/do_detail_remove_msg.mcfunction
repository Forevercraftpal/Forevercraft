# Codex Friends — Show removal confirmation message (macro)
# Macro arg: confirm_cid (target's uuid3 = companion.id)

$tellraw @s [{text:"[Friends] ",color:"gold"},{text:"Remove ",color:"red"},{selector:"@a[scores={companion.id=$(confirm_cid)},limit=1]"},{text:"? ",color:"red"},{text:"[Confirm]",color:"dark_red",bold:true,click_event:{action:"run_command",command:"/trigger ec.fr_remove set $(confirm_cid)"}}]
