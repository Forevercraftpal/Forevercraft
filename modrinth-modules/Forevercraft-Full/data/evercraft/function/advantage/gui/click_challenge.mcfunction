# Handle challenge row click — run as the interaction entity
# Macro arg: row (0-12, maps to tree index)
# Find nearest player with menu open and accept the challenge for that tree
# If player already has an active challenge, show progress + cancel instead

# Clear interaction data so click doesn't repeat
data remove entity @s interaction

# Capture session for multiplayer-safe owner lookup
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Map row to primary challenge ID for that tree
# Row 0=Agil(chal 1), 1=Dex(3), 2=Evas(4), 3=Steal(6), 4=Vita(7)
# 5=Task(9), 6=Beast(10), 7=Vict(11), 8=Fish(12), 9=Mine(13)
# 10=Gather(15), 11=Black(16), 12=Exped(17)
$scoreboard players set #chal_row adv.temp $(row)
execute if score #chal_row adv.temp matches 0 run scoreboard players set #chal_val adv.temp 1
execute if score #chal_row adv.temp matches 1 run scoreboard players set #chal_val adv.temp 3
execute if score #chal_row adv.temp matches 2 run scoreboard players set #chal_val adv.temp 4
execute if score #chal_row adv.temp matches 3 run scoreboard players set #chal_val adv.temp 6
execute if score #chal_row adv.temp matches 4 run scoreboard players set #chal_val adv.temp 7
execute if score #chal_row adv.temp matches 5 run scoreboard players set #chal_val adv.temp 9
execute if score #chal_row adv.temp matches 6 run scoreboard players set #chal_val adv.temp 10
execute if score #chal_row adv.temp matches 7 run scoreboard players set #chal_val adv.temp 11
execute if score #chal_row adv.temp matches 8 run scoreboard players set #chal_val adv.temp 12
execute if score #chal_row adv.temp matches 9 run scoreboard players set #chal_val adv.temp 13
execute if score #chal_row adv.temp matches 10 run scoreboard players set #chal_val adv.temp 15
execute if score #chal_row adv.temp matches 11 run scoreboard players set #chal_val adv.temp 16
execute if score #chal_row adv.temp matches 12 run scoreboard players set #chal_val adv.temp 17

# If player already has active challenge → show progress + cancel option
execute as @a[tag=Adv.InMenu,distance=..10,scores={adv.chal_id=1..}] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:advantage/challenges/show_progress

# If no active challenge → accept the new one
execute as @a[tag=Adv.InMenu,distance=..10,scores={adv.chal_id=0}] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:advantage/challenges/accept

# Refresh challenge display
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:advantage/gui/refresh_challenges
