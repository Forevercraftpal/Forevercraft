# Guild Expedition — Show rundown (clicked expedition display)
# @s = player who clicked

# No expedition active
execute if score #expedition_activity ec.var matches 0 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No expedition active today.",color:"gray"}]
execute if score #expedition_activity ec.var matches 0 run return 0

# Compute display values
scoreboard players operation #exp_disp_int ec.temp = #expedition_mult ec.var
scoreboard players operation #exp_disp_int ec.temp /= #100 ec.const
scoreboard players operation #exp_disp_dec ec.temp = #expedition_mult ec.var
scoreboard players operation #exp_disp_dec ec.temp %= #100 ec.const

# Map activity to storage for macro
data modify storage evercraft:expedition rundown.activity set value "Unknown"
execute if score #expedition_activity ec.var matches 1 run data modify storage evercraft:expedition rundown.activity set value "Dungeons"
execute if score #expedition_activity ec.var matches 2 run data modify storage evercraft:expedition rundown.activity set value "Fishing"
execute if score #expedition_activity ec.var matches 3 run data modify storage evercraft:expedition rundown.activity set value "Foraging"
execute if score #expedition_activity ec.var matches 4 run data modify storage evercraft:expedition rundown.activity set value "Mob Slaying"
execute if score #expedition_activity ec.var matches 5 run data modify storage evercraft:expedition rundown.activity set value "Prospecting"
execute if score #expedition_activity ec.var matches 6 run data modify storage evercraft:expedition rundown.activity set value "Fountain of Dreams"
execute if score #expedition_activity ec.var matches 7 run data modify storage evercraft:expedition rundown.activity set value "Quests"
execute if score #expedition_activity ec.var matches 8 run data modify storage evercraft:expedition rundown.activity set value "Bounties"
execute if score #expedition_activity ec.var matches 9 run data modify storage evercraft:expedition rundown.activity set value "Lore Discovery"
execute if score #expedition_activity ec.var matches 10 run data modify storage evercraft:expedition rundown.activity set value "World Bosses"
execute if score #expedition_activity ec.var matches 11 run data modify storage evercraft:expedition rundown.activity set value "Structure Crates"
execute if score #expedition_activity ec.var matches 12 run data modify storage evercraft:expedition rundown.activity set value "Patron Mobs"
execute if score #expedition_activity ec.var matches 13 run data modify storage evercraft:expedition rundown.activity set value "Cooking"

# Map activity to bonus description
data modify storage evercraft:expedition rundown.bonus set value "Increased luck"
execute if score #expedition_activity ec.var matches 1 run data modify storage evercraft:expedition rundown.bonus set value "Bonus dungeon XP"
execute if score #expedition_activity ec.var matches 2 run data modify storage evercraft:expedition rundown.bonus set value "Bonus fishing XP"
execute if score #expedition_activity ec.var matches 3 run data modify storage evercraft:expedition rundown.bonus set value "Extra foraging drops"
execute if score #expedition_activity ec.var matches 4 run data modify storage evercraft:expedition rundown.bonus set value "Bonus mob kill XP"
execute if score #expedition_activity ec.var matches 5 run data modify storage evercraft:expedition rundown.bonus set value "Extra prospecting drops"
execute if score #expedition_activity ec.var matches 6 run data modify storage evercraft:expedition rundown.bonus set value "Enhanced dream rates"
execute if score #expedition_activity ec.var matches 7 run data modify storage evercraft:expedition rundown.bonus set value "Bonus quest XP"
execute if score #expedition_activity ec.var matches 8 run data modify storage evercraft:expedition rundown.bonus set value "Bonus bounty XP"
execute if score #expedition_activity ec.var matches 9 run data modify storage evercraft:expedition rundown.bonus set value "Bonus lore discovery XP"
execute if score #expedition_activity ec.var matches 10 run data modify storage evercraft:expedition rundown.bonus set value "Bonus world boss XP"
execute if score #expedition_activity ec.var matches 11 run data modify storage evercraft:expedition rundown.bonus set value "Bonus crate loot luck"
execute if score #expedition_activity ec.var matches 12 run data modify storage evercraft:expedition rundown.bonus set value "Bonus patron mob XP"
execute if score #expedition_activity ec.var matches 13 run data modify storage evercraft:expedition rundown.bonus set value "Extra cooking mastery"

# Compute luck tier for display
data modify storage evercraft:expedition rundown.luck set value "0"
execute if score #expedition_mult ec.var matches 125..149 run data modify storage evercraft:expedition rundown.luck set value "+0.125"
execute if score #expedition_mult ec.var matches 150..199 run data modify storage evercraft:expedition rundown.luck set value "+0.25"
execute if score #expedition_mult ec.var matches 200..249 run data modify storage evercraft:expedition rundown.luck set value "+0.5"
execute if score #expedition_mult ec.var matches 250..299 run data modify storage evercraft:expedition rundown.luck set value "+0.75"
execute if score #expedition_mult ec.var matches 300..349 run data modify storage evercraft:expedition rundown.luck set value "+1.0"
execute if score #expedition_mult ec.var matches 350..399 run data modify storage evercraft:expedition rundown.luck set value "+1.25"
execute if score #expedition_mult ec.var matches 400..449 run data modify storage evercraft:expedition rundown.luck set value "+1.5"
execute if score #expedition_mult ec.var matches 450..499 run data modify storage evercraft:expedition rundown.luck set value "+1.75"
execute if score #expedition_mult ec.var matches 500.. run data modify storage evercraft:expedition rundown.luck set value "+2.0"

execute store result storage evercraft:expedition rundown.mult_int int 1 run scoreboard players get #exp_disp_int ec.temp
execute store result storage evercraft:expedition rundown.mult_dec int 1 run scoreboard players get #exp_disp_dec ec.temp

# Display via macro
function evercraft:guild/expedition/do_show_rundown with storage evercraft:expedition rundown
