# === CHECK ONE LORE SET COMPLETION ===
# Args: {id:"s1", score:"ec.ls_1", th:6}
# Increments @s ec.claim_lore if set complete and unclaimed

$execute if score @s $(score) matches $(th).. unless entity @s[advancements={evercraft:claim/lore/$(id)_1=true}] run scoreboard players add @s ec.claim_lore 1
