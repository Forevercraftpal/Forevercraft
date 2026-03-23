# Quest Preview — Display quest options in chat
# Macro: {tier:N}
# Run as player

# Header
tellraw @s {"text":""}
tellraw @s [{"text":"═══ ","color":"dark_gray"},{"text":"Quest Preview","color":"gold","bold":true},{"text":" ═══","color":"dark_gray"}]

# Tier info line
execute if score @s ec.qp_tier matches 1 run tellraw @s [{"text":"  Tier: ","color":"gray"},{"text":"Errand","color":"yellow"},{"text":" | Reward: ","color":"gray"},{"text":"Common Crate","color":"green"},{"text":" +25 XP +25 Rep","color":"aqua"}]
execute if score @s ec.qp_tier matches 2 run tellraw @s [{"text":"  Tier: ","color":"gray"},{"text":"Task","color":"gray","bold":true},{"text":" | Reward: ","color":"gray"},{"text":"Uncommon Crate","color":"aqua"},{"text":" +100 XP +75 Rep","color":"aqua"}]
execute if score @s ec.qp_tier matches 3 run tellraw @s [{"text":"  Tier: ","color":"gray"},{"text":"Contract","color":"blue","bold":true},{"text":" | Reward: ","color":"gray"},{"text":"Rare Crate","color":"blue"},{"text":" +150 XP +150 Rep","color":"aqua"}]
execute if score @s ec.qp_tier matches 4 run tellraw @s [{"text":"  Tier: ","color":"gray"},{"text":"Commission","color":"dark_aqua","bold":true},{"text":" | Reward: ","color":"gray"},{"text":"Ornate Crate","color":"dark_aqua"},{"text":" +250 XP +250 Rep","color":"aqua"}]
execute if score @s ec.qp_tier matches 5 run tellraw @s [{"text":"  Tier: ","color":"gray"},{"text":"Expedition","color":"gold","bold":true},{"text":" | Reward: ","color":"gray"},{"text":"Exquisite Crate","color":"gold"},{"text":" +500 XP +400 Rep","color":"aqua"}]
execute if score @s ec.qp_tier matches 6 run tellraw @s [{"text":"  Tier: ","color":"gray"},{"text":"✦ Heroic ✦","color":"dark_purple","bold":true},{"text":" | Reward: ","color":"gray"},{"text":"Mythical Crate","color":"dark_purple"},{"text":" +1000 XP +500 Rep","color":"aqua"}]
tellraw @s {"text":""}

# Option 1
scoreboard players operation #qp_lookup quests.temp = @s ec.qp_opt1
$function evercraft:quests/preview/card_tier$(tier)
data modify storage eden:temp preview.trigger set value "21"
data modify storage eden:temp preview.num set value "1"
function evercraft:quests/preview/show_card with storage eden:temp preview

# Option 2
scoreboard players operation #qp_lookup quests.temp = @s ec.qp_opt2
$function evercraft:quests/preview/card_tier$(tier)
data modify storage eden:temp preview.trigger set value "22"
data modify storage eden:temp preview.num set value "2"
function evercraft:quests/preview/show_card with storage eden:temp preview

# Option 3 (non-heroic only)
execute unless score @s ec.qp_tier matches 6 run scoreboard players operation #qp_lookup quests.temp = @s ec.qp_opt3
$execute unless score @s ec.qp_tier matches 6 run function evercraft:quests/preview/card_tier$(tier)
execute unless score @s ec.qp_tier matches 6 run data modify storage eden:temp preview.trigger set value "23"
execute unless score @s ec.qp_tier matches 6 run data modify storage eden:temp preview.num set value "3"
execute unless score @s ec.qp_tier matches 6 run function evercraft:quests/preview/show_card with storage eden:temp preview

# Footer
tellraw @s {"text":""}
execute unless score @s ec.qp_tier matches 6 run tellraw @s [{"text":"  "},{"text":"[Close]","color":"red","click_event":{"action":"run_command","command":"/trigger ec.quest set 24"}},{"text":"   "},{"text":"[Re-roll (1 Coin)]","color":"gold","click_event":{"action":"run_command","command":"/trigger ec.quest set 25"}}]
execute if score @s ec.qp_tier matches 6 run tellraw @s [{"text":"  "},{"text":"[Close]","color":"red","click_event":{"action":"run_command","command":"/trigger ec.quest set 24"}}]
