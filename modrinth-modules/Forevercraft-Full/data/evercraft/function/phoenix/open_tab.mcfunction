# === PHOENIX CODEX — OPEN TAB ===
# Normal use: opens the selected codex GUI directly
# Tab 1: Forevercraft Codex | Tab 2: Craftforever Codex | Tab 3: Companion Catalogue | Tab 4: Guidestone
# Run as: player, at player

# Tab 1 — Open Forevercraft Codex hub
execute if score @s ec.phoenix_tab matches 1 run function evercraft:codex/hub/open

# Tab 2 — Open Craftforever Codex hub
execute if score @s ec.phoenix_tab matches 2 run function evercraft:craftforever/codex/hub/open

# Tab 3 — Open Companion Catalogue
# Note: companion open sets companion.restore_menu for item restore — remove it since
# the phoenix codex handles its own restore via phoenix/do_restore
execute if score @s ec.phoenix_tab matches 3 run function evercraft:companions/handler/menu_v2/open
execute if score @s ec.phoenix_tab matches 3 run tag @s remove companion.restore_menu

# Tab 4 — Open Guidestone Network (remote, no physical guidestone required)
# Set menu_ctx with player's current dimension (no source guidestone)
execute if score @s ec.phoenix_tab matches 4 run data modify storage evercraft:guidestone menu_ctx.dim set value "minecraft:overworld"
execute if score @s ec.phoenix_tab matches 4 if dimension minecraft:the_nether run data modify storage evercraft:guidestone menu_ctx.dim set value "minecraft:the_nether"
execute if score @s ec.phoenix_tab matches 4 if dimension minecraft:the_end run data modify storage evercraft:guidestone menu_ctx.dim set value "minecraft:the_end"
execute if score @s ec.phoenix_tab matches 4 run data modify storage evercraft:guidestone menu_ctx.primed set value 1b
execute if score @s ec.phoenix_tab matches 4 run data modify storage evercraft:guidestone menu_ctx.source_id set value 0
execute if score @s ec.phoenix_tab matches 4 run tag @s add ec.gs_remote_menu
execute if score @s ec.phoenix_tab matches 4 at @s run function evercraft:guidestone/menu/open
