# Dreaming Realm — Grant Dreamer's Cloak (Master Dreamer reward)
# All 3 challenges complete + all 5 lore pieces collected
# Context: as @s = dreaming/waking player

# Mark as earned (prevent duplicates)
tag @s add dr.master_dreamer

# Grant the Dreamer's Cloak — an exquisite leather chestplate
give @s leather_chestplate[custom_name={text:"Dreamer's Cloak",color:"#E8A0F0",italic:false,bold:true},lore=[{text:"Woven from the threads of dreams",color:"#D4A574",italic:true},{text:"by one who mastered the sleeping realm.",color:"#D4A574",italic:true},{text:""},{text:"Exquisite",color:"#FFD700",italic:false}],custom_data={dreamers_cloak:true},dyed_color=6832367,enchantment_glint_override=true,enchantments={protection:4,unbreaking:3}] 1

# Achievement
advancement grant @s only evercraft:dreaming_realm/master_dreamer

# Announcement
tellraw @s [{"text":"\n"},{"text":""},{"text":"✦ ","color":"gold"},{"text":"MASTER DREAMER","color":"#FFD700","bold":true},{"text":" ✦","color":"gold"},{"text":"\n"},{"text":"  "},{"text":"The Dreamer's Cloak materializes around your shoulders...","color":"#E8A0F0","italic":true},{"text":"\n"}]
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.5
particle totem_of_undying ~ ~1 ~ 1.0 1.0 1.0 0.5 80 normal @s

# Realm-wide announcement
tellraw @a [{"text":""},{"text":"✦ ","color":"gold"},{"selector":"@s","color":"white","bold":true},{"text":" has become a ","color":"#D4A574"},{"text":"Master Dreamer","color":"#FFD700","bold":true},{"text":"!","color":"#D4A574"}]
