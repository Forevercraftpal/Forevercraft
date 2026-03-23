# Tomb System — Companion Prompt (macro)
# @s = the grave owner (dead player), receiving the permission request
# $(pending_grave_id) = the grave ID being offered

$tellraw @s [{"text":"\n"},{"text":"Someone has found your remains...\ngive them permission to return them to you?\n","color":"gray","italic":true},{"text":"[Accept]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.tomb_accept set $(pending_grave_id)"},"hover_event":{"action":"show_text","value":{"text":"Allow them to carry your soul back to you","color":"gray"}}},{"text":" "},{"text":"[Deny]","color":"red","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.tomb_deny set $(pending_grave_id)"},"hover_event":{"action":"show_text","value":{"text":"You prefer to retrieve it yourself","color":"gray"}}},{"text":"\n"}]
