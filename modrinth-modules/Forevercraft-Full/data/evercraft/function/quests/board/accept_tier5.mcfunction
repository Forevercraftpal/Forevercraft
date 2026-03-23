# Accept Tier 5 (Expedition) Quest — Opens Preview
execute if score @s ec.quest_id_5 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already have an Expedition active. Cancel it? ",color:"yellow"},{text:"(-60 rep)",color:"red"}]
execute if score @s ec.quest_id_5 matches 1.. run tellraw @s ["",{text:"  "},{text:"[Cancel Quest]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 15"}},{text:"  "},{text:"[Keep Quest]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 20"}}]
execute if score @s ec.quest_id_5 matches 1.. run return 1
execute if score @s ec.quest_done_5 matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already completed today's Expedition. Return tomorrow!",color:"red"}]
execute if score @s ec.quest_done_5 matches 1 run return 1

# Check cooldown from cancel
execute if score @s ec.qc_cd_5 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Expeditions are on cooldown. Try again shortly!",color:"red"}]
execute if score @s ec.qc_cd_5 matches 1.. run return 1

# Check if preview already open
execute if score @s ec.qp_active matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already have a preview open. Close it first!",color:"red"}]
execute if score @s ec.qp_active matches 1 run return 1

# Open quest preview with 3 options
function evercraft:quests/preview/open_preview {tier:5,max:35}
return 1
