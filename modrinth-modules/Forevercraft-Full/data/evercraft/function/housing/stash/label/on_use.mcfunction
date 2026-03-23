# ============================================================
# Stash Label — Consumed (advancement reward)
# Run as: player who consumed the label
# Delay restore + processing by 1 tick (consume_item fires before item removal)
# ============================================================
advancement revoke @s only evercraft:housing/use_stash_label
tag @s add HS.Labeling
