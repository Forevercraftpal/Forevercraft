# Admin — Force Summon a World Boss
# Usage: /function evercraft:bosses/admin/summon
# Run as the player who should be the summoner. Spawns boss 5 blocks ahead.
# Bypasses cooldowns and totem requirements.
#
# Set boss ID first:
#   /scoreboard players set @s wb.admin_id 1
#   /function evercraft:bosses/admin/summon
#
# Boss IDs:
#   Overworld: 1=Hollow King, 2=Verdant Warden, 3=Stormforged, 4=Tidecaller, 5=Earthshaker, 6=Nightmare
#   Nether:    7=Infernal Titan, 8=Soul Warden, 9=Crimson Behemoth
#   End:       10=Void Sovereign, 11=Ender Architect

# Check: no boss already active
execute if score #wb_active ec.var matches 1 run return run tellraw @s [{text:"[Boss Admin] ",color:"dark_red"},{text:"A boss is already active. Use ",color:"red"},{text:"/function evercraft:bosses/cleanup",color:"yellow",click_event:{action:"suggest_command",command:"/function evercraft:bosses/cleanup"}},{text:" to force-remove it first.",color:"red"}]

# Check: boss ID set
execute unless score @s wb.admin_id matches 1..11 run return run tellraw @s [{text:"[Boss Admin] ",color:"dark_red"},{text:"Set boss ID first: ",color:"red"},{text:"/scoreboard players set @s wb.admin_id <1-11>",color:"yellow"}]

# Clear stale tags
tag @a remove wb.participant
tag @a remove wb.last_hit
tag @a remove wb.summoner
tag @a remove wb.natural_spawn
advancement revoke @a only evercraft:bosses/damage/dealt

# Tag summoner
tag @s add wb.summoner

# Spawn the selected boss (at player position — boss appears 5 blocks ahead)
execute if score @s wb.admin_id matches 1 at @s run function evercraft:bosses/summon/hollow_king
execute if score @s wb.admin_id matches 2 at @s run function evercraft:bosses/summon/verdant_warden
execute if score @s wb.admin_id matches 3 at @s run function evercraft:bosses/summon/stormforged
execute if score @s wb.admin_id matches 4 at @s run function evercraft:bosses/summon/tidecaller
execute if score @s wb.admin_id matches 5 at @s run function evercraft:bosses/summon/earthshaker
execute if score @s wb.admin_id matches 6 at @s run function evercraft:bosses/summon/nightmare
execute if score @s wb.admin_id matches 7 at @s run function evercraft:bosses/summon/infernal_titan
execute if score @s wb.admin_id matches 8 at @s run function evercraft:bosses/summon/soul_warden
execute if score @s wb.admin_id matches 9 at @s run function evercraft:bosses/summon/crimson_behemoth
execute if score @s wb.admin_id matches 10 at @s run function evercraft:bosses/summon/void_sovereign
execute if score @s wb.admin_id matches 11 at @s run function evercraft:bosses/summon/ender_architect

# Reset admin ID
scoreboard players set @s wb.admin_id 0
