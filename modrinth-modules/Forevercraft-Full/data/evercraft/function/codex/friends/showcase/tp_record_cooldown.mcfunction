# Record teleport cooldown timestamp
# Macro: $(self_uuid3), $(target_uuid3)

$execute store result storage evercraft:friend_tp "tp_$(self_uuid3)_$(target_uuid3)".tp_at long 1 run time query gametime
