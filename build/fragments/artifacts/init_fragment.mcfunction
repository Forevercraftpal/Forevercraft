# === ETERNAL CODEX SYSTEM ===
function evercraft:ecodex/load


# === PHOENIX CODEX SYSTEM ===
function evercraft:phoenix/load


# === CODEX OF EVERYTHING SPECTATOR SYSTEM ===
scoreboard objectives add ec.codex_spec_cd dummy "Codex Spectator Cooldown"
scoreboard objectives add ec.codex_spec_time dummy "Codex Spectator Timer"
scoreboard objectives add ec.codex_ret_x dummy "Codex Return X"
scoreboard objectives add ec.codex_ret_y dummy "Codex Return Y"
scoreboard objectives add ec.codex_ret_z dummy "Codex Return Z"
scoreboard objectives add ec.codex_ret_dim dummy "Codex Return Dimension"
scoreboard players set #72000 ec.const 72000


# === DREAM SURGE EVENT SYSTEM ===
# #ec_event_active and #ec_event_timer use ec.var (dummy already created above)
# No new objectives needed — state tracked via fake player scores in ec.var


# === MYTHICAL TOOLS ===
function evercraft:artifacts/mythical_tools/load
schedule function evercraft:artifacts/mythical_tools/magnet 10t
schedule function evercraft:mob_crates/tick 10t


# === ARTIFACT TRANSMUTATION SYSTEM ===
function evercraft:transmute/load


# === RUNEFORGE SYSTEM ===
function evercraft:glyphforge/load
schedule function evercraft:glyphforge/effects/tick 1s


# === HEALER ARTIFACT SYSTEM ===
function evercraft:artifacts/healer/load


# === CLASS AFFINITY SYSTEM ===
function evercraft:affinity/load
