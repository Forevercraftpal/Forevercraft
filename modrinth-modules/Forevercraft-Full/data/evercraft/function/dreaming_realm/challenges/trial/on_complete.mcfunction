# Dreamer's Trial — Complete!
# Context: as @s = dreaming player

# Mark challenge 3 done
scoreboard players set @s ec.dream_ch3 1

# Remove trial tag
tag @s remove dr.trial_active

# Celebration
tellraw @s [{"text":""},{"text":"✦ ","color":"gold"},{"text":"Dreamer's Trial ","color":"#3498DB","bold":true},{"text":"— Complete! ","color":"#2ECC71","bold":true},{"text":"A Dream Shard materializes...","color":"#D4A574","italic":true}]
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 normal @s

# Give Dream Shard
give @s amethyst_shard[custom_name={text:"Dream Shard",color:"light_purple",italic:false},custom_data={dream_shard:true},enchantment_glint_override=true] 1

# Kill remaining fragments
kill @e[type=item_display,tag=dr.frag]

# All 3 challenges complete → bonus reward
execute if score @s ec.dream_ch1 matches 1 if score @s ec.dream_ch2 matches 1 run function evercraft:dreaming_realm/exit/complete

# If not all done, hint at remaining
execute unless score @s ec.dream_ch1 matches 1 run tellraw @s [{"text":""},{"text":"  ","color":"gray"},{"text":"Other challenges in the realm still await...","color":"#D4A574","italic":true}]
execute if score @s ec.dream_ch1 matches 1 unless score @s ec.dream_ch2 matches 1 run tellraw @s [{"text":""},{"text":"  ","color":"gray"},{"text":"Other challenges in the realm still await...","color":"#D4A574","italic":true}]
