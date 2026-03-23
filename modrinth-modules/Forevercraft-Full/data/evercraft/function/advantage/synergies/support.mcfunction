# Support Synergy — Taskmaster 20 + Beastmaster 20 = Pack Leader
# Pets gain 25% boost to abilities during a quest (handled in companion ability hooks)
scoreboard players set @s adv.syn_support 0
execute if score @s adv.taskmaster matches 20.. if score @s adv.beastmaster matches 20.. run scoreboard players set @s adv.syn_support 1
