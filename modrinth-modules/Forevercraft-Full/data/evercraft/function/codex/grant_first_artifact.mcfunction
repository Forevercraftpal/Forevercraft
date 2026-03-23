# Grant The Forevercraft Codex item when player gets their first artifact
# This function runs as an advancement reward for every artifact collected
# Updated for Minecraft 1.21.11 syntax

# Mark player as having artifacts (persistent across reloads)
scoreboard players set @s ec.has_artifacts 1

# Real-time artifact discovery counter (never decrements)
scoreboard players add @s ec.artifacts_ever 1

# Check if player already has the codex (check inventory, hotbar, offhand, and ender chest)
execute unless items entity @s container.* book[custom_data~{artifact_codex:true}] unless items entity @s weapon.offhand book[custom_data~{artifact_codex:true}] unless items entity @s enderchest.* book[custom_data~{artifact_codex:true}] run function evercraft:codex/give_codex_item

# Always show collection message
tellraw @s ""
tellraw @s [{text:"  ",color:"white"},{text:"📖 ",color:"yellow"},{text:"New Codex Entry!",color:"gold",bold:true}]
tellraw @s [{text:"  An artifact has been recorded in your ",color:"gray"},{text:"Forevercraft Codex",color:"yellow"},{text:".",color:"gray"}]
tellraw @s [{text:"  "},{text:"[Open Codex]",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex"},hover_event:{action:"show_text",value:{text:"Open The Forevercraft Codex",color:"yellow"}}}]
tellraw @s ""

# Play discovery sound
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.7 1.4
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 1.0

# Constellation progress check
function evercraft:constellations/check

# Guild XP for artifact discovery (+100)
function evercraft:guild/contribution/add_guild_xp_direct {amount:100}
