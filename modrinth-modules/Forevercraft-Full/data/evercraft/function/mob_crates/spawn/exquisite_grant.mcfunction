# Mob Crates - Spawn Exquisite Crate (Dream Rate >= 10 verified)
# Barrel already placed by spawn/exquisite.mcfunction

# Fill barrel with exquisite loot and set name
loot insert ~ ~ ~ loot evercraft:mob_crates/exquisite
function evercraft:bosses/totem/roll_crate_drop
function evercraft:structures/container/shuffle_barrel
data merge block ~ ~ ~ {CustomName:{text:"Exquisite Mob Crate",color:"light_purple",bold:true,italic:false}}

# Grant XP to nearest player
experience add @p 200 points
execute as @p[distance=..10,scores={adv.victorian=1..}] run scoreboard players set #base_crate_xp adv.temp 200
execute as @p[distance=..10,scores={adv.victorian=1..}] run function evercraft:advantage/victorian/apply_bonus

# Spawn animation display (exquisite skin — align to barrel block position)
execute align xyz run function evercraft:crate_anim/spawn_display {tier:"exquisite",system_tag:"mob_crate",plot_start:25,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3Mzc4ODY3NTU1NiwKICAicHJvZmlsZUlkIiA6ICJhYjNkNTgwMjVkOWM0NTcyODNkNTFlYTcwYTY4N2U1NiIsCiAgInByb2ZpbGVOYW1lIiA6ICJsdWN5X2ludGhlc2t5XyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9jZmRmZjQwZmY5OThhYzIyNGNhYzYzM2FlMmJlODBjZThmNzc1YTA1ZDY1ODk4ODU0MmMwYTQ2ZDUwYzI5NDc1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}
