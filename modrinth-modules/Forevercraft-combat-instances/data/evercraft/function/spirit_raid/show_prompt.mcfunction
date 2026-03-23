# Spirit Raid Unlock — Show Descent Prompt
# Runs as the player who just completed the dungeon

# Enable trigger and tag as prompted
scoreboard players set @s ec.sr_prompt 0
scoreboard players enable @s ec.sr_prompt
tag @s add sr.prompted

# Set per-player prompt timer (30 seconds = 600 ticks)
scoreboard players set @s ec.sr_timer 600

# Show prompt in chat
tellraw @s ""
tellraw @s [{text:"════════════════════════════",color:"dark_purple",strikethrough:true}]
tellraw @s [{text:"  \u2620 ",color:"dark_purple"},{text:"The Spirit Realm beckons...",color:"light_purple",italic:true}]
tellraw @s [{text:"  Descend into a ",color:"gray"},{text:"10-floor Spirit Raid",color:"dark_purple",bold:true},{text:"?",color:"gray"}]
tellraw @s [{text:"  Starts from Floor 1. No turning back.",color:"red",italic:true}]
tellraw @s ""
tellraw @s [{text:"  [Descend]",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.sr_prompt set 1"}},{text:"    "},{text:"[Leave Dungeon]",color:"gray",click_event:{action:"run_command",command:"/trigger ec.sr_prompt set 2"}}]
tellraw @s [{text:"════════════════════════════",color:"dark_purple",strikethrough:true}]
