# World Boss — RAGE (10% HP enrage)
# Called as boss entity. One-time trigger within Phase 4.
# Boss goes berserk — massive stat spike, visual frenzy, no heal.

# Mark as enraged (prevents re-triggering)
tag @s add wb.enraged

# Rage attribute buffs (stacks on top of P4): +3 armor, +25% speed, +75% damage
attribute @s armor modifier add evercraft:boss/rage 3 add_value
attribute @s movement_speed modifier add evercraft:boss/rage 0.25 add_multiplied_base
attribute @s attack_damage modifier add evercraft:boss/rage 0.75 add_multiplied_base

# Rage VFX — screen-shaking intensity
particle minecraft:explosion ~ ~1 ~ 2 2 2 1.0 40
particle minecraft:soul_fire_flame ~ ~2 ~ 2 3 2 0.15 80
particle minecraft:dragon_breath ~ ~1 ~ 1.5 1.5 1.5 0.2 60
particle minecraft:angry_villager ~ ~2 ~ 1 1 1 0.5 20
playsound minecraft:entity.warden.roar master @a ~ ~ ~ 2.0 0.3
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 2.0 0.3
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2.0 0.4

# Change bossbar to red to signal rage
bossbar set evercraft:world_boss color red

# Boss glows red (already Glowing, but visual emphasis via particles)
effect give @s strength 999999 1 true

# Announce rage (boss name + seasonal flavor)
function evercraft:bosses/phase/announce_rage with storage evercraft:bosses active
