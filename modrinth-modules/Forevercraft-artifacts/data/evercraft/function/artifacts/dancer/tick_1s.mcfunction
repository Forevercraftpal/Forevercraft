# Dancer — 1-Second Tick (cooldown management)

# Decrement cooldown for all dancers
scoreboard players remove @a[scores={ec.dn_cd=1..}] ec.dn_cd 1

# Cooldown expired notification (set to -1 to prevent repeat)
execute as @a[tag=ec.dn_active,scores={ec.dn_cd=0,ec.dn_dual=1}] run title @s actionbar {"text":"Flurry ready!","color":"light_purple"}
execute as @a[scores={ec.dn_cd=0}] run scoreboard players set @s ec.dn_cd -1

# Reschedule
schedule function evercraft:artifacts/dancer/tick_1s 1s
