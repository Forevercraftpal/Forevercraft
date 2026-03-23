# Title Click — Confirm Claim All Personal Stage Milestones
# Run as the interaction entity — sends confirmation tellraw instead of auto-claiming

data remove entity @s interaction

scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Count pending and show confirmation prompt
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:claim/count_personal
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp if score @s ec.claim_prs matches 1.. run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Claim all ","color":"yellow"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"gold","bold":true},{"text":" milestone rewards? ","color":"yellow"},{"text":"[Confirm]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Click to claim all pending milestone rewards"}}]
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp if score @s ec.claim_prs matches 0 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"No pending milestone rewards to claim.","color":"gray"}]
