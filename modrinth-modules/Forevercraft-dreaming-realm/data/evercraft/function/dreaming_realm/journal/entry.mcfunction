# Dream Journal — Generate entry on dream exit
# @s = player, ec.dream_ch1/2/3 still set (before cleanup)
# Writes a journal entry to chat based on challenges completed

# Increment dream visit count
scoreboard players add @s ec.dj_count 1

# Header
tellraw @s {text:""}
tellraw @s [{text:"  ╔═══════════════════════╗",color:"#9C27B0"}]
tellraw @s [{text:"  ║  ",color:"#9C27B0"},{text:"Dream Journal",color:"#CE93D8",bold:true},{text:"          ║",color:"#9C27B0"}]
tellraw @s [{text:"  ╚═══════════════════════╝",color:"#9C27B0"}]

# Show day number
function evercraft:dreaming_realm/journal/show_day

# Generate challenge-specific entry (random from pool of 5)
execute if score @s ec.dream_ch1 matches 1 run function evercraft:dreaming_realm/journal/entry_maze
execute if score @s ec.dream_ch2 matches 1 run function evercraft:dreaming_realm/journal/entry_guardians
execute if score @s ec.dream_ch3 matches 1 run function evercraft:dreaming_realm/journal/entry_trial

# If no challenges completed (died or timed out)
execute if score @s ec.dream_ch1 matches 0 if score @s ec.dream_ch2 matches 0 if score @s ec.dream_ch3 matches 0 run function evercraft:dreaming_realm/journal/entry_failed

# Footer
tellraw @s [{text:"  ─────────────────────────",color:"#7B1FA2"}]

# Sound
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.6 0.8

# Milestone checks
execute if score @s ec.dj_count matches 10 run function evercraft:dreaming_realm/journal/milestone_10
execute if score @s ec.dj_count matches 30 run function evercraft:dreaming_realm/journal/milestone_30
