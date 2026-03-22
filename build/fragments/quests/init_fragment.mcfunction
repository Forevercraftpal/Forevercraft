# === QUEST AUTO-TRACKER ===
scoreboard objectives add ec.quest_track trigger "Quest Tracker Toggle"
scoreboard players enable @a ec.quest_track
schedule function evercraft:quests/tracker/tick 2s
