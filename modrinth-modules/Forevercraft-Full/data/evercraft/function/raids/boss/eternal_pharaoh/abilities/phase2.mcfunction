# The Eternal Pharaoh — Phase 2: The Shifting Sands (66%-33% HP)
# - Quicksand zones (Slowness to players in zones)
# - Exploding mummies
# - Sand barrier (Absorption shield every 600 ticks)
# - Curses continue

# ── Curses continue (faster: every 250 ticks) ──
execute if score #rd_ep_curse_cd ec.var matches 0 run function evercraft:raids/boss/eternal_pharaoh/abilities/apply_curse
execute if score #rd_ep_curse_cd ec.var matches 0 run scoreboard players set #rd_ep_curse_cd ec.var 250

# ── Sand Barrier (every 30 seconds = 600 ticks) ──
execute if score #rd_ep_shield_cd ec.var matches 0 run effect give @e[type=husk,tag=ec.rd_boss,limit=1] absorption 15 4
execute if score #rd_ep_shield_cd ec.var matches 0 as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.9,0.7,0.1],scale:2.0} ~ ~1 ~ 1 1 1 0.05 30
execute if score #rd_ep_shield_cd ec.var matches 0 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The Pharaoh raises a sand barrier!",color:"gold"}]
execute if score #rd_ep_shield_cd ec.var matches 0 run scoreboard players set #rd_ep_shield_cd ec.var 600

# ── Summon exploding mummies (every 300 ticks) ──
execute store result score #rd_temp ec.var run time query gametime
scoreboard players operation #rd_temp ec.var %= #300 adv.temp
execute if score #rd_temp ec.var matches 0 run function evercraft:raids/boss/eternal_pharaoh/abilities/summon_mummies
