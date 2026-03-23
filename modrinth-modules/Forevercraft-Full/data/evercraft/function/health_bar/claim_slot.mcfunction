# RPG Health Bar — Claim Slot (Macro)
# Args: $(slot) = slot number to claim
# Context: as joining player

$scoreboard players set @s hb.slot $(slot)
$scoreboard players set #hb_slot_$(slot) hb.slot 1
scoreboard players set @s hb.enabled 1
scoreboard players set @s hb.linger 0

# Assign this player to the boss bar
$bossbar set evercraft:hb_$(slot) players @s
$bossbar set evercraft:hb_$(slot) visible false
