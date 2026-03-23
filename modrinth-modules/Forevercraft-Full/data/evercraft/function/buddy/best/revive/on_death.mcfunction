# Best Buddy — On Death
# @s = player whose best buddy just died
# Creates a memento item in player inventory, starts 10-minute auto-revive timer

# Mark best buddy as dead
scoreboard players set @s ec.bd_best_dead 1
scoreboard players set @s ec.bd_best_active 0

# Start 10-minute revive timer (600 seconds)
scoreboard players set @s ec.bd_best_revive 600

# Give memento item to player (a heart-shaped item they carry)
give @s minecraft:echo_shard[custom_name={text:"Buddy's Spirit",color:"#FFD700",italic:false},custom_data={buddy_memento:1b},enchantment_glint_override=true,lore=[{text:"Your best buddy's spirit lingers...",color:"gray",italic:false},{text:"Keep it close. It will return.",color:"yellow",italic:false}]] 1

# Death penalty
function evercraft:buddy/points/death_penalty

# Clean up entity tags (entity is dead/gone)
# The actual entity cleanup happens via vanilla death

tellraw @s [{text:"\n"},{text:"[Buddy] ",color:"#FFD700"},{text:"Your Best Buddy has fallen!",color:"dark_red",bold:true},{text:"\n"},{text:"Keep the ",color:"gray"},{text:"Buddy's Spirit",color:"#FFD700"},{text:" in your inventory or bundle.",color:"gray"},{text:"\n"},{text:"It will revive in ",color:"gray"},{text:"10 minutes",color:"green"},{text:".",color:"gray"},{text:"\n"}]

execute at @s run playsound minecraft:entity.wolf.death master @s ~ ~ ~ 1 0.6
