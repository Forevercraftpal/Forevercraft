# Soul Lantern Fragment — XP Boost
# 10% chance per second to spawn bonus XP orbs at player
execute store result score @s ec.artifact_roll run random value 1..10
execute if score @s ec.artifact_roll matches 1 at @s run summon experience_orb ~ ~1 ~ {Value:5}
