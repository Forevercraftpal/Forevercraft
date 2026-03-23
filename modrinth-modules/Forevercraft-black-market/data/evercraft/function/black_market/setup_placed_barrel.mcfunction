# ============================================================
# Black Market — Setup Placed Barrel
# Run at: the barrel block position
# Applies lock, spawns marker + floating label
# ============================================================
# Stop raycast / fallback scan
scoreboard players set #bm_placed ec.bm_temp 1
tag @s remove ec.searching

# Lock the barrel so vanilla inventory can't open
# Uses custom_data predicate (no registry lookup — avoids MC-276956 bug)
data merge block ~ ~ ~ {lock:{predicates:{"minecraft:custom_data":"{ec_bm_key:1b}"}}}

# Snap to block center for consistent positioning
# Summon invisible marker for detection (at block center)
execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["BM.Barrel","smithed.entity"]}

# Floating red label above barrel (centered on block)
execute align xyz positioned ~0.5 ~1.0 ~0.5 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["BM.Label","smithed.entity"],billboard:"center",text:[{text:"\u2620 ",color:"dark_red"},{text:"Black Market",color:"dark_red",bold:true},{text:" \u2620",color:"dark_red"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

# Copy village ID from nearest village marker (if within a village)
execute if entity @e[type=armor_stand,tag=bestiary.village.name,distance=..80,limit=1] run execute store result score #bm_vid ec.bm_temp run scoreboard players get @e[type=armor_stand,tag=bestiary.village.name,distance=..80,limit=1,sort=nearest] ec.village_id
execute if entity @e[type=armor_stand,tag=bestiary.village.name,distance=..80,limit=1] run scoreboard players operation @e[type=marker,tag=BM.Barrel,distance=..1,limit=1,sort=nearest] ec.village_id = #bm_vid ec.bm_temp

# Visual feedback
particle minecraft:witch ~ ~1 ~ 0.3 0.3 0.3 0.05 15
playsound minecraft:block.respawn_anchor.charge master @a[distance=..32] ~ ~ ~ 0.6 0.6
