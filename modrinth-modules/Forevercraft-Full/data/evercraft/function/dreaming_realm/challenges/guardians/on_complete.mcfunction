# Dream Guardians — Complete!
# Context: as @s = dreaming player

# Mark challenge 2 done
scoreboard players set @s ec.dream_ch2 1

# Celebration
tellraw @s [{text:""},{"text":"✦ ","color":"gold"},{"text":"Dream Guardians ","color":"#E74C3C","bold":true},{"text":"— Complete! ","color":"#2ECC71","bold":true},{"text":"A Dream Shard materializes...","color":"#D4A574","italic":true}]
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 normal @s

# Give Dream Shard
give @s amethyst_shard[custom_name={text:"Dream Shard",color:"light_purple",italic:false},custom_data={dream_shard:true},enchantment_glint_override=true] 1

# Direct to next challenge
tellraw @s [{text:""},{"text":"  ","color":"gray"},{"text":"The floating platforms to the southeast beckon...","color":"#D4A574","italic":true}]

# Schedule next challenge start
schedule function evercraft:dreaming_realm/challenges/start_first 5s
