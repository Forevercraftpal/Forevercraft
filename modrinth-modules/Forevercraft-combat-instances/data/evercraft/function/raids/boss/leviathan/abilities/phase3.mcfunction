# The Leviathan — Phase 3: The Flood (33%-0% HP)
# - Water level rises every 300 ticks (15 seconds)
# - Boss frenzy: faster attacks, guardian spawns
# - DPS check: ~3 minutes before full flood

# ── Water Level Rising (tracked in #rd_lv_water_level) ──
# Increment water level timer
scoreboard players add #rd_lv_whirl_timer ec.var 1

# Every 300 ticks: raise water level
execute if score #rd_lv_whirl_timer ec.var matches 300 run scoreboard players add #rd_lv_water_level ec.var 1
execute if score #rd_lv_whirl_timer ec.var matches 300 run scoreboard players set #rd_lv_whirl_timer ec.var 0
execute if score #rd_lv_whirl_timer ec.var matches 0 if score #rd_lv_water_level ec.var matches 1.. run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The water rises!",color:"aqua",bold:true}]

# High water = Mining Fatigue III
execute if score #rd_lv_water_level ec.var matches 8.. run effect give @a[tag=ec.rd_participant] mining_fatigue 5 2 true

# Full flood (water level 12+): drowning damage
execute if score #rd_lv_water_level ec.var matches 12.. as @a[tag=ec.rd_participant] at @s run damage @s 4 minecraft:drown by @e[type=guardian,tag=ec.rd_boss,limit=1]

# ── Boss Frenzy — faster lasers (every 60 ticks) ──
execute if score #rd_lv_laser_cd ec.var matches 0 run function evercraft:raids/boss/leviathan/abilities/laser_beam
execute if score #rd_lv_laser_cd ec.var matches 0 run scoreboard players set #rd_lv_laser_cd ec.var 60

# ── Guardian spawns (every 200 ticks) ──
execute store result score #rd_temp ec.var run time query gametime
scoreboard players operation #rd_temp ec.var %= #200 adv.temp
execute if score #rd_temp ec.var matches 0 at @e[type=guardian,tag=ec.rd_boss,limit=1] run summon guardian ~3 ~ ~ {Tags:["ec.rd_minion","ec.rd_lv_guard"],PersistenceRequired:1b}
execute if score #rd_temp ec.var matches 0 at @e[type=guardian,tag=ec.rd_boss,limit=1] run summon guardian ~-3 ~ ~ {Tags:["ec.rd_minion","ec.rd_lv_guard"],PersistenceRequired:1b}

# ── Tidal waves much faster ──
execute if score #rd_lv_wave_cd ec.var matches 0 run function evercraft:raids/boss/leviathan/abilities/tidal_wave
execute if score #rd_lv_wave_cd ec.var matches 0 run scoreboard players set #rd_lv_wave_cd ec.var 150
