# === COMBINE WITH TOME — INNER (Run as player) ===

# Verify requirements
execute unless score @s ec.codex_tier matches ..1 run return 0
execute unless items entity @s container.* book[custom_data~{tome_of_experience:true}] run return 0

# Remove the Tome from inventory
clear @s book[custom_data~{tome_of_experience:true}] 1

# Upgrade codex tier
scoreboard players set @s ec.codex_tier 2

# Feedback
tellraw @s ""
tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"Codex Enhanced!","color":"yellow","bold":true},{"text":" \u2726\u2726\u2726","color":"gold"}]
tellraw @s [{"text":"  The Tome of Experience has been absorbed into your codex.","color":"gray"}]
tellraw @s [{"text":"  XP Banking is now available on the hub!","color":"gray"}]
tellraw @s ""

# Effects
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 0.8
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 50

# Refresh the hub to show new XP buttons
function evercraft:advantage/gui/close
function evercraft:codex/hub/open
