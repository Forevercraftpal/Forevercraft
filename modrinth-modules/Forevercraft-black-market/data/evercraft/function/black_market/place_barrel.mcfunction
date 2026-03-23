# ============================================================
# Black Market — Place Barrel at Village
# Run at: village marker position (armor_stand bestiary.village.name)
# Spawns a locked barrel + invisible marker for detection
# ============================================================

# Place the barrel, then apply lock via data merge (avoids MC-276956 setblock bug)
setblock ~ ~ ~ minecraft:barrel[facing=north]{CustomName:{text:"Black Market",color:"dark_red",italic:true}}
data merge block ~ ~ ~ {lock:{predicates:{"minecraft:custom_data":"{ec_bm_key:1b}"}}}

# Summon invisible marker at block center for proximity/detection
execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["BM.Barrel","smithed.entity"]}

# Floating red label above barrel (centered on block)
execute align xyz positioned ~0.5 ~1.0 ~0.5 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["BM.Label","smithed.entity"],billboard:"center",text:[{text:"\u2620 ",color:"dark_red"},{text:"Black Market",color:"dark_red",bold:true},{text:" \u2620",color:"dark_red"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

# Copy village ID from nearest village marker to our barrel marker
execute store result score #bm_vid ec.bm_temp run scoreboard players get @e[type=armor_stand,tag=bestiary.village.name,distance=..80,limit=1,sort=nearest] ec.village_id
scoreboard players operation @e[type=marker,tag=BM.Barrel,distance=..1,limit=1,sort=nearest] ec.village_id = #bm_vid ec.bm_temp

# Visual feedback
particle minecraft:witch ~ ~1 ~ 0.3 0.3 0.3 0.05 15
playsound minecraft:block.respawn_anchor.charge master @a[distance=..32] ~ ~ ~ 0.6 0.6
