# ============================================================
# COOKING & CUISINE SYSTEM — Load
# Called from init.mcfunction on /reload
# ============================================================

# --- Scoreboards ---
scoreboard objectives add ec.ck_cat dummy "Cooking: Category"
scoreboard objectives add ec.ck_wellfed dummy "Cooking: Well-Fed Timer"
scoreboard objectives add ec.ck_fortune dummy "Cooking: Fortune Timer"

# --- Per-category mastery scoreboards ---
scoreboard objectives add ck.m_combat dummy "Mastery: Combat Cuisine"
scoreboard objectives add ck.m_mining dummy "Mastery: Mining Meals"
scoreboard objectives add ck.m_fortune dummy "Mastery: Fortune Foods"
scoreboard objectives add ck.m_wayfarer dummy "Mastery: Wayfarer Fare"
scoreboard objectives add ck.m_delicacy dummy "Mastery: Delicacies"
scoreboard objectives add ck.m_seasonal dummy "Mastery: Seasonal"
scoreboard objectives add ck.m_treats dummy "Mastery: Treats"
scoreboard objectives add ck.m_ration dummy "Mastery: Laborer Rations"
scoreboard objectives add ck.m_feast dummy "Mastery: Feast Platters"
scoreboard objectives add ck.m_preserve dummy "Mastery: Preservation"
scoreboard objectives add ck.m_spirit dummy "Mastery: Spirit Cuisine"

# --- Preservation death counter ---
scoreboard objectives add ec.ck_preserve dummy "Cooking: Preserve Counter"

# --- Recipe discovery scoreboards (bitfields: bit N = slot N discovered) ---
scoreboard objectives add ck.disc0 dummy "Discovery: Combat"
scoreboard objectives add ck.disc1 dummy "Discovery: Mining"
scoreboard objectives add ck.disc2 dummy "Discovery: Fortune"
scoreboard objectives add ck.disc3 dummy "Discovery: Wayfarer"
scoreboard objectives add ck.disc4 dummy "Discovery: Delicacy"
scoreboard objectives add ck.disc5 dummy "Discovery: Seasonal"
scoreboard objectives add ck.disc6 dummy "Discovery: Treats"
scoreboard objectives add ck.disc7 dummy "Discovery: Rations"
scoreboard objectives add ck.disc8 dummy "Discovery: Feast Platters"
scoreboard objectives add ck.disc9 dummy "Discovery: Preservation"
scoreboard objectives add ck.disc10 dummy "Discovery: Spirit Cuisine"
scoreboard objectives add ck.disc_init dummy "Discovery: Initialized"

# --- Chef's Touch Minigame ---
scoreboard objectives add ec.ck_phase dummy "Cooking: Minigame Phase"
scoreboard objectives add ec.ck_quality dummy "Cooking: Minigame Quality"
scoreboard objectives add ec.ck_tier dummy "Cooking: Meal Tier"
scoreboard objectives add ec.ck_timer dummy "Cooking: Phase Timer"
scoreboard objectives add ec.ck_v1 dummy "Cooking: Phase Var 1"
scoreboard objectives add ec.ck_v2 dummy "Cooking: Phase Var 2"
scoreboard objectives add ec.ck_v3 dummy "Cooking: Phase Var 3"
scoreboard objectives add ec.ck_v4 dummy "Cooking: Phase Var 4"
scoreboard objectives add ec.ck_v5 dummy "Cooking: Phase Var 5"
scoreboard objectives add ec.ck_quality_mod dummy "Cooking: Quality Modifier"
scoreboard objectives add ec.ck_mode dummy "Cooking: Mode Toggle"
scoreboard objectives add ec.ck_saved_slot dummy "Cooking: Saved Slot"
scoreboard objectives add ec.ck_saved_cat dummy "Cooking: Saved Category"
scoreboard objectives add ec.ck_tab_page dummy "Cooking: Tab Page"
scoreboard objectives add ec.cf_ck_cat dummy "Codex Cookbook: Category"
scoreboard objectives add ec.cf_ck_page dummy "Codex Cookbook: Page"

# --- Bit constants for discovery math ---
scoreboard players set #8 adv.temp 8
scoreboard players set #16 adv.temp 16
scoreboard players set #32 adv.temp 32

# --- Schedule buff tick (1s loop) ---
schedule function evercraft:cooking/buff/tick 1s
