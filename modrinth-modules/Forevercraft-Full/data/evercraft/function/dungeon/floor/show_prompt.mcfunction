# Macro: Show descent prompt with floor number
$tellraw @a[tag=dg.player] [{text:"  Descend to Floor $(next)? ",color:"yellow"},{text:"[YES]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.dg_descend set 1"}},{text:" ",color:"gray"},{text:"[NO]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.dg_descend set 2"}}]
tellraw @a[tag=dg.player] [{text:"  Warning: ",color:"gray",italic:true},{text:"Mobs will be significantly stronger!",color:"red",italic:true}]
