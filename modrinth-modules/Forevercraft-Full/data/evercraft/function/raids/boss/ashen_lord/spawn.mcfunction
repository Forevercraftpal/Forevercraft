# The Ashen Lord (#7) — Spawn
# Called as the summoning player, at their position
# Nether Fortress raid boss — Sentinel class artifact (Ashcrown Mace)

# Set boss ID
scoreboard players set #rd_boss_id ec.var 7

# ── Summon the boss entity ──
# Wither skeleton with fire-themed equipment
execute anchored eyes positioned ^ ^ ^5 run summon wither_skeleton ~ ~ ~ {Tags:["ec.rd_boss","ec.rd_al"],Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:netherite_sword",components:{"minecraft:enchantments":{levels:{"minecraft:fire_aspect":2}},"minecraft:custom_name":{text:"Ashen Blade",color:"red",italic:false}}}}}

# ── HP Calculation ──
# Base: 1800 HP (900 hearts) — highest in Group B after Crimson Bulwark
# +50% per additional player
scoreboard players set #rd_boss_hp_max ec.var 1800

# Phase thresholds: P2 at 66%, P3 at 33%
# P2: 1800 * 66 / 100 = 1188
scoreboard players set #rd_p2_threshold ec.var 1188
# P3: 1800 * 33 / 100 = 594
scoreboard players set #rd_p3_threshold ec.var 594

# ── Apply attributes ──
# Set max HP — heal is scheduled 2 ticks later (same pattern as world bosses)
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run attribute @s max_health base set 1800
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run tag @s add ec.rd_initializing
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run attribute @s scale base set 2.0
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/base 15 add_value
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/base 0.3 add_multiplied_base
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/base 3.0 add_multiplied_base
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run attribute @s knockback_resistance modifier add evercraft:rd_boss/base 0.7 add_value

# Fire resistance (immune to fire/lava — thematic)
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run effect give @s fire_resistance infinite 0 true

# Custom name
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run data modify entity @s CustomName set value [{text:"☠ ",color:"dark_red"},{text:"The Ashen Lord",color:"red",bold:true},{text:" ☠",color:"dark_red"}]
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run data modify entity @s CustomNameVisible set value 1b

# ── Bossbar ──
bossbar remove evercraft:raid_boss
bossbar add evercraft:raid_boss [{text:"☠ ",color:"dark_red"},{text:"The Ashen Lord",color:"red",bold:true},{text:" ☠",color:"dark_red"}]
bossbar set evercraft:raid_boss color red
bossbar set evercraft:raid_boss max 1800
bossbar set evercraft:raid_boss value 1800
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[distance=..100]

# ── Initialize state ──
scoreboard players set #rd_active ec.var 1
scoreboard players set #rd_boss_phase ec.var 1
scoreboard players set #rd_timer ec.var 0
scoreboard players set #rd_phase_lock ec.var 0
scoreboard players set #rd_ability_cd ec.var 0

# Boss-specific state
scoreboard players set #rd_al_fire_cd ec.var 0
scoreboard players set #rd_al_skull_cd ec.var 0
scoreboard players set #rd_al_spawner_cd ec.var 0
scoreboard players set #rd_al_safe_timer ec.var 0
scoreboard players set #rd_al_heat_timer ec.var 0
scoreboard players set #rd_al_anchors ec.var 4
scoreboard players set #rd_al_lanterns_lit ec.var 0

# ── Spawn 4 blaze spawner pillars (marker entities) ──
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon marker ~10 ~ ~10 {Tags:["ec.rd_mechanic","ec.rd_al_spawner","ec.rd_al_sp1"]}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon marker ~-10 ~ ~10 {Tags:["ec.rd_mechanic","ec.rd_al_spawner","ec.rd_al_sp2"]}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon marker ~10 ~ ~-10 {Tags:["ec.rd_mechanic","ec.rd_al_spawner","ec.rd_al_sp3"]}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon marker ~-10 ~ ~-10 {Tags:["ec.rd_mechanic","ec.rd_al_spawner","ec.rd_al_sp4"]}

# ── Spawn 4 soul lanterns (interaction entities for puzzle) ──
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon interaction ~15 ~1 ~15 {Tags:["ec.rd_puzzle","ec.rd_al_lantern","ec.rd_al_lantern_off"],width:1.5f,height:2.0f,response:1b}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon interaction ~-15 ~1 ~15 {Tags:["ec.rd_puzzle","ec.rd_al_lantern","ec.rd_al_lantern_off"],width:1.5f,height:2.0f,response:1b}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon interaction ~15 ~1 ~-15 {Tags:["ec.rd_puzzle","ec.rd_al_lantern","ec.rd_al_lantern_off"],width:1.5f,height:2.0f,response:1b}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon interaction ~-15 ~1 ~-15 {Tags:["ec.rd_puzzle","ec.rd_al_lantern","ec.rd_al_lantern_off"],width:1.5f,height:2.0f,response:1b}

# ── Mark summoner as participant ──
tag @s add ec.rd_participant

# ── Boss storage for announcements ──
data modify storage evercraft:raids active set value {boss_name:"The Ashen Lord",boss_color:"red"}

# ── Schedule heal to full (2 ticks later, same as world boss pattern) ──
# Wither skeleton is undead — needs instant_damage to heal
schedule function evercraft:raids/boss/sync_hp 2t

# ── Spawn VFX ──
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 20
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run particle minecraft:flame ~ ~1 ~ 1 2 1 0.1 100
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run particle minecraft:lava ~ ~1 ~ 1 1 1 0.5 30
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.0 0.6
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.0 0.4

# ── Announce ──
tellraw @a [{text:"═══════════════════════════════",color:"dark_red"}]
tellraw @a [{text:"  ☠ ",color:"dark_red"},{text:"The Ashen Lord",color:"red",bold:true},{text:" has awakened!",color:"gold"}]
tellraw @a [{text:"  ",color:"dark_gray"},{text:"The fortress burns from within...",color:"gray",italic:true}]
tellraw @a [{text:"═══════════════════════════════",color:"dark_red"}]
