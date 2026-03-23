# Spirit Metamorphosis — Check requirements and show progress UI
# Run as @s at @s. Player must be holding a spirit artifact.
# Called when player wants to check metamorphosis progress.

execute unless entity @s[tag=ec.sp_active] run return run tellraw @s [{"text":"Hold a Spirit Artifact to check metamorphosis progress!","color":"red"}]

# Header
tellraw @s [{"text":""},{"text":"═══ Spirit Metamorphosis ═══","color":"dark_purple","bold":true}]
tellraw @s [{"text":""}]

# === UNIVERSAL REQUIREMENTS (1-3) ===

# Req 1: All glyph slots filled at Exquisite stage
# Check ec.sp_req1 (set by glyph system when all slots filled at exquisite+)
execute if score @s ec.sp_req1 matches 1.. run tellraw @s [{"text":"  1. ","color":"white"},{"text":"✓","color":"green"},{"text":" All glyph slots filled (Exquisite)","color":"gray"}]
execute unless score @s ec.sp_req1 matches 1.. run tellraw @s [{"text":"  1. ","color":"white"},{"text":"✗","color":"red"},{"text":" All glyph slots filled (Exquisite)","color":"dark_gray"}]

# Req 2: Mastery fully maxed (100,000 XP)
execute if score @s ec.sp_mastery matches 100000.. run tellraw @s [{"text":"  2. ","color":"white"},{"text":"✓","color":"green"},{"text":" Mastery maxed","color":"gray"}]
execute unless score @s ec.sp_mastery matches 100000.. run tellraw @s [{"text":"  2. ","color":"white"},{"text":"✗","color":"red"},{"text":" Mastery maxed (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_mastery"},"color":"yellow"},{"text":" / 100,000)","color":"dark_gray"}]

# Req 3: Slain all 14 bosses (13 raid + Iron Phalanx)
execute if score @s ec.sp_req3 matches 1.. run tellraw @s [{"text":"  3. ","color":"white"},{"text":"✓","color":"green"},{"text":" All 14 Bosses slain","color":"gray"}]
execute unless score @s ec.sp_req3 matches 1.. run tellraw @s [{"text":"  3. ","color":"white"},{"text":"✗","color":"red"},{"text":" All 14 Bosses slain","color":"dark_gray"}]

# === WEAPON-SPECIFIC REQUIREMENTS (4-7) ===
# Dispatch to per-weapon check function
execute if score @s ec.sp_weapon matches 1 run function evercraft:spirit/metamorphosis/check_hollow_fangs
execute if score @s ec.sp_weapon matches 2 run function evercraft:spirit/metamorphosis/check_voidpiercer
execute if score @s ec.sp_weapon matches 3 run function evercraft:spirit/metamorphosis/check_firebrand
execute if score @s ec.sp_weapon matches 4 run function evercraft:spirit/metamorphosis/check_zephyr_edge
execute if score @s ec.sp_weapon matches 5 run function evercraft:spirit/metamorphosis/check_nite
execute if score @s ec.sp_weapon matches 6 run function evercraft:spirit/metamorphosis/check_whispering_spear
execute if score @s ec.sp_weapon matches 7 run function evercraft:spirit/metamorphosis/check_ashcrown
execute if score @s ec.sp_weapon matches 8 run function evercraft:spirit/metamorphosis/check_ellegaard
execute if score @s ec.sp_weapon matches 9 run function evercraft:spirit/metamorphosis/check_pharaoh
execute if score @s ec.sp_weapon matches 10 run function evercraft:spirit/metamorphosis/check_lifewoven
execute if score @s ec.sp_weapon matches 11 run function evercraft:spirit/metamorphosis/check_sabrewing
execute if score @s ec.sp_weapon matches 12 run function evercraft:spirit/metamorphosis/check_dragonheart
execute if score @s ec.sp_weapon matches 13 run function evercraft:spirit/metamorphosis/check_bulwark
execute if score @s ec.sp_weapon matches 14 run function evercraft:spirit/metamorphosis/check_royal_trident

tellraw @s [{"text":""}]

# === CHECK IF ALL 7 ARE MET ===
# Sum all requirements
scoreboard players set #meta_total ec.temp 0
execute if score @s ec.sp_req1 matches 1.. run scoreboard players add #meta_total ec.temp 1
execute if score @s ec.sp_mastery matches 100000.. run scoreboard players add #meta_total ec.temp 1
execute if score @s ec.sp_req3 matches 1.. run scoreboard players add #meta_total ec.temp 1
execute if score @s ec.sp_req4 matches 1.. run scoreboard players add #meta_total ec.temp 1
execute if score @s ec.sp_req5 matches 1.. run scoreboard players add #meta_total ec.temp 1
execute if score @s ec.sp_req6 matches 1.. run scoreboard players add #meta_total ec.temp 1
execute if score @s ec.sp_req7 matches 1.. run scoreboard players add #meta_total ec.temp 1

# Show progress
tellraw @s [{"text":"  Progress: ","color":"white"},{"score":{"name":"#meta_total","objective":"ec.temp"},"color":"light_purple"},{"text":" / 7","color":"gray"}]

# If all 7 met, trigger metamorphosis!
execute if score #meta_total ec.temp matches 7 run function evercraft:spirit/metamorphosis/transform
