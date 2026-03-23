# Spirit Raids — Start Entry Vote
# Called when DR-eligible players clear floor 10
# Shows boss-specific scary prompt and vote buttons

# Set vote state
scoreboard players set #rd_vote_active ec.var 1
scoreboard players set #rd_vote_timer ec.var 600
scoreboard players set #rd_votes_yes ec.var 0
scoreboard players set #rd_votes_no ec.var 0
scoreboard players set #rd_vote_context ec.var 1

# Enable vote trigger for all dungeon players
scoreboard players enable @a[tag=dg.player] ec.rd_vote
scoreboard players set @a[tag=dg.player] ec.rd_vote 0

# Show boss-specific scary prompt based on structure type
execute if score #rd_struct ec.var matches 1 run function evercraft:raids/boss/prompts/ancient_city
execute if score #rd_struct ec.var matches 2 run function evercraft:raids/boss/prompts/end_city
execute if score #rd_struct ec.var matches 3 run function evercraft:raids/boss/prompts/trial_chambers
execute if score #rd_struct ec.var matches 4 run function evercraft:raids/boss/prompts/stronghold
execute if score #rd_struct ec.var matches 5 run function evercraft:raids/boss/prompts/mansion
execute if score #rd_struct ec.var matches 6 run function evercraft:raids/boss/prompts/bastion
execute if score #rd_struct ec.var matches 7 run function evercraft:raids/boss/prompts/fortress
execute if score #rd_struct ec.var matches 8 run function evercraft:raids/boss/prompts/monument
execute if score #rd_struct ec.var matches 9 run function evercraft:raids/boss/prompts/desert
execute if score #rd_struct ec.var matches 10 run function evercraft:raids/boss/prompts/jungle
execute if score #rd_struct ec.var matches 17 run function evercraft:raids/boss/prompts/mineshaft
execute if score #rd_struct ec.var matches 19 run function evercraft:raids/boss/prompts/dungeon_prompt

# Show vote buttons
tellraw @a[tag=dg.player] ""
tellraw @a[tag=dg.player] [{"text":"  ","color":"white"},{"text":"[Enter the Raid Room \u25bc]","color":"dark_red","bold":true,"click_event":{"action":"run_command","command":"trigger ec.rd_vote set 1"},"hover_event":{"action":"show_text","value":{"text":"Continue into the raid","color":"red"}}},{"text":"    "},{"text":"[Turn Back \u25b2]","color":"gray","click_event":{"action":"run_command","command":"trigger ec.rd_vote set 2"},"hover_event":{"action":"show_text","value":{"text":"Evacuate safely","color":"gray"}}}]
tellraw @a[tag=dg.player] [{"text":"  30 seconds to decide...","color":"dark_gray","italic":true}]

# Sound effect
execute as @a[tag=dg.player] at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 0.8 0.5
