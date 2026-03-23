# Splendid - Remove 6pc bonus
tag @s remove splendid_6pc
# Downgrade: if still 5pc, keep Luck (from 5pc); otherwise clear
execute unless entity @s[tag=splendid_5pc] run effect clear @s luck
execute if entity @s[tag=splendid_5pc] run effect give @s luck 5 2 false
effect clear @s speed
effect clear @s night_vision
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Delver's 6pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=spl_rogue_6pc] run attribute @s attack_damage modifier remove evercraft:spl_rogue_6pc_dmg
tag @s remove spl_rogue_6pc
