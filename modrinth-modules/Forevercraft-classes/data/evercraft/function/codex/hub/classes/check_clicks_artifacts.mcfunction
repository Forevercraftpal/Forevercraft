# Classes — Artifact List Click Detection (Page 2)
# Run as the player with menu open

# Back to Classes button
execute as @e[type=interaction,tag=Adv.ClsBackClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/back_to_classes_click

# Artifact slot clicks (up to 13 slots — Striker has the most)
execute as @e[type=interaction,tag=Adv.ClsArtClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:0}
execute as @e[type=interaction,tag=Adv.ClsArtClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:1}
execute as @e[type=interaction,tag=Adv.ClsArtClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:2}
execute as @e[type=interaction,tag=Adv.ClsArtClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:3}
execute as @e[type=interaction,tag=Adv.ClsArtClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:4}
execute as @e[type=interaction,tag=Adv.ClsArtClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:5}
execute as @e[type=interaction,tag=Adv.ClsArtClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:6}
execute as @e[type=interaction,tag=Adv.ClsArtClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:7}
execute as @e[type=interaction,tag=Adv.ClsArtClick8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:8}
execute as @e[type=interaction,tag=Adv.ClsArtClick9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:9}
execute as @e[type=interaction,tag=Adv.ClsArtClick10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:10}
execute as @e[type=interaction,tag=Adv.ClsArtClick11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:11}
execute as @e[type=interaction,tag=Adv.ClsArtClick12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/art_slot_click {slot:12}
