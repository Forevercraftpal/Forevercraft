# Guild Menu — Refresh Event page content
# @s = player with menu open

# Kill existing page content
execute at @s run kill @e[type=text_display,tag=ec.guild_page_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.guild_page_el,distance=..5]

# === SIDE PANELS: Noon Gathering (left) + Node Scatter (right) ===
function evercraft:guild/gui/menu/spawn_event_sidepanels

# === WEEKLY CONTRIBUTION LEADERBOARD (always present, top of page) ===
function evercraft:guild/gui/menu/build_weekly_leaderboard
function evercraft:guild/gui/menu/spawn_weekly_leaderboard with storage evercraft:guild weekly

# === GUILD COMPETITION / PILLAGE (below leaderboard, if active) ===
execute if score #gd_event_active ec.var matches 1 run function evercraft:guild/gui/menu/spawn_event_active

# === EXPEDITION (bottom, only when state 2 = ACTIVE) ===
scoreboard players set #ev_has_expedition ec.temp 0
execute store result storage evercraft:expedition event.contrib int 1 run scoreboard players get @s ec.gexp_contrib
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] if data entity @s data.expedition{state:2} run function evercraft:guild/gui/menu/spawn_expedition_event
# Position depends on whether competition is also showing
execute if score #ev_has_expedition ec.temp matches 1 if score #gd_event_active ec.var matches 1 run function evercraft:guild/gui/menu/spawn_expedition_rows_bottom with storage evercraft:expedition event
execute if score #ev_has_expedition ec.temp matches 1 unless score #gd_event_active ec.var matches 1 run function evercraft:guild/gui/menu/spawn_expedition_rows_low with storage evercraft:expedition event

# === NO EVENT PLACEHOLDER (when neither competition nor expedition active) ===
execute unless score #gd_event_active ec.var matches 1 unless score #ev_has_expedition ec.temp matches 1 run function evercraft:guild/gui/menu/spawn_event_inactive
