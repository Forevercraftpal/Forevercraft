# ============================================================
# Guild System — Load
# Scoreboards, constants, storage initialization
# ============================================================

# === PER-PLAYER SCOREBOARDS ===
scoreboard objectives add ec.guild_id dummy "Guild ID"
scoreboard objectives add ec.guild_rank dummy "Guild Rank"
scoreboard objectives add ec.guild_contrib dummy "Guild Contribution"
scoreboard objectives add ec.guild_inv trigger "Guild Invite Action"
scoreboard objectives add ec.guild_menu trigger "Guild Menu"
scoreboard objectives add ec.guild_inv_from dummy "Invite Source Guild"
scoreboard objectives add ec.guild_inv_cd dummy "Invite Cooldown"
scoreboard objectives add ec.guild_donate trigger "Guild Donate"
scoreboard objectives add ec.guild_kick trigger "Guild Kick Vote"
scoreboard objectives add ec.guild_kick_cd dummy "Kick Vote Cooldown"
scoreboard objectives add ec.guild_kick_target dummy "Kick Vote Target"
scoreboard objectives add ec.guild_kick_yes dummy "Kick Votes Yes"
scoreboard objectives add ec.guild_kick_no dummy "Kick Votes No"
scoreboard objectives add ec.guild_kick_need dummy "Kick Votes Needed"

# Enable triggers for all players
scoreboard players enable @a ec.guild_inv
scoreboard players enable @a ec.guild_menu
scoreboard players enable @a ec.guild_donate
scoreboard players enable @a ec.guild_kick

# === RANK THRESHOLD CONSTANTS ===
# Stored on fake players in ec.const
scoreboard players set #guild_rank_1 ec.const 0
scoreboard players set #guild_rank_2 ec.const 1000
scoreboard players set #guild_rank_3 ec.const 3000
scoreboard players set #guild_rank_4 ec.const 8000
scoreboard players set #guild_rank_5 ec.const 15000
scoreboard players set #guild_rank_6 ec.const 30000
scoreboard players set #guild_rank_7 ec.const 50000

# === GUILD LEVEL XP THRESHOLDS (dynamic: 100 * level^3) ===
# Computed at runtime in guild/xp/check_levelup.mcfunction
# L2=800, L10=100K, L25=1.56M, L50=12.5M, L100=100M

# === MISC CONSTANTS ===
scoreboard players set #guild_max_contrib ec.const 50000
scoreboard players set #guild_invite_timeout ec.const 1200
scoreboard players set #2 ec.const 2
scoreboard players set #10 ec.const 10
scoreboard players set #17 ec.const 17
scoreboard players set #25 ec.const 25
scoreboard players set #99 ec.const 99
scoreboard players set #100 ec.const 100
scoreboard players set #375 ec.const 375

# === STORAGE INITIALIZATION ===
# Guild registry: {next_id:1, guilds:{}}
execute unless data storage evercraft:guild next_id run data modify storage evercraft:guild next_id set value 1
execute unless data storage evercraft:guild guilds run data modify storage evercraft:guild guilds set value {}

# === GUILD MENU GUI ===
scoreboard objectives add ec.guild_page dummy "Guild Menu Page"
scoreboard objectives add ec.guild_menu_time dummy "Guild Menu Inactivity"
scoreboard objectives add ec.guild_warp_pg dummy "Guild Warp Page"
scoreboard objectives add ec.gm_page dummy "Guild Members Page"

# === GUILD ZONE WARP STRIKE ===
scoreboard objectives add ec.gs_warp_cd dummy "Guild Warp Strike CD"

# === GUILD PETS ===
scoreboard objectives add ec.gs_pet_count dummy "Guild Pet Count"
scoreboard objectives add ec.gs_my_pets dummy "My Guild Pets"
scoreboard objectives add gc.slot dummy "Guild Companion Slot"
scoreboard objectives add gc.rp_timer dummy "Guild Companion RP Timer"
scoreboard objectives add gc.petcd dummy "Guild Companion Pet CD"
scoreboard objectives add gc.feedcd dummy "Guild Companion Feed CD"

# === GUILD NPC MEMBERS ===
scoreboard objectives add gnpc.slot dummy "Guild NPC Slot"
scoreboard players set #gnpc_refresh ec.const 14400
scoreboard players set #gnpc_contrib ec.const 12000
scoreboard players set #gnpc_xp ec.const 3

# Backfill GuildNPCs[] for old guilds that were created before the NPC system
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild] unless data entity @s data.GuildNPCs run data modify entity @s data.GuildNPCs set value []

# === GUILD ZONE TRACKING ===
scoreboard objectives add ec.guild_in_zone dummy "In Guild Zone"
scoreboard objectives add ec.guild_zone_x dummy "Guild Zone X"
scoreboard objectives add ec.guild_zone_y dummy "Guild Zone Y"
scoreboard objectives add ec.guild_zone_z dummy "Guild Zone Z"
scoreboard objectives add ec.guild_zone_dim dummy "Guild Zone Dim"

# === GUILD EVENT SCOREBOARDS ===
scoreboard objectives add ec.gc_victorian dummy "Contrib Victorian Tracker"
scoreboard objectives add ec.ge_noon_ticks dummy "Noon Event Presence"
scoreboard objectives add ec.ge_weekly_contrib dummy "Weekly Contrib Snapshot"
scoreboard objectives add ec.ge_node_life dummy "Scatter Node Life"
scoreboard objectives add ec.ge_event_tp trigger "Guild Event Teleport"
scoreboard players enable @a ec.ge_event_tp

# === GUILD EVENT CONSTANTS ===
scoreboard players set #ge_noon_duration ec.const 3600
scoreboard players set #ge_noon_half ec.const 1800
scoreboard players set #ge_victorian_threshold ec.const 100
scoreboard players set #ge_victorian_xp ec.const 1000
scoreboard players set #6 ec.const 6
scoreboard players set #7 ec.const 7
scoreboard players set #4 ec.const 4
scoreboard players set #20 ec.const 20

# === GUILD EVENT STORAGE ===
execute unless data storage evercraft:guild_events pending run data modify storage evercraft:guild_events pending set value []

# === START TICK SCHEDULE ===
schedule function evercraft:guild/tick 5s

# === GUILD EVENTS SYSTEM ===
function evercraft:guild/events/load

# === DIPLOMACY SYSTEM ===
function evercraft:guild/diplomacy/load
