# Clean up all party data for a player leaving/disbanding
# Run as the player being cleaned up

# Remove buffs
attribute @s armor modifier remove evercraft:party_dr
attribute @s luck modifier remove evercraft:party_luck
attribute @s luck modifier remove evercraft:tidal_network

# Reset all party scores
scoreboard players set @s ec.party_id 0
scoreboard players set @s ec.party_role 0
scoreboard players set @s ec.party_nearby 0
scoreboard players set @s ec.party_size 0
scoreboard players set @s ec.party_ldr_dc 0
scoreboard players set @s ec.party_dc 0
scoreboard players set @s ec.party_inv 0
scoreboard players set @s ec.party_inv_cd 0
scoreboard players set @s ec.party_inv_from 0
scoreboard players set @s ec.pty_clr 0

# Reset combo flags
scoreboard players set @s ec.pc_pack 0
scoreboard players set @s ec.pc_tidal 0
scoreboard players set @s ec.pc_rally_dr 0
scoreboard players set @s ec.pc_marked 0

# Reset combo cooldowns (prevent carry-over to new party)
scoreboard players set @s ec.pc_mark_cd 0
scoreboard players set @s ec.pc_shield_cd 0
scoreboard players set @s ec.pc_blitz_cd 0
scoreboard players set @s ec.pc_medic_cd 0
scoreboard players set @s ec.pc_rally_cd 0
scoreboard players set @s ec.pc_fortune_cd 0
scoreboard players set @s ec.pc_forge_cd 0
scoreboard players set @s ec.pc_ping_cd 0

# Clear sidebar name cache (re-capture on next party join)
tag @s remove ec.pty_named

# Clear sidebar
function evercraft:party/sidebar/clear

# Leave party sidebar team + restore title team if they have one
team leave @s
execute if score @s wb.title matches 1.. run function evercraft:bosses/titles/apply

tellraw @s {text:"You have left the party.",color:"gray"}
