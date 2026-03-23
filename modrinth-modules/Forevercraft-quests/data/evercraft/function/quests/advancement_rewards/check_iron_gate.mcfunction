# ============================================================
# Check Iron Pickaxe Gate
# Players must have crafted/held iron pickaxe to receive crate rewards
# ============================================================

# Check if player has iron pickaxe in inventory or has had one before
execute store result score @s ec.has_iron_pick run clear @s minecraft:iron_pickaxe 0
execute if score @s ec.has_iron_pick matches 1.. run scoreboard players set @s ec.iron_gate_passed 1

# Also check for diamond/netherite picks (implies they had iron)
execute store result score #temp ec.var run clear @s minecraft:diamond_pickaxe 0
execute if score #temp ec.var matches 1.. run scoreboard players set @s ec.iron_gate_passed 1
execute store result score #temp ec.var run clear @s minecraft:netherite_pickaxe 0
execute if score #temp ec.var matches 1.. run scoreboard players set @s ec.iron_gate_passed 1
