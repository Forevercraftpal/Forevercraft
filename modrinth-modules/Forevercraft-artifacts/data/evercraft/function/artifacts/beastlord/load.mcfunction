# Beastlord Spear System — Load Function
# 9 spears that buff vanilla tamed animals (wolves, cats, parrots) + mount speed

# === SCOREBOARDS ===
# Cached tier (1-6) of currently held beastlord spear
scoreboard objectives add ec.bl_tier dummy "Beastlord Tier"

# Per-animal warp timers (seconds, decremented per second)
scoreboard objectives add ec.bl_warp_w dummy "Beastlord Wolf Warp"
scoreboard objectives add ec.bl_warp_c dummy "Beastlord Cat Warp"
scoreboard objectives add ec.bl_warp_p dummy "Beastlord Parrot Warp"

# Rally Cry cooldown (seconds, decremented per second)
scoreboard objectives add ec.bl_rally_cd dummy "Beastlord Rally CD"

# Spear ID (1-9, for routing on-hit/passive abilities)
scoreboard objectives add ec.bl_spear dummy "Beastlord Spear ID"

# Strength refresh timer (ticks, apply strength to tamed animals every 40 ticks / 2s)
scoreboard objectives add ec.bl_str_tick dummy "Beastlord Str Tick"

# Warp sub-tick counter (counts game ticks, fires warp at 20 = 1 second)
scoreboard objectives add ec.bl_warp_sub dummy "Beastlord Warp Sub"

# Death save cooldown for Longinus passive (seconds)
scoreboard objectives add ec.bl_save_cd dummy "Beastlord Save CD"

# Battlestaff combo counter (hits, resets at 3)
scoreboard objectives add ec.bl_combo dummy "Beastlord Combo"
