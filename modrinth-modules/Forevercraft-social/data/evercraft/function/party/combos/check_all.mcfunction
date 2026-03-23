# Party Combo Abilities — Check All
# Run as each player in a party with 1+ nearby members, at their position
# Checks passive combo conditions and sets active flags

# Store party ID for macro-based teammate lookups
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# === PASSIVE COMBOS (always-on when conditions met) ===

# Pack Tactics: 2+ Beastmaster 15+ in party with pets nearby
function evercraft:party/combos/pack_tactics

# Tidal Network: Fisher 10+ near Explorer 10+
function evercraft:party/combos/tidal_network

# === TICK-BASED TRIGGERED COMBOS ===
# These use state detection (sneaking/sprinting) — checked each tick

# Marked for Death: Stealth 10+ sneaking near hostile mobs
execute if predicate evercraft:advantage/is_sneaking run function evercraft:party/combos/marked_for_death

# Blitz: Agility 10+ sprinting
execute if predicate evercraft:advantage/is_sprinting run function evercraft:party/combos/blitz

# === EVENT-BASED TRIGGERED COMBOS (via advancements) ===
# Shield Wall — entity_hurt_player with blocking (advancement: party/triggers/shield_block)
# Field Medic — consume golden food (advancement: party/triggers/eat_golden_food)
# Forge Bond — smithing table use (advancement: party/triggers/use_smithing)
# Rally Cry — first-time structure crate open (hooked in structures/container/spawn_loot_here)
# Shared Fortunes — mining/gathering proc (inline hook in advantage tree ticks)
