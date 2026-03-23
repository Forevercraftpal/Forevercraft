# Spirit Raids — Generic Phase Transition
# Called as the boss entity, at the boss position
# Advances phase, applies brief invulnerability, and routes to boss-specific transition

# Advance phase
scoreboard players add #rd_boss_phase ec.var 1

# Lock phase transitions for 60 ticks (3 seconds of invulnerability + VFX)
scoreboard players set #rd_phase_lock ec.var 60

# Brief invulnerability during transition
effect give @s resistance 3 4 true

# Dramatic VFX
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 10
particle minecraft:witch ~ ~1 ~ 1 1 1 0.5 30
particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 50
playsound minecraft:entity.wither.hurt master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.5
playsound minecraft:entity.ender_dragon.growl master @a[tag=ec.rd_participant] ~ ~ ~ 0.8 1.2

# Announce
execute if score #rd_boss_phase ec.var matches 2 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The boss enters Phase 2!",color:"gold",bold:true}]
execute if score #rd_boss_phase ec.var matches 3 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The boss enters its FINAL PHASE!",color:"dark_red",bold:true}]

# Route to boss-specific transition logic
execute if score #rd_boss_id ec.var matches 1 run function evercraft:raids/boss/hollow_sovereign/phase/on_transition
execute if score #rd_boss_id ec.var matches 2 run function evercraft:raids/boss/void_architect/phase/on_transition
execute if score #rd_boss_id ec.var matches 3 run function evercraft:raids/boss/gilded_tyrant/phase/on_transition
execute if score #rd_boss_id ec.var matches 4 run function evercraft:raids/boss/arbiter/phase/on_transition
execute if score #rd_boss_id ec.var matches 5 run function evercraft:raids/boss/gatekeeper/phase/on_transition
execute if score #rd_boss_id ec.var matches 6 run function evercraft:raids/boss/grand_illusionist/phase/on_transition
execute if score #rd_boss_id ec.var matches 7 run function evercraft:raids/boss/ashen_lord/phase/on_transition
execute if score #rd_boss_id ec.var matches 8 run function evercraft:raids/boss/leviathan/phase/on_transition
execute if score #rd_boss_id ec.var matches 9 run function evercraft:raids/boss/eternal_pharaoh/phase/on_transition
execute if score #rd_boss_id ec.var matches 10 run function evercraft:raids/boss/venomweaver/phase/on_transition
execute if score #rd_boss_id ec.var matches 11 run function evercraft:raids/boss/deepcrawler/phase/on_transition
execute if score #rd_boss_id ec.var matches 12 run function evercraft:raids/boss/mossheart_warden/phase/on_transition
execute if score #rd_boss_id ec.var matches 13 run function evercraft:raids/boss/crimson_bulwark/phase/on_transition

# Schedule phase lock release
schedule function evercraft:raids/boss/unlock_phase 60t
