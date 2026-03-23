# ============================================================
# PANTRY SYSTEM — Load
# ============================================================
# Portable cooking storage: ingredients, utensils, and meals.
# Auto-pulls ingredients when cooking at a campfire.

# Scoreboards
scoreboard objectives add ec.pantry_id dummy "Pantry Player ID"
scoreboard objectives add ec.has_pantry dummy "Has Pantry"
scoreboard objectives add ec.pantry_page dummy "Pantry GUI Page"
scoreboard objectives add ec.pid dummy "Active Pantry ID"

# Global pantry ID counter
execute unless score #next_pantry_id ec.var matches 1.. run scoreboard players set #next_pantry_id ec.var 0
