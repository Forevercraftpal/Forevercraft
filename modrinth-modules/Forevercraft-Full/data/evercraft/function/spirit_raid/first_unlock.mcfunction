# Spirit Raid Unlock — First Time
# Permanently unlock Spirit Raids for this player

scoreboard players set @s ec.sr_unlocked 1

# Epic unlock announcement
title @s times 10 60 20
title @s title {text:"Spirit Realm Unlocked",color:"dark_purple",bold:true}
title @s subtitle {text:"You may now descend into the Spirit Raid.",color:"light_purple"}
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 1 1 1 0.05 200

# Show the descent prompt
function evercraft:spirit_raid/show_prompt
