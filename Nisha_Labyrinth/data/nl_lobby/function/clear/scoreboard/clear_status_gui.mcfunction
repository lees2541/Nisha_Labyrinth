

#> GUI 외형 초기화
scoreboard objectives remove NL_status_gui
scoreboard objectives add NL_status_gui dummy
scoreboard objectives modify NL_status_gui displayautoupdate true
scoreboard players set player1 NL_status_gui 1
scoreboard players set player1_1 NL_status_gui 2
scoreboard players set player1_2 NL_status_gui 3
scoreboard players display numberformat player1 NL_status_gui fixed "-"
scoreboard players display numberformat player1_1 NL_status_gui fixed ""
scoreboard players display numberformat player1_2 NL_status_gui fixed ""
scoreboard players display name player1 NL_status_gui "<탐험가1>"
scoreboard players display name player1_1 NL_status_gui ""
scoreboard players display name player1_2 NL_status_gui ""

scoreboard players set player2 NL_status_gui 4
scoreboard players set player2_1 NL_status_gui 5
scoreboard players set player2_2 NL_status_gui 6
scoreboard players display numberformat player2 NL_status_gui fixed "-"
scoreboard players display numberformat player2_1 NL_status_gui fixed ""
scoreboard players display numberformat player2_2 NL_status_gui fixed ""
scoreboard players display name player2 NL_status_gui "<탐험가2>"
scoreboard players display name player2_1 NL_status_gui ""
scoreboard players display name player2_2 NL_status_gui ""

scoreboard players set player3 NL_status_gui 7
scoreboard players set player3_1 NL_status_gui 8
scoreboard players set player3_2 NL_status_gui 9
scoreboard players display numberformat player3 NL_status_gui fixed "-"
scoreboard players display numberformat player3_1 NL_status_gui fixed ""
scoreboard players display numberformat player3_2 NL_status_gui fixed ""
scoreboard players display name player3 NL_status_gui "<탐험가3>"
scoreboard players display name player3_1 NL_status_gui ""
scoreboard players display name player3_2 NL_status_gui ""

## 배회자용
scoreboard players set playerR_1 NL_status_gui 10
scoreboard players set playerR_2 NL_status_gui 11


scoreboard players display numberformat playerR_1 NL_status_gui fixed ""
scoreboard players display numberformat playerR_2 NL_status_gui fixed ""

scoreboard players display name playerR_1 NL_status_gui ""
scoreboard players display name playerR_2 NL_status_gui ""

scoreboard objectives setdisplay sidebar NL_status_gui