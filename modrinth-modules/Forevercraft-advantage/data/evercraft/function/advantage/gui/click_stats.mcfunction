# Stats button click — run as the interaction entity
# Shows player stats in chat

# Clear interaction data
data remove entity @s interaction

# Capture session for multiplayer-safe owner lookup
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Run stats display as the nearest menu player
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:stats/show

# Click sound
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
