execute at @e[tag=NL,tag=lock,type=item_display] run particle minecraft:squid_ink ~ ~ ~ 3 3 3 0.32 200
kill @e[tag=lock,type=item_display,tag=NL]
fill 712 48 573 709 51 573 minecraft:air destroy
