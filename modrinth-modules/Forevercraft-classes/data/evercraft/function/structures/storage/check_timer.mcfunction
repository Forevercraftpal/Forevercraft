# Show loot chest reset timers for this player
# Called via /trigger ec.loot_timer or Ruin Watch right-click
# Shows active timers from entity markers + ready crates from data storage

# Header
tellraw @s {text:""}
tellraw @s [{text:"  ⏳ ",color:"gold"},{text:"LOOT RESET TIMERS",color:"yellow",bold:true},{text:" ⏳",color:"gold"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}

# Set up UUID check
tag @s add cf.checking_player
scoreboard players set #timer_count cf.temp 0

# Check all looted markers (still ticking down) for this player
# Expired markers (0 ticks left) are skipped — storage handles "Ready!" display
execute as @e[type=marker,tag=cf.looted_marker] run function evercraft:structures/storage/check_timer_marker

# Check ready crates from storage (works even for markers in unloaded chunks)
execute if data storage evercraft:ruin_watch ready_crates[0] run function evercraft:structures/storage/check_timer_storage

tag @s remove cf.checking_player

# If no markers found, show message
execute if score #timer_count cf.temp matches 0 run tellraw @s [{text:"  ",color:"gray"},{text:"No active loot timers! ",color:"gray"},{text:"Go explore some structures.",color:"dark_gray",italic:true}]

# Footer
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score #timer_count cf.temp matches 1.. run tellraw @s [{text:"  Tip: ",color:"gray"},{text:"Explorer advantage reduces reset time!",color:"dark_gray",italic:true}]
tellraw @s {text:""}

playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.5 1.2
