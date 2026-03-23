# The Eternal Pharaoh — Main Tick

# Ambient
execute as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.9,0.7,0.1],scale:1.0} ~ ~1.5 ~ 0.5 0.5 0.5 0.01 2
execute as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:enchant ~ ~2 ~ 0.3 0.3 0.3 0.3 1

# Pillar particles (color-coded)
execute as @e[tag=ec.rd_ep_pillar1] at @s run particle minecraft:dust{color:[1.0,0.2,0.2],scale:1.0} ~ ~2 ~ 0.2 0.3 0.2 0.01 1
execute as @e[tag=ec.rd_ep_pillar2] at @s run particle minecraft:dust{color:[0.2,0.4,1.0],scale:1.0} ~ ~2 ~ 0.2 0.3 0.2 0.01 1
execute as @e[tag=ec.rd_ep_pillar3] at @s run particle minecraft:dust{color:[0.2,1.0,0.2],scale:1.0} ~ ~2 ~ 0.2 0.3 0.2 0.01 1
execute as @e[tag=ec.rd_ep_pillar4] at @s run particle minecraft:dust{color:[1.0,0.8,0.0],scale:1.0} ~ ~2 ~ 0.2 0.3 0.2 0.01 1

# Phase routing
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/eternal_pharaoh/abilities/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/eternal_pharaoh/abilities/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/eternal_pharaoh/abilities/phase3

# Hieroglyphic puzzle (all phases)
function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_tick

# Cleansing altar check
function evercraft:raids/boss/eternal_pharaoh/puzzle/altar_tick

# Decrement cooldowns
execute if score #rd_ep_curse_cd ec.var matches 1.. run scoreboard players remove #rd_ep_curse_cd ec.var 1
execute if score #rd_ep_altar_cd ec.var matches 1.. run scoreboard players remove #rd_ep_altar_cd ec.var 1
execute if score #rd_ep_glow_cd ec.var matches 1.. run scoreboard players remove #rd_ep_glow_cd ec.var 1
execute if score #rd_ep_shield_cd ec.var matches 1.. run scoreboard players remove #rd_ep_shield_cd ec.var 1
execute if score #rd_ep_time_timer ec.var matches 1.. run scoreboard players remove #rd_ep_time_timer ec.var 1
