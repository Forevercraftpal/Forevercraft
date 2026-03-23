# Fishing Crate - On Catch (advancement reward)
# Triggered by fishing_rod_hooked advancement, fires every time player catches something

# Revoke immediately so it triggers again on next catch
advancement revoke @s only evercraft:fishing/core/catch

# Roll for crate
function evercraft:fishing/ref/check_crate

# Charm 2x: extra crate roll when charm is active
execute if score @s ec.charm_timer matches 1.. run function evercraft:fishing/ref/check_crate

# Newcomer bonus: 10% extra crate roll
execute if score @s ec.difficulty matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.1} run function evercraft:fishing/ref/check_crate

# Fishing Derby bonus: 50% chance for extra crate roll (1.5x total crate rate)
execute if score #cal_event_id ec.var matches 4 store result score #cal_derby_roll cal.temp run random value 1..2
execute if score #cal_event_id ec.var matches 4 if score #cal_derby_roll cal.temp matches 1 run function evercraft:fishing/ref/check_crate

# Fishing Derby scoring (if active)
execute if score #cal_event_id ec.var matches 4 run function evercraft:calendar/events/fishing_derby/score_catch

# Seasons + Fishing: Full moon night grants extra crate roll (lunar tides)
execute if score #moon_phase ec.var matches 0 if score #visual_time ec.var matches 13000..23000 run function evercraft:fishing/ref/check_crate
execute if score #moon_phase ec.var matches 0 if score #visual_time ec.var matches 13000..23000 run tellraw @s [{text:"  ",color:"aqua"},{text:"The lunar tide favors your catch!",color:"#87CEEB",italic:true}]

# Fishing + Advantage: Fishing level 10+ grants +2 Fishing tree progress per catch
execute if score @s adv.fishing matches 10.. run scoreboard players add @s adv.stat_fish 2

# Message in a Bottle — 2% chance to catch on any fishing success
function evercraft:bottles/try_catch

# Artisan XP: Fishing (+2 per catch)
scoreboard players set #cf_xp_amount ec.cf_temp 2
scoreboard players set #cf_xp_cat ec.cf_temp 2
function evercraft:craftforever/artisan/add_xp

# Guild Diplomacy Event: Fishing scoring
execute if score #gd_event_active ec.var matches 1 if score #gd_event_activity ec.var matches 1 if score @s ec.gd_event_active matches 1 run scoreboard players add @s ec.gd_event_score 1

# Competition: Fishing Derby+ scoring (type 6 — server-wide or H2H)
execute if score #comp_active ec.var matches 6 run function evercraft:competition/score/fish_catch
execute unless score #comp_active ec.var matches 6 if score #h2h_active ec.var matches 6 run function evercraft:competition/score/fish_catch
