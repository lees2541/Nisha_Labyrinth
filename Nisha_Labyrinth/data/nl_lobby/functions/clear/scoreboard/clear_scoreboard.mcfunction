scoreboard objectives remove NL_player_id
scoreboard objectives add NL_player_id dummy
scoreboard players set #lobby NL_player_id 0
scoreboard players set #game NL_rm_enterance 81

function nl_lobby:clear/scoreboard/clear_status_gui