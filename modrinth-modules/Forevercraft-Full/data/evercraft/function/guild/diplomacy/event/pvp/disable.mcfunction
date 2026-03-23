# Guild Diplomacy — Disable PvP, restore team
# @s = player leaving enemy zone or event ending

tag @s remove ec.gd_pvp

# Restore title team (re-apply whatever title they had)
execute if score @s wb.title matches 1.. run function evercraft:bosses/titles/apply
execute if score @s ec.gd_title matches 1.. unless score @s wb.title matches 1.. run function evercraft:guild/diplomacy/titles/apply

# Notify (only during active event, not cleanup)
execute if score #gd_event_active ec.var matches 1 run tellraw @s [{text:"[Pillage] ",color:"dark_red"},{text:"You left enemy territory. PvP disabled.",color:"gray"}]
