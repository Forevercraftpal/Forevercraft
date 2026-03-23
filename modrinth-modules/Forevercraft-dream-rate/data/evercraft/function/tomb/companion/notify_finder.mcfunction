# Tomb System — Notify Finder of Reward (macro)
# @s = finder
# $(delivery_xp) = XP levels awarded

$tellraw @s [{"text":"\n"},{"text":"⚔ ","color":"gold"},{"text":"You have returned a fallen soul. +","color":"gold"},{"text":"$(delivery_xp)","color":"green"},{"text":" levels as gratitude.","color":"gold"},{"text":"\n"}]
