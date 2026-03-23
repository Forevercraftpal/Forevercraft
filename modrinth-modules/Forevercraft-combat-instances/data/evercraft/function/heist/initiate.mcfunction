# Black Market Heist — Initiate (run as player who triggered ec.heist)
# Validates conditions, consumes key, builds arena, starts heist

# === VALIDATION ===
# No active heist allowed
execute if score #heist_active ec.var matches 1 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"A heist is already in progress.",color:"gray"}]

# Must be near a barrel
execute unless entity @e[type=marker,tag=BM.Barrel,distance=..5] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No black market barrel nearby.",color:"gray"}]

# Must have dungeon key in either hand
execute unless items entity @s weapon.mainhand minecraft:trial_key[custom_data~{dungeon_key:true}] unless items entity @s weapon.offhand minecraft:trial_key[custom_data~{dungeon_key:true}] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need a dungeon key in hand.",color:"gray"}]

# Must not be in duel, dreaming realm, dungeon, or castle
execute if score @s ec.duel_active matches 1.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Can't start a heist right now.",color:"gray"}]
execute if entity @s[tag=dr.in_realm] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Can't start a heist right now.",color:"gray"}]
execute if score @s ec.heist_active matches 1.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Can't start a heist right now.",color:"gray"}]

# Re-check cooldown on nearest barrel
tag @e[type=marker,tag=BM.Barrel,distance=..5,sort=nearest,limit=1] add heist.target_barrel
function evercraft:heist/cooldown/check
execute if score #heist_cd_active ec.var matches 1 run tag @e[tag=heist.target_barrel] remove heist.target_barrel
execute if score #heist_cd_active ec.var matches 1 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This black market is still on lockdown.",color:"gray"}]

# === CONSUME KEY ===
clear @s trial_key[custom_data~{dungeon_key:true}] 1

# === MARK COOLDOWN ===
function evercraft:heist/cooldown/mark

# === SET STATE ===
tag @s add ec.heist_active_tag
scoreboard players set @s ec.heist_active 1
scoreboard players set #heist_active ec.var 1
scoreboard players set @s ec.heist_timer 1200

# === PREVENT TOMB DEATH DURING HEIST ===
scoreboard players set @s ec.tomb_death 0

# === SAVE RETURN POSITION ===
execute at @s run summon marker ~ ~ ~ {Tags:["heist.return"]}

# === BUILD ARENA AT FIXED Y=300 (avoids build limit at any barrel height) ===
execute at @e[tag=heist.target_barrel,limit=1] positioned ~ 300 ~ run function evercraft:heist/arena/build

# === TELEPORT PLAYER TO START ===
# Start position: barrel X, Y=302 (2 above foundation at 300), barrel Z + 2
execute at @e[tag=heist.target_barrel,limit=1] run tp @s ~ 302 ~2

# === STRIP ELYTRA (prevent flight escape) ===
# Save elytra to storage if worn, replace with air, restore on cleanup
execute if items entity @s armor.chest minecraft:elytra run data modify storage evercraft:heist_temp saved_elytra set from entity @s equipment.chest
execute if items entity @s armor.chest minecraft:elytra run item replace entity @s armor.chest with minecraft:air
execute unless items entity @s armor.chest minecraft:elytra run data remove storage evercraft:heist_temp saved_elytra

# === EFFECTS ===
effect give @s minecraft:resistance 8 4 true
effect give @s minecraft:blindness 1 0 true

# === ANNOUNCE ===
tellraw @s [{text:"\n"},{text:"  \u2620 ",color:"dark_red"},{text:"THE HEIST BEGINS",color:"red",bold:true},{text:" \u2620\n",color:"dark_red"},{text:"  Navigate the gauntlet without getting hit!\n",color:"gray"},{text:"  You have 60 seconds. One hit and you're out.\n",color:"dark_gray"},{text:"  Good luck, thief.\n",color:"gold",italic:true}]

playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.5 0.5

# === START COUNTDOWN ===
schedule function evercraft:heist/countdown/start 20t

# Clean barrel tag
tag @e[tag=heist.target_barrel] remove heist.target_barrel
