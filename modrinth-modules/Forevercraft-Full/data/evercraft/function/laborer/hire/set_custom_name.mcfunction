# Set the laborer's CustomName from the chosen name
$data modify entity @e[type=villager,tag=ec.lb_new,limit=1] CustomName set value {"text":"$(chosen_name)","color":"green","bold":true}
data modify entity @e[type=villager,tag=ec.lb_new,limit=1] CustomNameVisible set value 1b
