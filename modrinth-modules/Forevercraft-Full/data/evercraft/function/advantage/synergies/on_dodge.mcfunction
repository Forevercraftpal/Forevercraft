# On Dodge — Combat Synergy Hook
# Called from evasion_dodge.mcfunction after a successful dodge
# If combat synergy active, trigger Battle Trance (+20% attack damage 5s)

execute unless score @s adv.syn_combat matches 1 run return 0

# Set/reset trance timer to 100 ticks (5 seconds)
scoreboard players set @s adv.syn_trance 100

# Apply attack damage modifier
attribute @s attack_damage modifier remove evercraft:adv_syn_trance
attribute @s attack_damage modifier add evercraft:adv_syn_trance 0.2 add_multiplied_base

# Feedback
title @s actionbar [{text:"⚔ Battle Trance! ",color:"red",bold:true},{text:"+20% damage (5s)",color:"gold"}]
playsound minecraft:entity.evoker.prepare_attack master @s ~ ~ ~ 0.5 1.5
particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.1 20
