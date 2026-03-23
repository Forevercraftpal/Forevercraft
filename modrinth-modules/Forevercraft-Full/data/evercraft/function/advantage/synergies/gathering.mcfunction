# Gathering Synergy — Fishing 15 + Mining 15 + Gathering 15 = Resource Master
# All three proc chances get +2.5% bonus (added in proc functions)
scoreboard players set @s adv.syn_gather 0
execute if score @s adv.fishing matches 15.. if score @s adv.mining matches 15.. if score @s adv.gathering matches 15.. run scoreboard players set @s adv.syn_gather 1
