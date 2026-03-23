# Macro: Write tier-up item from hopper cart back to player inventory slot
$item replace entity @s container.$(st_slot) from entity @e[type=hopper_minecart,tag=ec.st_tierup,limit=1] container.0
