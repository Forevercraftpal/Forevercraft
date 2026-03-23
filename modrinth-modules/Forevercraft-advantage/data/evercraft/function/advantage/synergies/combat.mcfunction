# Combat Synergy — Evasion 15 + Victorian 15 = Battle Trance
# When both conditions met, dodging grants +20% attack damage for 5s
scoreboard players set @s adv.syn_combat 0
execute if score @s adv.evasion matches 15.. if score @s adv.victorian matches 15.. run scoreboard players set @s adv.syn_combat 1
