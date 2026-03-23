# Cooking Preservation — Handle death with preserve counter
# Called from tick.mcfunction when player dies with ec.ck_preserve >= 1
# Tags player for respawn restoration

# Decrement preserve counter
scoreboard players remove @s ec.ck_preserve 1

# Tag for respawn restoration (effects will be re-applied next tick when alive)
tag @s add CK.PreserveRestore

# Feedback (shown on respawn)
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your preserved meal endures beyond death!",color:"aqua"}]
