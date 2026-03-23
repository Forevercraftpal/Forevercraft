# Unlock Dreamwalker title (crate title ID 1, bit 0 = 1)
# Directly sets the bitfield — bypasses crate system announcements
# Context: as @s = player earning the reward

# Check if already unlocked: (cc_titles / 1) % 2
scoreboard players operation #cc_check adv.temp = @s adv.cc_titles
scoreboard players operation #cc_check adv.temp %= #2 adv.temp
execute if score #cc_check adv.temp matches 1 run return 0

# Unlock bit 0
scoreboard players add @s adv.cc_titles 1

# Clear other titles for mutual exclusivity, then auto-apply
function evercraft:titles/clear_all
scoreboard players set @s adv.cc_title 1
function evercraft:advantage/cosmetics/crate_title_apply

tellraw @s [{"text":""},{"text":"  "},{"text":"Title Unlocked: ","color":"gray"},{"text":"Dreamwalker","color":"light_purple","bold":true}]
tellraw @s [{"text":""},{"text":"  "},{"text":"Toggle from the Cosmetics menu.","color":"gray","italic":true}]
