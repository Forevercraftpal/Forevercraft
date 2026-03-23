# Field Medic — Advancement trigger handler
# Fires when player eats golden apple, golden carrot, or enchanted golden apple
# Run as the player who ate

# Revoke immediately for re-detection
advancement revoke @s only evercraft:party/triggers/eat_golden_food

# Call the Field Medic combo (function does its own party/level/cooldown checks)
execute at @s run function evercraft:party/combos/field_medic
