# Accept Tier 2 (Task) Quest — Opens Preview
execute if score @s ec.quest_id_2 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already have a Task active. Cancel it? ",color:"yellow"},{text:"(-15 rep)",color:"red"}]
execute if score @s ec.quest_id_2 matches 1.. run tellraw @s ["",{text:"  "},{text:"[Cancel Quest]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 12"}},{text:"  "},{text:"[Keep Quest]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 20"}}]
execute if score @s ec.quest_id_2 matches 1.. run return 1
execute if score @s ec.quest_done_2 matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already completed today's Task. Return tomorrow!",color:"red"}]
execute if score @s ec.quest_done_2 matches 1 run return 1

# Check cooldown from cancel
execute if score @s ec.qc_cd_2 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Tasks are on cooldown. Try again shortly!",color:"red"}]
execute if score @s ec.qc_cd_2 matches 1.. run return 1

# Check if preview already open
execute if score @s ec.qp_active matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already have a preview open. Close it first!",color:"red"}]
execute if score @s ec.qp_active matches 1 run return 1

# Open quest preview with 3 options
function evercraft:quests/preview/open_preview {tier:2,max:50}
return 1
