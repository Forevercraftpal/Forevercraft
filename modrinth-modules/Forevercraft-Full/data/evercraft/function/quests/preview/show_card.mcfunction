# Display one quest preview card
# Macro: called with storage eden:temp preview
# Fields: name, desc, num, trigger
$tellraw @s [{"text":"  "},{"text":"$(num). ","color":"gold"},{"text":"$(name)","color":"white","bold":true}]
$tellraw @s [{"text":"     ","color":"gray"},{"text":"$(desc)","color":"yellow"}]
$tellraw @s [{"text":"     "},{"text":"[Accept]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.quest set $(trigger)"}}]
