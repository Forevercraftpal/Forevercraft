# ============================================================
# House Key — Consumed (advancement reward)
# Run as: player who consumed the key
# Delay restore + processing by 1 tick (consume_item fires before item removal)
# ============================================================
advancement revoke @s only evercraft:housing/use_house_key
tag @s add HS.SatchelRestore
