# Party / Co-op System — Load
# Called from init.mcfunction on datapack load

# === PARTY CORE SCOREBOARDS ===
scoreboard objectives add ec.party_id dummy "Party ID"
scoreboard objectives add ec.party_role dummy "Party Role (0=none,1=leader,2=member)"
scoreboard objectives add ec.party_nearby dummy "Nearby Party Members"
scoreboard objectives add ec.party_size dummy "Party Size"

# === PARTY GUI CACHE (per-player, for stale detection) ===
scoreboard objectives add ec.pty_csz dummy "Party GUI Cached Size"
scoreboard objectives add ec.pty_crl dummy "Party GUI Cached Role"

# === PARTY SIDEBAR (Health Hearts) ===
scoreboard objectives add ec.party_hp dummy {text:"Party",color:"gold",bold:true}
scoreboard objectives modify ec.party_hp rendertype hearts

# === PARTY COLOR SYSTEM ===
# Each party gets a unique team color from a pool of 7 available colors.
# Players in a party join ec.pty_<N> so only they see sidebar.team.<color>.
scoreboard objectives add ec.pty_clr dummy "Party Color Index (1-7, 0=none)"

# Create 7 party teams (colors not used by advantage cosmetics, bounty, or night terror)
team add ec.pty_1
team modify ec.pty_1 color gold
team modify ec.pty_1 friendlyFire false
team add ec.pty_2
team modify ec.pty_2 color dark_blue
team modify ec.pty_2 friendlyFire false
team add ec.pty_3
team modify ec.pty_3 color dark_green
team modify ec.pty_3 friendlyFire false
team add ec.pty_4
team modify ec.pty_4 color dark_aqua
team modify ec.pty_4 friendlyFire false
team add ec.pty_5
team modify ec.pty_5 color gray
team modify ec.pty_5 friendlyFire false
team add ec.pty_6
team modify ec.pty_6 color light_purple
team modify ec.pty_6 friendlyFire false
team add ec.pty_7
team modify ec.pty_7 color black
team modify ec.pty_7 friendlyFire false

# Set all 7 sidebar display slots permanently
function evercraft:party/sidebar/show_sidebar

# Rebuild color pool — add each color that isn't currently in use
data modify storage evercraft:party color_pool set value []
execute unless entity @a[scores={ec.pty_clr=1,ec.party_id=1..}] run data modify storage evercraft:party color_pool append value 1
execute unless entity @a[scores={ec.pty_clr=2,ec.party_id=1..}] run data modify storage evercraft:party color_pool append value 2
execute unless entity @a[scores={ec.pty_clr=3,ec.party_id=1..}] run data modify storage evercraft:party color_pool append value 3
execute unless entity @a[scores={ec.pty_clr=4,ec.party_id=1..}] run data modify storage evercraft:party color_pool append value 4
execute unless entity @a[scores={ec.pty_clr=5,ec.party_id=1..}] run data modify storage evercraft:party color_pool append value 5
execute unless entity @a[scores={ec.pty_clr=6,ec.party_id=1..}] run data modify storage evercraft:party color_pool append value 6
execute unless entity @a[scores={ec.pty_clr=7,ec.party_id=1..}] run data modify storage evercraft:party color_pool append value 7

# Rejoin existing party members to their teams after reload
execute as @a[scores={ec.party_id=1..,ec.pty_clr=1..}] run function evercraft:party/color/rejoin

# Global party ID counter (increments on each new party created)
execute unless score #party_next_id ec.var matches 1.. run scoreboard players set #party_next_id ec.var 1

# Initialize all players to 0 so scores={ec.party_id=0} selectors work
# (players with no score ≠ score of 0 — they won't match the selector)
scoreboard players add @a ec.party_id 0
scoreboard players add @a ec.party_role 0

# === INVITE SYSTEM ===
scoreboard objectives add ec.party_inv dummy "Party Invite State"
scoreboard objectives add ec.party_inv_cd dummy "Party Invite Cooldown"
scoreboard objectives add ec.party_inv_from dummy "Invite From Party ID"

# === LEADER DISCONNECT TIMER ===
# Gametime when leader disconnected (0 = leader is online)
scoreboard objectives add ec.party_ldr_dc dummy "Leader Disconnect Timer"

# === OFFLINE MEMBER DISCONNECT TIMER ===
# Ticks since party member count dropped below party_size (20/s, 12000 = 10 min)
scoreboard objectives add ec.party_dc dummy "Offline Disconnect Timer"

# === PARTY MENU TRIGGER ===
scoreboard objectives add ec.party trigger "Party Menu"
scoreboard players enable @a ec.party

# === COMBO ABILITY COOLDOWNS (ticks, decremented 20/s in party tick) ===
scoreboard objectives add ec.pc_mark_cd dummy "Marked for Death CD"
scoreboard objectives add ec.pc_shield_cd dummy "Shield Wall CD"
scoreboard objectives add ec.pc_blitz_cd dummy "Blitz CD"
scoreboard objectives add ec.pc_medic_cd dummy "Field Medic CD"
scoreboard objectives add ec.pc_rally_cd dummy "Rally Cry CD"
scoreboard objectives add ec.pc_fortune_cd dummy "Shared Fortunes CD"
scoreboard objectives add ec.pc_forge_cd dummy "Forge Bond CD"
scoreboard objectives add ec.pc_ping_cd dummy "Ping Cooldown"

# === COMBO DISCOVERY TRACKING (bitfield — 1 bit per combo unlocked) ===
scoreboard objectives add ec.pc_unlocked dummy "Party Combos Unlocked"

# === PARTY BUFF ACTIVE FLAGS ===
# Pack Tactics passive (active when 2+ beastmasters nearby with pets)
scoreboard objectives add ec.pc_pack dummy "Pack Tactics Active"
# Tidal Network passive (active when fisher + explorer nearby)
scoreboard objectives add ec.pc_tidal dummy "Tidal Network Active"
# Rally Cry temporary DR (countdown timer)
scoreboard objectives add ec.pc_rally_dr dummy "Rally Cry DR Timer"

# === COMBO PROC FLAGS (set by trigger, cleared after processing) ===
scoreboard objectives add ec.pc_marked dummy "Target Is Marked"

# === BOSS INTEGRATION ===
# Party-scaled HP multiplier (100 = 1.0x, 150 = 1.5x, etc.)
# Already handled by wb.hp_scale in bosses/load — we just set it on summon

# === CONSTANTS ===
scoreboard players set #48 ec.const 48
scoreboard players set #24 ec.const 24
scoreboard players set #600 ec.const 600
scoreboard players set #900 ec.const 900
scoreboard players set #400 ec.const 400
scoreboard players set #1200 ec.const 1200
scoreboard players set #6000 ec.const 6000
scoreboard players set #12000 ec.const 12000

# Bit divisors for combo discovery bitfield (GUI display)
scoreboard players set #bit0 ec.const 1
scoreboard players set #bit1 ec.const 2
scoreboard players set #bit2 ec.const 4
scoreboard players set #bit3 ec.const 8
scoreboard players set #bit4 ec.const 16
scoreboard players set #bit5 ec.const 32
scoreboard players set #bit6 ec.const 64
scoreboard players set #bit7 ec.const 128
scoreboard players set #bit8 ec.const 256

# === STORAGE INITIALIZATION ===
data modify storage evercraft:party temp set value {}

# === BOOTSTRAP TICK SCHEDULE ===
schedule function evercraft:party/tick 1s replace
