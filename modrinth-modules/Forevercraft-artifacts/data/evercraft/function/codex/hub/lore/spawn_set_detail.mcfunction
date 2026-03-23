# Lore — Spawn Set Detail View (Macro)
# Shows set name, piece list with checkmarks, reward summary
# Macro arg: fill_set_id
# Run as the player, at player, facing the anchor

# Load metadata
$data modify storage evercraft:lore fill_meta set from storage evercraft:lore sets.s$(fill_set_id)
execute store result score #lore_fill_rar ec.temp run data get storage evercraft:lore fill_meta.rarity
execute store result score #lore_fill_req ec.temp run data get storage evercraft:lore fill_meta.pieces

# Set rarity color for title
execute if score #lore_fill_rar ec.temp matches 1 run data modify storage evercraft:lore temp.fill_rar_color set value "white"
execute if score #lore_fill_rar ec.temp matches 1 run data modify storage evercraft:lore temp.fill_rar_label set value "Common"
execute if score #lore_fill_rar ec.temp matches 2 run data modify storage evercraft:lore temp.fill_rar_color set value "green"
execute if score #lore_fill_rar ec.temp matches 2 run data modify storage evercraft:lore temp.fill_rar_label set value "Uncommon"
execute if score #lore_fill_rar ec.temp matches 3 run data modify storage evercraft:lore temp.fill_rar_color set value "aqua"
execute if score #lore_fill_rar ec.temp matches 3 run data modify storage evercraft:lore temp.fill_rar_label set value "Rare"
execute if score #lore_fill_rar ec.temp matches 4 run data modify storage evercraft:lore temp.fill_rar_color set value "light_purple"
execute if score #lore_fill_rar ec.temp matches 4 run data modify storage evercraft:lore temp.fill_rar_label set value "Ornate"
execute if score #lore_fill_rar ec.temp matches 5 run data modify storage evercraft:lore temp.fill_rar_color set value "gold"
execute if score #lore_fill_rar ec.temp matches 5 run data modify storage evercraft:lore temp.fill_rar_label set value "Exquisite"
execute if score #lore_fill_rar ec.temp matches 6 run data modify storage evercraft:lore temp.fill_rar_color set value "dark_purple"
execute if score #lore_fill_rar ec.temp matches 6 run data modify storage evercraft:lore temp.fill_rar_label set value "Mythical"

# Update main title
data modify storage evercraft:lore temp.fill_name set from storage evercraft:lore fill_meta.name
function evercraft:codex/hub/lore/set_detail_title with storage evercraft:lore temp

# Rarity subtitle
execute rotated ~ 0 positioned ^ ^2.69 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail"],billboard:"center",text:{text:""},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
function evercraft:codex/hub/lore/set_detail_subtitle with storage evercraft:lore temp

# Piece list (up to 8 pieces, Y from 1.68 down by 0.14 each)
# Each piece: checkmark or X + "Part N"
function evercraft:codex/hub/lore/render_piece_list with storage evercraft:lore temp

# Reward line at bottom
execute rotated ~ 0 positioned ^ ^1.41 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail","Adv.LoreDetailReward"],billboard:"center",text:{text:""},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
function evercraft:codex/hub/lore/set_detail_reward with storage evercraft:lore temp

# [← Back] button
execute rotated ~ 0 positioned ^ ^1.27 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail"],billboard:"center",text:{text:"[\u2190 Back to List]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^1.21 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail","Adv.LoreBackListClick"],width:0.5f,height:0.08f,response:1b}
