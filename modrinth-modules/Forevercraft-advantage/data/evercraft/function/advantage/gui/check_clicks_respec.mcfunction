# Respec mode click detection — 13 tree respec clicks + cancel
# Run as the player in respec mode

# Tree respec clicks (0-12 → tree_id 1-13)
execute as @e[type=interaction,tag=Adv.RespecClick0,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:1}
execute as @e[type=interaction,tag=Adv.RespecClick1,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:2}
execute as @e[type=interaction,tag=Adv.RespecClick2,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:3}
execute as @e[type=interaction,tag=Adv.RespecClick3,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:4}
execute as @e[type=interaction,tag=Adv.RespecClick4,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:5}
execute as @e[type=interaction,tag=Adv.RespecClick5,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:6}
execute as @e[type=interaction,tag=Adv.RespecClick6,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:7}
execute as @e[type=interaction,tag=Adv.RespecClick7,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:8}
execute as @e[type=interaction,tag=Adv.RespecClick8,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:9}
execute as @e[type=interaction,tag=Adv.RespecClick9,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:10}
execute as @e[type=interaction,tag=Adv.RespecClick10,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:11}
execute as @e[type=interaction,tag=Adv.RespecClick11,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:12}
execute as @e[type=interaction,tag=Adv.RespecClick12,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:13}
execute as @e[type=interaction,tag=Adv.RespecClick13,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/do_respec_tree {tree_id:14}

# Cancel button
execute as @e[type=interaction,tag=Adv.RespecCancelClick,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/exit_respec
