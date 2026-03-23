# Best Buddy — Check Bundle for Memento
# @s = player
# Sets #bd_memento_bundle ec.temp = 1 if memento found in any bundle

scoreboard players set #bd_memento_bundle ec.temp 0

# Check if any bundle in inventory contains the memento
# Uses the satchel pattern: check for bundle_contents containing buddy_memento
execute if data entity @s Inventory[{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{buddy_memento:1b}}}]}}] run scoreboard players set #bd_memento_bundle ec.temp 1
