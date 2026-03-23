# Dreaming Realm — Realm-Wide Announcement
# Context: as @s = dreaming player

# Check if this was a lucky dream (sub-30 DR)
execute if data storage evercraft:dreaming {lucky_dream: true} run tellraw @a [{text:""},{"text":"\n"},{"text":"  "},{"text":"✦ ","color":"gold"},{"text":"Against all odds, ","color":"#D4A574","italic":true},{"selector":"@s","color":"white","bold":true},{"text":" has slipped into a Lucid Dream...","color":"#D4A574","italic":true},{"text":"\n"}]
execute if data storage evercraft:dreaming {lucky_dream: true} run playsound ui.toast.challenge_complete master @a ~ ~ ~ 1.0 1.0
execute if data storage evercraft:dreaming {lucky_dream: true} run return 0

# Normal dream announcement
tellraw @a [{text:""},{"text":"  "},{"text":"✦ ","color":"#9B59B6"},{"selector":"@s","color":"white"},{"text":" has entered the Dreaming Realm...","color":"#D4A574","italic":true}]
playsound block.amethyst_block.chime master @a ~ ~ ~ 1.0 0.6
