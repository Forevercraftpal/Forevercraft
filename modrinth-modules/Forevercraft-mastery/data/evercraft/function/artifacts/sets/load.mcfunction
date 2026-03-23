# Artifact Sets - Load
# Initialize scoreboards for artifact set bonuses

# ============================================
# SET PIECE COUNTERS
# ============================================
scoreboard objectives add ec.dragonslayer dummy "Dragonslayer Pieces"
scoreboard objectives add ec.netherwalker dummy "Netherwalker Pieces"
scoreboard objectives add ec.frost dummy "Frost Pieces"
scoreboard objectives add ec.wither dummy "Wither Pieces"
scoreboard objectives add ec.phantom dummy "Phantom Pieces"
scoreboard objectives add ec.ocean dummy "Ocean Pieces"
scoreboard objectives add ec.ender dummy "Ender Pieces"
scoreboard objectives add ec.storm dummy "Storm Pieces"
scoreboard objectives add ec.nature dummy "Nature Pieces"
scoreboard objectives add ec.golem dummy "Golem Pieces"
scoreboard objectives add ec.sculk dummy "Sculk Pieces"
scoreboard objectives add ec.celestial dummy "Celestial Pieces"
scoreboard objectives add ec.blood dummy "Blood Pieces"
scoreboard objectives add ec.shadow dummy "Shadow Pieces"
scoreboard objectives add ec.crystal dummy "Crystal Pieces"

# ============================================
# MYTHICAL SET PIECE COUNTERS
# ============================================
scoreboard objectives add ec.dragonmaster dummy "Dragonmaster Pieces"
scoreboard objectives add ec.titan dummy "Titan Pieces"
scoreboard objectives add ec.verdant dummy "Verdant Pieces"

# ============================================
# MYTHICAL SET COOLDOWNS
# ============================================
scoreboard objectives add ec.dragon_cd dummy "Dragon Horn Cooldown"
scoreboard objectives add ec.tidal_cd dummy "Tidal Horn Cooldown"
scoreboard objectives add ec.harvest_cd dummy "Harvest Caller Cooldown"

# ============================================
# LEGACY ABILITY TRIGGERS — REMOVED (Session 70)
# All 15 set abilities now use item_use advancements (goat horns)
# Trigger objectives kept only to avoid breaking existing scoreboards
# ============================================

# ============================================
# DAMAGE & HURT TRACKING
# ============================================
# Damage dealt tracking (for Dragonslayer 2pc, Wither lifesteal)
scoreboard objectives add ec.artifact_dmg minecraft.custom:minecraft.damage_dealt

# Damage taken tracking (for Frost 2pc freeze effect)
scoreboard objectives add ec.artifact_hurt minecraft.custom:minecraft.damage_taken

# ============================================
# INDIVIDUAL ARTIFACT ABILITY SCORES
# ============================================
# Random roll for chance-based abilities
scoreboard objectives add ec.artifact_roll dummy "Artifact Roll"

# ============================================
# EXQUISITE SET PIECE COUNTERS
# ============================================
scoreboard objectives add ec.ember dummy "Ember Pieces"
scoreboard objectives add ec.ninja dummy "Ninja Pieces"
scoreboard objectives add ec.cloaked_skull dummy "Cloaked Skull Pieces"
scoreboard objectives add ec.space dummy "Space Pieces"
scoreboard objectives add ec.fireforged dummy "Fireforged Pieces"
scoreboard objectives add ec.fireforged_cd dummy "Fireforged Revive Cooldown"

# ============================================
# NEW MYTHICAL SETS (Session 20)
# ============================================
scoreboard objectives add ec.journey dummy "Journey Pieces"
scoreboard objectives add ec.splendid dummy "Splendid Pieces"

# ============================================
# NEW MYTHICAL SETS (Session 23)
# ============================================
scoreboard objectives add ec.infernal dummy "Infernal Pieces"
scoreboard objectives add ec.ender_dragon dummy "Ender Dragon Pieces"
scoreboard objectives add ec.infernal_cd dummy "Infernal Horn Cooldown"
scoreboard objectives add ec.dragon_blade_cd dummy "Dragon Blade Cooldown"

# Spelunker Pathfinder's Compass system
scoreboard objectives add ec.locate trigger "Structure Locate"
scoreboard objectives add ec.compass_cooldown dummy "Compass Cooldown"

# ============================================
# DRAGON FAN WILDCARD
# ============================================
scoreboard objectives add ec.df_best dummy "Dragon Fan Best Set"
scoreboard objectives add ec.df_cd dummy "Dragon Fan Fire Cooldown"
scoreboard objectives add ec.di_burst_cd dummy "Dragon Incarnate Burst Cooldown"
