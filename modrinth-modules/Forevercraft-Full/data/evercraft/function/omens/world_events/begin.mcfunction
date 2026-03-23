# World Event Omen — Begin Warning Sequence
# Called when conditions are met; starts 60s countdown before event
# #we_omen_id is already set by check_conditions

scoreboard players set #we_omen_timer ec.var 60
function evercraft:omens/world_events/chat_warning
