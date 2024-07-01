
## 로비에서 한 세팅 적용 (nl:lobby.settings -> nl:settings)
function nl_lobby:lobby/settings/apply_setting
data modify storage nl:in_game status.ongoing set value 2

## 플레이어 캐릭터 설정 및 퍽 설정 로딩
execute as @a[tag=NL,scores={NL_player_id=1..}] run advancement grant @s only nl_system:modules/hotbar_holder/base/inventory_changed_detection


## 맵 종류에 따라 맵 불러오기
execute if data storage nl:settings map{type:"cave"} run function nl_lobby:lobby/settings/maps/select_cave


tellraw @a [{"text":"\"","color":"blue"},{"nbt":"map.type","storage":"nl:settings","color":"green","bold":true},{"text":"\"","color":"blue"},{"text":" 맵에서 시작합니다","color":"white"},{"text":"\n"},{"selector":"@a[tag=NL]","separator":" "},{"text":"\n"},{"text":"게임이 시작됩니다","color":"white","bold":true}]
execute at @e[type=marker,tag=marker,tag=NL,tag=shop,limit=1] run loot replace block ~ ~ ~ container.0 loot nl_system:chests/shop/drawing
## 게임 시스템 설정
function nl_lobby:lobby/settings/systems/set_altar_system
function nl_lobby:lobby/settings/systems/set_lib_system
## 플레이어 상태 및 설정 리셋
effect clear @a
function nl_lobby:clear/clear_players
tp @a[team=explorer] 691 50 577.5 -90 0
scoreboard players set #game NL_rm_enterance 81
function nl_system:loop/countdown/rm_enterance
## nl:settings에서 불러온 레드스톤을 맵에 적용
function nl_lobby:modules/redstone_generator/redstone_generator_start

data modify storage nl:in_game status.ongoing set value 1