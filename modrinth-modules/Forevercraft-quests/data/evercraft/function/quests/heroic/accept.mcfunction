# ============================================================
# Accept Heroic Quest (Tier 6) — Opens Preview with 2 options
# ============================================================

# Check if already active
execute if score @s ec.quest_id_6 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already have a Heroic quest active. Cancel it? ",color:"yellow"},{text:"(-100 rep)",color:"red"}]
execute if score @s ec.quest_id_6 matches 1.. run tellraw @s ["",{text:"  "},{text:"[Cancel Quest]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 16"}},{text:"  "},{text:"[Keep Quest]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 20"}}]
execute if score @s ec.quest_id_6 matches 1.. run return 1

# Check if already completed
execute if score @s ec.quest_done_6 matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You have already completed a Heroic quest. Seek glory elsewhere!",color:"red"}]
execute if score @s ec.quest_done_6 matches 1 run return 1

# Check prerequisites (requires 1000+ rep with village)
execute unless score @s ec.village_rep matches 1000.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You need ",color:"red"},{text:"Hero ",color:"dark_purple"},{text:"rank (1000+ reputation) to accept Heroic quests!",color:"red"}]
execute unless score @s ec.village_rep matches 1000.. run return 1

# Check cooldown from cancel
execute if score @s ec.qc_cd_6 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Heroic quests are on cooldown. Try again later!",color:"red"}]
execute if score @s ec.qc_cd_6 matches 1.. run return 1

# Check if preview already open
execute if score @s ec.qp_active matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You already have a preview open. Close it first!",color:"red"}]
execute if score @s ec.qp_active matches 1 run return 1

# Open quest preview with 2 options (heroic shows 2, no re-roll)
function evercraft:quests/preview/open_preview {tier:6,max:30}

tellraw @s ["",{text:"  ","color":"gray"},{"text":"⚠ Heroic quests have a 7-day timer!","color":"gold","italic":true}]
return 1
