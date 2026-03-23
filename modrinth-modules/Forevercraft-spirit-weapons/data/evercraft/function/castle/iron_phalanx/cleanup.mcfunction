# The Iron Phalanx — Cleanup
# Kill all associated entities when boss dies or castle ends

kill @e[tag=ic.phalanx_bearer]
kill @e[tag=ic.phalanx_spear]

# Reset scoreboards
scoreboard players reset #ic_phalanx_phase ec.var
scoreboard players reset #ic_phalanx_cd ec.var
scoreboard players reset #ic_phalanx_bearer_cd ec.var
scoreboard players reset #ic_phalanx_charge_cd ec.var
scoreboard players reset #ic_phalanx_hp ec.var
scoreboard players reset #ic_phalanx_bearers ec.var
scoreboard players reset #ic_phalanx_atk ec.var
