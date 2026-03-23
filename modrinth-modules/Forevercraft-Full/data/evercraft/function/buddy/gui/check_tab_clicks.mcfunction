# Buddy GUI — Check Tab Clicks
# @s = player in menu
# Called from companions/handler/menu_v2/check_clicks.mcfunction

# Check each tab's interaction entity for clicks
execute as @e[type=interaction,tag=bd.tab1_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction run function evercraft:buddy/gui/switch_tab_1
execute as @e[type=interaction,tag=bd.tab2_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction run function evercraft:buddy/gui/switch_tab_2
execute as @e[type=interaction,tag=bd.tab3_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction run function evercraft:buddy/gui/switch_tab_3
execute as @e[type=interaction,tag=bd.tab4_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction run function evercraft:buddy/gui/switch_tab_4

# Clear interaction data on all tab clicks
execute as @e[type=interaction,tag=bd.tab_element,predicate=evercraft:companions/check_id] if data entity @s interaction run data remove entity @s interaction

# Summon tab pagination clicks
execute as @e[type=interaction,tag=bd.summon_prev_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction run function evercraft:buddy/gui/tab_summon/prev_page
execute as @e[type=interaction,tag=bd.summon_next_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction run function evercraft:buddy/gui/tab_summon/next_page
execute as @e[type=interaction,tag=bd.summon_prev_click,predicate=evercraft:companions/check_id] if data entity @s interaction run data remove entity @s interaction
execute as @e[type=interaction,tag=bd.summon_next_click,predicate=evercraft:companions/check_id] if data entity @s interaction run data remove entity @s interaction

# Training tab recall click
execute as @e[type=interaction,tag=bd.training_recall_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction run function evercraft:buddy/gui/tab_training/do_recall
execute as @e[type=interaction,tag=bd.training_recall_click,predicate=evercraft:companions/check_id] if data entity @s interaction run data remove entity @s interaction

# Buddy tab equipment clicks
execute as @e[type=interaction,tag=bd.equip_weapon_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction run function evercraft:buddy/best/equipment/equip_weapon
execute as @e[type=interaction,tag=bd.equip_artifact_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction run function evercraft:buddy/best/equipment/equip_artifact
execute as @e[type=interaction,tag=bd.equip_accessory_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction run function evercraft:buddy/best/equipment/equip_accessory
execute as @e[type=interaction,tag=bd.equip_weapon_click,predicate=evercraft:companions/check_id] if data entity @s interaction run data remove entity @s interaction
execute as @e[type=interaction,tag=bd.equip_artifact_click,predicate=evercraft:companions/check_id] if data entity @s interaction run data remove entity @s interaction
execute as @e[type=interaction,tag=bd.equip_accessory_click,predicate=evercraft:companions/check_id] if data entity @s interaction run data remove entity @s interaction

# Buddy tab promote click
execute as @e[type=interaction,tag=bd.promote_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction run function evercraft:buddy/best/promote
execute as @e[type=interaction,tag=bd.promote_click,predicate=evercraft:companions/check_id] if data entity @s interaction run data remove entity @s interaction

# Buddy tab pack mule click
execute as @e[type=interaction,tag=bd.mule_open_click,predicate=evercraft:companions/check_id,limit=1] if data entity @s interaction at @a[tag=companion.inmenuv2] run function evercraft:buddy/abilities/pack_mule/open
execute as @e[type=interaction,tag=bd.mule_open_click,predicate=evercraft:companions/check_id] if data entity @s interaction run data remove entity @s interaction
