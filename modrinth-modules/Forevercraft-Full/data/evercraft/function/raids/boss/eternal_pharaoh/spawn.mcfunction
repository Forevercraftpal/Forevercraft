# The Eternal Pharaoh (#9) — Spawn
# Desert Pyramid raid boss — Striker class artifact (Pharaoh's Fist)

scoreboard players set #rd_boss_id ec.var 9

# Summon husk with gold armor
execute anchored eyes positioned ^ ^ ^5 run summon husk ~ ~ ~ {Tags:["ec.rd_boss","ec.rd_ep"],Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:golden_sword",components:{"minecraft:enchantments":{levels:{"minecraft:sharpness":5}},"minecraft:custom_name":'{"text":"Ancient Khopesh","color":"gold","italic":false}'}},head:{id:"minecraft:golden_helmet",components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}},chest:{id:"minecraft:golden_chestplate",components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}},legs:{id:"minecraft:golden_leggings",components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}},feet:{id:"minecraft:golden_boots",components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}}}}

# HP: 1400 (700 hearts)
scoreboard players set #rd_boss_hp_max ec.var 1400
scoreboard players set #rd_p2_threshold ec.var 924
scoreboard players set #rd_p3_threshold ec.var 462

# Attributes
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s max_health base set 1400
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run tag @s add ec.rd_initializing
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s scale base set 1.8
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/base 10 add_value
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/base 0.25 add_multiplied_base
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/base 2.5 add_multiplied_base
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s knockback_resistance modifier add evercraft:rd_boss/base 0.6 add_value

# Custom name
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run data modify entity @s CustomName set value [{text:"☠ ",color:"dark_red"},{text:"The Eternal Pharaoh",color:"gold",bold:true},{text:" ☠",color:"dark_red"}]
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run data modify entity @s CustomNameVisible set value 1b

# Bossbar
bossbar remove evercraft:raid_boss
bossbar add evercraft:raid_boss [{text:"☠ ",color:"dark_red"},{text:"The Eternal Pharaoh",color:"gold",bold:true},{text:" ☠",color:"dark_red"}]
bossbar set evercraft:raid_boss color yellow
bossbar set evercraft:raid_boss max 1400
bossbar set evercraft:raid_boss value 1400
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[distance=..100]

# State
scoreboard players set #rd_active ec.var 1
scoreboard players set #rd_boss_phase ec.var 1
scoreboard players set #rd_timer ec.var 0
scoreboard players set #rd_phase_lock ec.var 0
scoreboard players set #rd_ability_cd ec.var 0
scoreboard players set #rd_ep_curse_cd ec.var 100
scoreboard players set #rd_ep_altar_cd ec.var 0
scoreboard players set #rd_ep_sand_timer ec.var 0
scoreboard players set #rd_ep_shield_cd ec.var 0
scoreboard players set #rd_ep_time_state ec.var 0
scoreboard players set #rd_ep_time_timer ec.var 200
scoreboard players set #rd_ep_glow_cd ec.var 200
scoreboard players set #rd_ep_glow_color ec.var 0

# Spawn cleansing altar (interaction entity)
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run summon interaction ~ ~1 ~ {Tags:["ec.rd_puzzle","ec.rd_ep_altar"],width:1.5f,height:2.0f,response:1b}

# Spawn 4 hieroglyphic pillars (puzzle — interaction entities)
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run summon interaction ~12 ~1 ~12 {Tags:["ec.rd_puzzle","ec.rd_ep_pillar","ec.rd_ep_pillar1"],width:1.5f,height:2.5f,response:1b}
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run summon interaction ~-12 ~1 ~12 {Tags:["ec.rd_puzzle","ec.rd_ep_pillar","ec.rd_ep_pillar2"],width:1.5f,height:2.5f,response:1b}
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run summon interaction ~12 ~1 ~-12 {Tags:["ec.rd_puzzle","ec.rd_ep_pillar","ec.rd_ep_pillar3"],width:1.5f,height:2.5f,response:1b}
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run summon interaction ~-12 ~1 ~-12 {Tags:["ec.rd_puzzle","ec.rd_ep_pillar","ec.rd_ep_pillar4"],width:1.5f,height:2.5f,response:1b}

# Heal to full
schedule function evercraft:raids/boss/sync_hp 2t

tag @s add ec.rd_participant
data modify storage evercraft:raids active set value {boss_name:"The Eternal Pharaoh",boss_color:"gold"}

# VFX
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run particle minecraft:dust{color:[0.9,0.7,0.1],scale:2.0} ~ ~1 ~ 2 2 2 0.1 50
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run particle minecraft:enchant ~ ~2 ~ 1 1 1 0.5 30
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.0 0.8
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run playsound minecraft:ambient.cave master @a ~ ~ ~ 1.0 0.5

tellraw @a [{text:"═══════════════════════════════",color:"gold"}]
tellraw @a [{text:"  ☠ ",color:"dark_red"},{text:"The Eternal Pharaoh",color:"gold",bold:true},{text:" awakens from millennia of slumber!",color:"yellow"}]
tellraw @a [{text:"  ",color:"dark_gray"},{text:"The sand remembers...",color:"gray",italic:true}]
tellraw @a [{text:"═══════════════════════════════",color:"gold"}]
