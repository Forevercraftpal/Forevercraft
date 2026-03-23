# Journal — Refresh Affinity Sub-Page
# Reads each biome mastery score and updates the corresponding text_display
# Run as the player

# b0: Plains
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm0
data merge storage evercraft:af_temp {id:0,name:"Plains"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b1: Forest
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm1
data merge storage evercraft:af_temp {id:1,name:"Forest"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b2: Flower Forest
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm2
data merge storage evercraft:af_temp {id:2,name:"Flower Forest"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b3: Dark Forest
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm3
data merge storage evercraft:af_temp {id:3,name:"Dark Forest"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b4: Taiga
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm4
data merge storage evercraft:af_temp {id:4,name:"Taiga"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b5: Mountains
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm5
data merge storage evercraft:af_temp {id:5,name:"Mountains"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b6: Jungle
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm6
data merge storage evercraft:af_temp {id:6,name:"Jungle"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b7: Desert
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm7
data merge storage evercraft:af_temp {id:7,name:"Desert"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b8: Savanna
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm8
data merge storage evercraft:af_temp {id:8,name:"Savanna"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b9: Ocean
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm9
data merge storage evercraft:af_temp {id:9,name:"Ocean"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b10: River
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm10
data merge storage evercraft:af_temp {id:10,name:"River"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b11: Swamp
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm11
data merge storage evercraft:af_temp {id:11,name:"Swamp"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b12: Mushroom Island
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm12
data merge storage evercraft:af_temp {id:12,name:"Mushroom Island"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b13: Ice Plains
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm13
data merge storage evercraft:af_temp {id:13,name:"Ice Plains"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b14: Badlands
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm14
data merge storage evercraft:af_temp {id:14,name:"Badlands"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b15: Lush Caves
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm15
data merge storage evercraft:af_temp {id:15,name:"Lush Caves"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b16: Dripstone Caves
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm16
data merge storage evercraft:af_temp {id:16,name:"Dripstone Caves"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b17: Deep Dark
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm17
data merge storage evercraft:af_temp {id:17,name:"Deep Dark"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b18: Nether Wastes
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm18
data merge storage evercraft:af_temp {id:18,name:"Nether Wastes"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b19: Crimson Forest
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm19
data merge storage evercraft:af_temp {id:19,name:"Crimson Forest"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b20: Warped Forest
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm20
data merge storage evercraft:af_temp {id:20,name:"Warped Forest"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b21: Basalt Deltas
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm21
data merge storage evercraft:af_temp {id:21,name:"Basalt Deltas"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b22: Soul Sand Valley
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm22
data merge storage evercraft:af_temp {id:22,name:"Soul Sand Valley"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b23: The End
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm23
data merge storage evercraft:af_temp {id:23,name:"The End"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp

# b24: Pale Garden
execute store result storage evercraft:af_temp score int 1.0 run scoreboard players get @s ec.bm24
data merge storage evercraft:af_temp {id:24,name:"Pale Garden"}
function evercraft:codex/hub/journal/refresh_affinity_line with storage evercraft:af_temp
