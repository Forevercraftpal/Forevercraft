# Tidal Network — Check complementary tree in party (macro)
# Arg: pid (party ID)

# If I'm a fisher, check for nearby explorer in party (exclude self to prevent dual-spec self-activation)
$execute if score @s adv.fishing matches 10.. store result score #tn_count ec.temp if entity @a[scores={ec.party_id=$(pid),adv.explorer=10..},distance=..48]
execute if score @s adv.fishing matches 10.. if score @s adv.explorer matches 10.. run scoreboard players remove #tn_count ec.temp 1
execute if score @s adv.fishing matches 10.. if score #tn_count ec.temp matches 1.. run scoreboard players set @s ec.pc_tidal 1

# If I'm an explorer, check for nearby fisher in party (exclude self)
$execute if score @s adv.explorer matches 10.. store result score #tn_count ec.temp if entity @a[scores={ec.party_id=$(pid),adv.fishing=10..},distance=..48]
execute if score @s adv.explorer matches 10.. if score @s adv.fishing matches 10.. run scoreboard players remove #tn_count ec.temp 1
execute if score @s adv.explorer matches 10.. if score #tn_count ec.temp matches 1.. run scoreboard players set @s ec.pc_tidal 1

# Apply Luck of the Sea boost to fishers with active Tidal Network
execute if score @s ec.pc_tidal matches 1 if score @s adv.fishing matches 10.. run attribute @s luck modifier remove evercraft:tidal_network
execute if score @s ec.pc_tidal matches 1 if score @s adv.fishing matches 10.. run attribute @s luck modifier add evercraft:tidal_network 1.0 add_value

# Discovery check (only when active)
execute if score @s ec.pc_tidal matches 1 run function evercraft:party/combos/discover_tidal_network

# Remove if not active
execute if score @s ec.pc_tidal matches 0 run attribute @s luck modifier remove evercraft:tidal_network
