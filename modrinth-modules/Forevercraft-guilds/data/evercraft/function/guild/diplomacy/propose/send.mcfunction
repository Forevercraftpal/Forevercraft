# Guild Diplomacy — Send proposal to both guilds, start voting
# $(guild_a) $(guild_b) $(vote_type) $(guild_a_name) $(guild_b_name)

# Store global vote state
$scoreboard players set #gd_vote_guild_a ec.var $(guild_a)
$scoreboard players set #gd_vote_guild_b ec.var $(guild_b)
$scoreboard players set #gd_vote_type ec.var $(vote_type)

# === COUNT ONLINE MEMBERS PER GUILD ===

# Guild A: count online members
scoreboard players set #gd_online_a ec.temp 0
$execute as @a[scores={ec.guild_id=$(guild_a)}] run scoreboard players add #gd_online_a ec.temp 1

# Guild A: get total roster from marker
$scoreboard players set #Search ec.guild_id $(guild_a)
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] store result score #gd_roster_a ec.temp run data get entity @s data.member_count

# Guild B: count online members
scoreboard players set #gd_online_b ec.temp 0
$execute as @a[scores={ec.guild_id=$(guild_b)}] run scoreboard players add #gd_online_b ec.temp 1

# Guild B: get total roster from marker
$scoreboard players set #Search ec.guild_id $(guild_b)
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] store result score #gd_roster_b ec.temp run data get entity @s data.member_count

# === DETERMINE VOTE MODE PER GUILD ===

# Guild A: if 5+ online → immediate majority, else → queued (60% roster)
scoreboard players set #gd_queued_a ec.temp 0
execute if score #gd_online_a ec.temp matches ..4 run scoreboard players set #gd_queued_a ec.temp 1

# Guild A: calculate votes needed
# Immediate: online/2 + 1
scoreboard players operation #gd_need_a ec.temp = #gd_online_a ec.temp
scoreboard players operation #gd_need_a ec.temp /= #2 ec.const
scoreboard players add #gd_need_a ec.temp 1
# Queued: ceil(roster * 0.6) = (roster * 3 + 4) / 5
execute if score #gd_queued_a ec.temp matches 1 run scoreboard players operation #gd_need_a ec.temp = #gd_roster_a ec.temp
execute if score #gd_queued_a ec.temp matches 1 run scoreboard players operation #gd_need_a ec.temp *= #3 ec.const
execute if score #gd_queued_a ec.temp matches 1 run scoreboard players add #gd_need_a ec.temp 4
execute if score #gd_queued_a ec.temp matches 1 run scoreboard players operation #gd_need_a ec.temp /= #5 ec.const

# Guild B: same logic
scoreboard players set #gd_queued_b ec.temp 0
execute if score #gd_online_b ec.temp matches ..4 run scoreboard players set #gd_queued_b ec.temp 1

scoreboard players operation #gd_need_b ec.temp = #gd_online_b ec.temp
scoreboard players operation #gd_need_b ec.temp /= #2 ec.const
scoreboard players add #gd_need_b ec.temp 1
execute if score #gd_queued_b ec.temp matches 1 run scoreboard players operation #gd_need_b ec.temp = #gd_roster_b ec.temp
execute if score #gd_queued_b ec.temp matches 1 run scoreboard players operation #gd_need_b ec.temp *= #3 ec.const
execute if score #gd_queued_b ec.temp matches 1 run scoreboard players add #gd_need_b ec.temp 4
execute if score #gd_queued_b ec.temp matches 1 run scoreboard players operation #gd_need_b ec.temp /= #5 ec.const

# === SET VOTE STATE ON ALL ONLINE GUILD A MEMBERS ===
$execute as @a[scores={ec.guild_id=$(guild_a)}] run scoreboard players set @s ec.gd_vote_cd 6000
$execute as @a[scores={ec.guild_id=$(guild_a)}] run scoreboard players operation @s ec.gd_vote_need = #gd_need_a ec.temp
$execute as @a[scores={ec.guild_id=$(guild_a)}] run scoreboard players operation @s ec.gd_vote_queued = #gd_queued_a ec.temp
$execute as @a[scores={ec.guild_id=$(guild_a)}] run scoreboard players set @s ec.gd_vote_yes 0
$execute as @a[scores={ec.guild_id=$(guild_a)}] run scoreboard players set @s ec.gd_vote_no 0
$execute as @a[scores={ec.guild_id=$(guild_a)}] run scoreboard players set @s ec.gd_vote_total 0
$execute as @a[scores={ec.guild_id=$(guild_a)}] run scoreboard players set @s ec.gd_vote_type $(vote_type)
$execute as @a[scores={ec.guild_id=$(guild_a)}] run scoreboard players set @s ec.gd_vote_tgt $(guild_b)

# === SET VOTE STATE ON ALL ONLINE GUILD B MEMBERS ===
$execute as @a[scores={ec.guild_id=$(guild_b)}] run scoreboard players set @s ec.gd_vote_cd 6000
$execute as @a[scores={ec.guild_id=$(guild_b)}] run scoreboard players operation @s ec.gd_vote_need = #gd_need_b ec.temp
$execute as @a[scores={ec.guild_id=$(guild_b)}] run scoreboard players operation @s ec.gd_vote_queued = #gd_queued_b ec.temp
$execute as @a[scores={ec.guild_id=$(guild_b)}] run scoreboard players set @s ec.gd_vote_yes 0
$execute as @a[scores={ec.guild_id=$(guild_b)}] run scoreboard players set @s ec.gd_vote_no 0
$execute as @a[scores={ec.guild_id=$(guild_b)}] run scoreboard players set @s ec.gd_vote_total 0
$execute as @a[scores={ec.guild_id=$(guild_b)}] run scoreboard players set @s ec.gd_vote_type $(vote_type)
$execute as @a[scores={ec.guild_id=$(guild_b)}] run scoreboard players set @s ec.gd_vote_tgt $(guild_a)

# === ANNOUNCE TO BOTH GUILDS ===
function evercraft:guild/diplomacy/propose/send_macro with storage evercraft:guild temp
