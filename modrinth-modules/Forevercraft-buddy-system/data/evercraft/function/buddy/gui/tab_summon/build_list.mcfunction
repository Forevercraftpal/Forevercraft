# Tab 3: Build Summon List (with pagination)
# @s = player, page tracked by ec.bd_summon_pg (1-10)
# Scans for named tamed animals within 128 blocks

# Counters
scoreboard players set #bd_summon_row ec.temp 0
scoreboard players set #bd_summon_total ec.temp 0
scoreboard players set #bd_summon_idx ec.temp 0

# Calculate skip count: (page - 1) * 10
scoreboard players operation #bd_summon_skip ec.temp = @s ec.bd_summon_pg
scoreboard players remove #bd_summon_skip ec.temp 1
scoreboard players set #bd_pg_size ec.temp 10
scoreboard players operation #bd_summon_skip ec.temp *= #bd_pg_size ec.temp

# Scan all named tamed animals (up to 100)
execute as @e[type=#evercraft:tameable_companions,tag=ec.tame_protected,distance=..128,limit=100,sort=nearest] if data entity @s CustomName run function evercraft:buddy/gui/tab_summon/process_entry

# Pagination arrows if >10 total
execute if score #bd_summon_total ec.temp matches 11.. run function evercraft:buddy/gui/tab_summon/spawn_nav

# Page info
execute if score #bd_summon_total ec.temp matches 1.. run function evercraft:buddy/gui/tab_summon/show_page_info

# Empty message
execute if score #bd_summon_total ec.temp matches 0 rotated ~ 0 positioned ^ ^1.7 ^2.26 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["bd.summon_content","companion.menuelement"],billboard:"center",text:[{text:"No named tamed animals found nearby.",color:"gray"},{text:"\n"},{text:"Name your tamed mobs to see them here!",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
