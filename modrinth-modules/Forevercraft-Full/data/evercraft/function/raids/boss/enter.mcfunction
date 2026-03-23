# Spirit Raids — Boss Room Entry (Floor 10)
# Called when raid floor advances to 10

# Announce boss floor
tellraw @a[tag=rd.player] [{text:"[Raid] ",color:"dark_red",bold:true},{text:"Floor 10 \u2014 ",color:"red"},{text:"The Boss Awaits",color:"dark_red",bold:true,italic:true}]

# Temporarily tag rd.player as dg.player so prompts work (prompts use dg.player selector)
tag @a[tag=rd.player] add dg.player

# Show boss-specific scary prompt
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

# Remove temp tag
tag @a[tag=rd.player] remove dg.player

# Start boss entry vote
function evercraft:raids/vote/start_boss_vote

# Sound effect — ominous
execute as @a[tag=rd.player] at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 0.3
execute as @a[tag=rd.player] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.5 0.5
