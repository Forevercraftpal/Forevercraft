# Accept Tier 4 (Commission) Quest — Opens Preview
execute if score @s ec.quest_id_4 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already have a Commission active. Cancel it? ",color:"yellow"},{text:"(-40 rep)",color:"red"}]
execute if score @s ec.quest_id_4 matches 1.. run tellraw @s ["",{text:"  "},{text:"[Cancel Quest]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 14"}},{text:"  "},{text:"[Keep Quest]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 20"}}]
execute if score @s ec.quest_id_4 matches 1.. run return 1
execute if score @s ec.quest_done_4 matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already completed today's Commission. Return tomorrow!",color:"red"}]
execute if score @s ec.quest_done_4 matches 1 run return 1

# Check cooldown from cancel
execute if score @s ec.qc_cd_4 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Commissions are on cooldown. Try again shortly!",color:"red"}]
execute if score @s ec.qc_cd_4 matches 1.. run return 1

# Check if preview already open
execute if score @s ec.qp_active matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already have a preview open. Close it first!",color:"red"}]
execute if score @s ec.qp_active matches 1 run return 1

# Open quest preview with 3 options
function evercraft:quests/preview/open_preview {tier:4,max:42}
return 1
