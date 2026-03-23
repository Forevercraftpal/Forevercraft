# Daylight — Sleep Skip
# Called when all players have been sleeping long enough (advance_time is false)
# Advances DayTime to next dawn (daytime 0)
# Requires: minecraft:players_sleeping_percentage 200 (disables vanilla sleep skip)

# Block sleep skip during Skyrift Derby (would end the event early)
execute if score #cal_event_id ec.var matches 8 run tellraw @a {text:"The Skyrift Derby blocks the night from passing!",color:"light_purple",italic:true}
execute if score #cal_event_id ec.var matches 8 run scoreboard players set #sleep_wait ec.var 0
execute if score #cal_event_id ec.var matches 8 as @a at @s if data entity @s sleeping_pos run tp @s ~ ~ ~
execute if score #cal_event_id ec.var matches 8 run return 0

# Reset sleep counter
scoreboard players set #sleep_wait ec.var 0

# === DREAMING REALM: Check sleeping players for dream entry BEFORE skip ===
# If a player triggers the dream, they get tagged dr.in_realm and teleported to the arena
execute as @a[gamemode=!spectator] at @s if data entity @s sleeping_pos run function evercraft:dreaming_realm/check_entry

# Calculate ticks to next dawn
execute store result score #skip_ticks ec.var run time query daytime
scoreboard players set #to_dawn ec.var 24000
scoreboard players operation #to_dawn ec.var -= #skip_ticks ec.var

# Advance time to dawn
execute store result storage evercraft:daylight skip_ticks int 1 run scoreboard players get #to_dawn ec.var
function evercraft:visual_time/do_time_add with storage evercraft:daylight

# Clear weather on sleep
weather clear

# Smooth transition effects
effect give @a blindness 3 0 true

# Notify players that the night was skipped
tellraw @a[gamemode=!spectator,tag=!dr.in_realm] {text:"☀ The night fades as dawn arrives...",color:"yellow",italic:true}
playsound minecraft:block.amethyst_block.chime master @a[gamemode=!spectator,tag=!dr.in_realm] ~ ~ ~ 0.5 1.2

# Wake all sleeping players EXCEPT those entering the Dreaming Realm
# (vanilla won't do it — players_sleeping_percentage 200)
execute as @a[gamemode=!spectator,tag=!dr.in_realm] at @s if data entity @s sleeping_pos run tp @s ~ ~ ~

# Prevent re-triggering for 100 ticks
scoreboard players set #sleep_skip_cd ec.var 100

# Flag that dawn was reached via sleep (prevents Full Moon Madness achievement)
scoreboard players set #slept_through_night ec.var 1

# Recompute visual time scores immediately
execute store result score #visual_time ec.var run time query daytime
execute store result score #visual_day ec.var run time query day
scoreboard players operation #moon_phase ec.var = #visual_day ec.var
scoreboard players operation #moon_phase ec.var %= #8 ec.const

# Buddy system: +2 friendship for sleeping with buddy nearby
function evercraft:buddy/points/sleeping
