# Beastlord — Alpha Howl buff check (per-wolf)
# Runs as each wolf — verify owner, then apply Strength II

# Check ownership (on owner changes @s, but next line restores wolf context)
execute on owner unless entity @s[tag=bl.owner] run return 0

# @s = wolf again — apply Strength II for 3 seconds
effect give @s strength 3 1 true
execute at @s run particle soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0.05 8
