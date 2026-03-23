# Guild Contribution → Victorian XP — Recursive loop
# Grants 1000 XP each time 100 contribution is reached

# Subtract 100 from tracker
scoreboard players operation @s ec.gc_victorian -= #ge_victorian_threshold ec.const

# Grant 1000 XP points
experience add @s 1000 points

# Victorian advantage bonus on the XP (if player has Victorian levels)
execute if score @s adv.victorian matches 1.. run scoreboard players set #base_crate_xp adv.temp 1000
execute if score @s adv.victorian matches 1.. run function evercraft:advantage/victorian/apply_bonus

# Notify
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Contribution milestone! ",color:"gold"},{text:"+1000 XP",color:"green"},{text:" (Victorian)",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.3 1.3

# Recurse if still above threshold (large donations may cross multiple milestones)
execute if score @s ec.gc_victorian >= #ge_victorian_threshold ec.const run function evercraft:guild/contribution/victorian_loop
