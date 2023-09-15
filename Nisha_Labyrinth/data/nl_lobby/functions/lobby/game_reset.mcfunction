
kill @e[type=marker,tag=NL]
kill @e[type=item_display,tag=NL]
kill @e[type=text_display,tag=NL]
kill @e[type=block_display,tag=NL]


function nl_system:init/storage/clear_interface
data modify storage nl:lobby settings set from storage nl:default settings

## test
kill @e[tag=spread]