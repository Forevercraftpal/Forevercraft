# Page 1 click detection — Tree level-ups (0-13)
# Run as the player with menu open

execute as @e[type=interaction,tag=Adv.Click0,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:1}
execute as @e[type=interaction,tag=Adv.Click1,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:2}
execute as @e[type=interaction,tag=Adv.Click2,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:3}
execute as @e[type=interaction,tag=Adv.Click3,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:4}
execute as @e[type=interaction,tag=Adv.Click4,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:5}
execute as @e[type=interaction,tag=Adv.Click5,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:6}
execute as @e[type=interaction,tag=Adv.Click6,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:7}
execute as @e[type=interaction,tag=Adv.Click7,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:8}
execute as @e[type=interaction,tag=Adv.Click8,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:9}
execute as @e[type=interaction,tag=Adv.Click9,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:10}
execute as @e[type=interaction,tag=Adv.Click10,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:11}
execute as @e[type=interaction,tag=Adv.Click11,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:12}
execute as @e[type=interaction,tag=Adv.Click12,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:13}
execute as @e[type=interaction,tag=Adv.Click13,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_tree {tree_id:14}

# Branch [?] info clicks — one per column
execute as @e[type=interaction,tag=Adv.BranchInfoClick0,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/show_branch_info {branch:"adventure"}
execute as @e[type=interaction,tag=Adv.BranchInfoClick1,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/show_branch_info {branch:"progression"}
execute as @e[type=interaction,tag=Adv.BranchInfoClick2,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/show_branch_info {branch:"gathering"}

# Action buttons
execute as @e[type=interaction,tag=Adv.RespecBtnClick,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/enter_respec
execute as @e[type=interaction,tag=Adv.StatsBtnClick,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_stats
