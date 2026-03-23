# ============================================================
# Black Market — Spawn Buy Row (Macro)
# Spawns a text_display + interaction pair for a deal
# Args: $(name), $(price), $(y_offset), $(row_tag)
# ============================================================
$execute rotated ~ 0 positioned ^ ^$(y_offset) ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["BM.El","BM.SlotEl","BM.BuyRow"],billboard:"center",text:[{text:"  $(name)",color:"white"},{text:"   $(price) ",color:"gray"},{text:"\u25C6",color:"dark_aqua"},{text:"  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
$execute rotated ~ 0 positioned ^-0.63 ^$(y_offset) ^1.78 positioned ^ ^-0.19 ^0 run summon interaction ~ ~ ~ {Tags:["BM.El","BM.SlotEl","$(row_tag)"],width:0.2f,height:0.03f,response:1b}
