# Showcase — Teleport to best friend (run as player at player)
# Called from click_tp after click validation

# === GATHER DATA ===
# Self UUID3
execute store result storage evercraft:friend_tp temp.self_uuid3 int 1 run data get entity @s UUID[3]

# Target UUID3 (stored when showcase was opened)
data modify storage evercraft:friend_tp temp.target_uuid3 set from storage evercraft:showcase temp.target_uuid3

# Target CID
execute store result storage evercraft:friend_tp temp.target_cid int 1 run data get storage evercraft:showcase temp.target_cid

# === ONLINE CHECK ===
function evercraft:codex/friends/showcase/tp_online_check with storage evercraft:friend_tp temp
execute if score #tp_online ec.temp matches 0 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your friend is not online right now.",color:"red"}]
execute if score #tp_online ec.temp matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score #tp_online ec.temp matches 0 run return 0

# === RE-CHECK COOLDOWN (prevent double-click) ===
function evercraft:codex/friends/showcase/check_tp_cooldown with storage evercraft:friend_tp temp
execute if score #sc_tp_ready ec.temp matches 0 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Teleport is still on cooldown.",color:"red"}]
execute if score #sc_tp_ready ec.temp matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score #sc_tp_ready ec.temp matches 0 run return 0

# === RECORD COOLDOWN ===
function evercraft:codex/friends/showcase/tp_record_cooldown with storage evercraft:friend_tp temp

# === DEPARTURE EFFECTS ===
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.8
particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.05 40

# === CLOSE GUI ===
function evercraft:advantage/gui/close

# === TELEPORT ===
function evercraft:codex/friends/showcase/tp_execute with storage evercraft:friend_tp temp

# === ARRIVAL EFFECTS ===
execute at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.5
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.05 40

# === NOTIFY TARGET ===
function evercraft:codex/friends/showcase/tp_notify_target with storage evercraft:friend_tp temp
