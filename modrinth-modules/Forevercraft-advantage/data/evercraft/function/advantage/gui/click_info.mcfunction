# Handle info button click — run as the interaction entity
# Clears click data, finds the owning player, lists all challenges in chat

data remove entity @s interaction

# Find the owning player via session and run list_all + sound
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:advantage/challenges/list_all
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
