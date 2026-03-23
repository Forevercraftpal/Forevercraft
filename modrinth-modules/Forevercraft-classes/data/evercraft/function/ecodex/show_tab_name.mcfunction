# === ETERNAL CODEX — SHOW TAB NAME ON ACTIONBAR ===
# Tab 1: Forevercraft Codex | Tab 2: Craftforever Codex | Tab 3: Companion Catalogue
execute if score @s ec.ecodex_tab matches 1 run title @s actionbar [{"text":"\u2726 ","color":"gold"},{"text":"The Forevercraft Codex","color":"gold","bold":true},{"text":" \u2726","color":"gold"}]
execute if score @s ec.ecodex_tab matches 2 run title @s actionbar [{"text":"\u2726 ","color":"gold"},{"text":"The Craftforever Codex","color":"#8BC34A","bold":true},{"text":" \u2726","color":"gold"}]
execute if score @s ec.ecodex_tab matches 3 run title @s actionbar [{"text":"\u2726 ","color":"gold"},{"text":"The Companion Catalogue","color":"gold","bold":true},{"text":" \u2726","color":"gold"}]
