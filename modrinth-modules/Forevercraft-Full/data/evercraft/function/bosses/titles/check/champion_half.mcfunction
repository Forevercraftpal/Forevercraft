# World Boss — Champion title check (second half)
# First 6 bosses already verified by caller, check remaining 5
# Skip if champion title already earned (prevent re-announcement)
execute if score @s wb.title matches 45 run return 0
execute unless score @s wb.k7 matches 1.. run return 0
execute unless score @s wb.k8 matches 1.. run return 0
execute unless score @s wb.k9 matches 1.. run return 0
execute unless score @s wb.k10 matches 1.. run return 0
execute unless score @s wb.k11 matches 1.. run return 0

# All 11 bosses killed! Check if this is a new unlock (total kills = 11 means first time all done)
# Use a simple check: sum of minimums. If they just got their 11th unique boss, announce.
tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"World Boss Champion",color:"gold",bold:true}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 0.8
playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.3 1.5
particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0.5 100 force @s
