# ============================================================
# Artifact Bounty Board — Spawn Entities at Quest Board
# Run as @e[quests.board] at @s (at lectern position)
# Spawns: marker (block check anchor), label, click target
# Uses align xyz + positioned to snap to block center (BM pattern)
# ============================================================

# Clear any stale ABB entities at this position first (handles unloaded chunk survivors)
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[type=text_display,tag=ABB.QBLabel,distance=..2]
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[type=text_display,tag=ABB.Label,distance=..2]
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[type=interaction,tag=ABB.Click,distance=..2]

# Marker at block center — anchor for lectern block check (BM.Barrel pattern)
execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["ABB.Marker","smithed.entity"]}

# Quest Book label — gold, centered above lectern
execute align xyz positioned ~0.5 ~1.3 ~0.5 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ABB.QBLabel","smithed.entity"],billboard:"center",text:[{text:"\u2726 ",color:"gold"},{text:"Quest Book",color:"gold",bold:true},{text:" \u2726",color:"gold"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

# Bounty Board interaction click target — above Quest Book label
execute align xyz positioned ~0.5 ~1.7 ~0.5 run summon interaction ~ ~ ~ {Tags:["ABB.Click","smithed.entity"],width:0.8f,height:0.5f,response:1b}
