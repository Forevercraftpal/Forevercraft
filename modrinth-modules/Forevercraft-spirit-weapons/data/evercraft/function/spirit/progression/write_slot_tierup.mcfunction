# Spirit Progression — Write upgraded item to player's hotbar slot
# Macro function — uses ec.sp_tierup tag (unique to tier-up operation)
$item replace entity @s container.$(sp_slot) from entity @e[type=hopper_minecart,tag=ec.sp_tierup,limit=1] container.0