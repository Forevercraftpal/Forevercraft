# The Eternal Pharaoh — Phase 1: The Curse Bearer (100%-66% HP)
# - Curses random player every 300 ticks (15 seconds)
# - Summons 2 husk mummies every 400 ticks (20 seconds)

# ── Curse Application (every 15 seconds) ──
execute if score #rd_ep_curse_cd ec.var matches 0 run function evercraft:raids/boss/eternal_pharaoh/abilities/apply_curse
execute if score #rd_ep_curse_cd ec.var matches 0 run scoreboard players set #rd_ep_curse_cd ec.var 300

# ── Mummy Summon (every 20 seconds) ──
execute store result score #rd_temp ec.var run time query gametime
scoreboard players operation #rd_temp ec.var %= #400 adv.temp
execute if score #rd_temp ec.var matches 0 run function evercraft:raids/boss/eternal_pharaoh/abilities/summon_mummies
