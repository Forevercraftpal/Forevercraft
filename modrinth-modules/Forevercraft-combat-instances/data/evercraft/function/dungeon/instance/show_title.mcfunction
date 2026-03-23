# Dungeon Instances — Show title with instance name (macro)
title @a[tag=dg.player] times 5 40 10
$title @a[tag=dg.player] title {text:"$(name)",color:"dark_purple",bold:true}
$title @a[tag=dg.player] subtitle {text:"$(subtitle)",color:"light_purple"}
