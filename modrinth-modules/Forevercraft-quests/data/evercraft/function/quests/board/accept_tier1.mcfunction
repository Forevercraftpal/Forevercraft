# Accept Tier 1 (Errand) Quest — Opens Preview
execute if score @s ec.quest_id_1 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already have an Errand active. Cancel it?",color:"yellow"}]
execute if score @s ec.quest_id_1 matches 1.. run tellraw @s ["",{text:"  "},{text:"[Cancel Quest]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 11"}},{text:"  "},{text:"[Keep Quest]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 20"}}]
execute if score @s ec.quest_id_1 matches 1.. run return 1
execute if score @s ec.quest_done_1 matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already completed today's Errand. Return tomorrow!",color:"red"}]
execute if score @s ec.quest_done_1 matches 1 run return 1

# Check cooldown from cancel
execute if score @s ec.qc_cd_1 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Errands are on cooldown. Try again shortly!",color:"red"}]
execute if score @s ec.qc_cd_1 matches 1.. run return 1

# Check if preview already open
execute if score @s ec.qp_active matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already have a preview open. Close it first!",color:"red"}]
execute if score @s ec.qp_active matches 1 run return 1

# Open quest preview with 3 options
function evercraft:quests/preview/open_preview {tier:1,max:50}
return 1
