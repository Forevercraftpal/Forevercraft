# Mob Crates - Downgrade Ornate → Rare (nearest player Dream Rate < 5)
# Barrel already placed by spawn/ornate.mcfunction

# Fill with rare loot instead
loot insert ~ ~ ~ loot evercraft:mob_crates/rare
function evercraft:structures/container/shuffle_barrel
data merge block ~ ~ ~ {CustomName:{text:"Rare Mob Crate",color:"aqua",italic:false}}

tellraw @p [{text:"✦ ",color:"dark_purple"},{text:"An ornate mob crate dimmed to rare... your dreams aren't strong enough yet.",color:"gray",italic:true}]
tellraw @p [{text:"  Requires ",color:"gray"},{text:"Dream Rate 5",color:"gold",bold:true},{text:" for Ornate mob crates.",color:"gray"}]

# Spawn rare animation instead (align to barrel block position)
execute align xyz run function evercraft:crate_anim/spawn_display {tier:"rare",system_tag:"mob_crate",plot_start:15,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3Mzc4ODYyMDUzMiwKICAicHJvZmlsZUlkIiA6ICI2NGRiNmMwNTliOTk0OTM2YTY0M2QwODEwODE0ZmJkMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJUaGVTaWx2ZXJEcmVhbXMiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTc2YmZhOWE0YWEwYTRmMTIwZDQ2NDgyOGZlY2E3OWM5MjYzNjk2MDRhOWU1Nzk2NTlkOTUwZDZiMTk1MzIiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}
