# Spirit Artifact — Ability 2 Router (Sneak+Right-click)
# Run as @s (player), check cooldown then dispatch to weapon-specific ability

# Check cooldown
execute if score @s ec.sp_cd2 matches 1.. run return run function evercraft:spirit/cooldown_msg

# Ability 2 requires Exquisite tier (5+)
execute if score @s ec.sp_tier matches ..4 run return run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"LOCKED","color":"red","bold":true},{"text":" — Reach ","color":"gray"},{"text":"Exquisite","color":"gold","bold":true},{"text":" tier to unlock this ability!","color":"gray"}]

# Track ability 2 usage for progression
scoreboard players add @s ec.sp_ability2_uses 1

# Dispatch by weapon ID
execute if score @s ec.sp_weapon matches 1 run function evercraft:spirit/abilities/hollow_fangs/ability2
execute if score @s ec.sp_weapon matches 2 run function evercraft:spirit/abilities/voidpiercer/ability2
execute if score @s ec.sp_weapon matches 3 run function evercraft:spirit/abilities/firebrand/ability2
execute if score @s ec.sp_weapon matches 4 run function evercraft:spirit/abilities/zephyr_edge/ability2
execute if score @s ec.sp_weapon matches 5 run function evercraft:spirit/abilities/nite/ability2
execute if score @s ec.sp_weapon matches 6 run function evercraft:spirit/abilities/whispering_spear/ability2
execute if score @s ec.sp_weapon matches 7 run function evercraft:spirit/abilities/ashcrown_mace/ability2
execute if score @s ec.sp_weapon matches 8 run function evercraft:spirit/abilities/ellegaard_trident/ability2
execute if score @s ec.sp_weapon matches 9 run function evercraft:spirit/abilities/pharaoh_fist/ability2
execute if score @s ec.sp_weapon matches 10 run function evercraft:spirit/abilities/lifewoven_branch/ability2
execute if score @s ec.sp_weapon matches 11 run function evercraft:spirit/abilities/sabrewing/ability2
execute if score @s ec.sp_weapon matches 12 run function evercraft:spirit/abilities/dragonheart_sword/ability2
execute if score @s ec.sp_weapon matches 13 run function evercraft:spirit/abilities/bulwark_shield/ability2
execute if score @s ec.sp_weapon matches 14 run function evercraft:spirit/abilities/royal_trident/ability2
