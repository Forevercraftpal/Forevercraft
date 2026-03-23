# Guild Expedition — Announce today's expedition
# Reads #expedition_activity, #expedition_mult, #expedition_fountain

# Compute display parts for ×100 scale mult
scoreboard players operation #exp_disp_int ec.temp = #expedition_mult ec.var
scoreboard players operation #exp_disp_int ec.temp /= #100 ec.const
scoreboard players operation #exp_disp_dec ec.temp = #expedition_mult ec.var
scoreboard players operation #exp_disp_dec ec.temp %= #100 ec.const

execute store result storage evercraft:expedition announce.mult_int int 1 run scoreboard players get #exp_disp_int ec.temp
execute store result storage evercraft:expedition announce.mult_dec int 1 run scoreboard players get #exp_disp_dec ec.temp

# Map activity ID to name
data modify storage evercraft:expedition announce.activity set value "Unknown"
execute if score #expedition_activity ec.var matches 1 run data modify storage evercraft:expedition announce.activity set value "Dungeons"
execute if score #expedition_activity ec.var matches 2 run data modify storage evercraft:expedition announce.activity set value "Fishing"
execute if score #expedition_activity ec.var matches 3 run data modify storage evercraft:expedition announce.activity set value "Foraging"
execute if score #expedition_activity ec.var matches 4 run data modify storage evercraft:expedition announce.activity set value "Mob Slaying"
execute if score #expedition_activity ec.var matches 5 run data modify storage evercraft:expedition announce.activity set value "Prospecting"
execute if score #expedition_activity ec.var matches 6 run data modify storage evercraft:expedition announce.activity set value "Fountain of Dreams"
execute if score #expedition_activity ec.var matches 7 run data modify storage evercraft:expedition announce.activity set value "Quests"
execute if score #expedition_activity ec.var matches 8 run data modify storage evercraft:expedition announce.activity set value "Bounties"
execute if score #expedition_activity ec.var matches 9 run data modify storage evercraft:expedition announce.activity set value "Lore Discovery"
execute if score #expedition_activity ec.var matches 10 run data modify storage evercraft:expedition announce.activity set value "World Bosses"
execute if score #expedition_activity ec.var matches 11 run data modify storage evercraft:expedition announce.activity set value "Structure Crates"
execute if score #expedition_activity ec.var matches 12 run data modify storage evercraft:expedition announce.activity set value "Patron Mobs"
execute if score #expedition_activity ec.var matches 13 run data modify storage evercraft:expedition announce.activity set value "Cooking"

# Announce
function evercraft:guild/expedition/do_announce with storage evercraft:expedition announce

# Fountain day bonus
execute if score #expedition_fountain ec.var matches 1 run tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"+ Fountain of Dreams ",color:"#E0B0FF",bold:true},{text:"is surging with 5x power today!",color:"light_purple"}]

# Sound
execute as @a[scores={ec.guild_id=1..}] at @s run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.6 1.0
