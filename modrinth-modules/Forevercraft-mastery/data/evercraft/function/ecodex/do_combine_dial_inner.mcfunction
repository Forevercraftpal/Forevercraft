# === COMBINE WITH PORTAL DIAL — INNER (Run as player) ===

# Verify requirements
execute unless score @s ec.codex_tier matches 2 run return 0
execute unless items entity @s container.* *[custom_data~{portal_dial:true}] run return 0

# Remove the Portal Dial from inventory
clear @s *[custom_data~{portal_dial:true}] 1

# Remove the Eternal Codex (check all locations)
execute if items entity @s weapon.mainhand book[custom_data~{eternal_codex:true}] run clear @s book[custom_data~{eternal_codex:true}] 1
execute if items entity @s weapon.offhand book[custom_data~{eternal_codex:true}] run clear @s book[custom_data~{eternal_codex:true}] 1
execute if items entity @s container.* book[custom_data~{eternal_codex:true}] run clear @s book[custom_data~{eternal_codex:true}] 1

# Give the Phoenix Codex
loot give @s loot evercraft:phoenix/phoenix_codex

# Upgrade codex tier
scoreboard players set @s ec.codex_tier 3

# Close current hub (it will need Phoenix Codex to reopen)
function evercraft:advantage/gui/close

# Feedback
tellraw @s ""
tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"#FF6B35"},{"text":"The Phoenix Codex Awakens!","color":"#FF6B35","bold":true},{"text":" \u2726\u2726\u2726","color":"#FF6B35"}]
tellraw @s [{"text":"  The Portal Dial has fused with your codex, granting the Guidestone Network.","color":"gray"}]
tellraw @s [{"text":"  You now have ","color":"gray"},{"text":"4 tabs","color":"gold","bold":true},{"text":": FC, CF, Companions, and ","color":"gray"},{"text":"Guidestone","color":"#FF6B35","bold":true},{"text":"!","color":"gray"}]
tellraw @s ""

# Effects
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
playsound minecraft:item.trident.thunder master @s ~ ~ ~ 0.3 1.5
particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.1 100
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 50
