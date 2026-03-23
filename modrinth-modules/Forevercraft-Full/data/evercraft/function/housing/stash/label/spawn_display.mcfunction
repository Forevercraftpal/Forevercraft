# ============================================================
# Stash Label — Spawn text_display above barrel (macro)
# Run as: player, positioned at barrel Y+1.05 (above barrel)
# Args: title, color
# ============================================================
$summon text_display ~ ~ ~ { Tags:["HS.StashDisplay","smithed.entity"], billboard:"center", text:{text:"$(title)",color:"$(color)"}, background:0,shadow:1b,shadow_radius:0f, brightness:{block:15,sky:15}, view_range:0.001f, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }
