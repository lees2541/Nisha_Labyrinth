function nl_system:modules/storage/load_to_buffer/player_info/load_player_info


function nl_lobby:clear/indiv_reset_character with storage nl:buffer player






## 공통
execute as @s run function nl_char:status/reset_common
tag @s remove NL
tag @s remove explorer
tag @s remove roamer
clear @s