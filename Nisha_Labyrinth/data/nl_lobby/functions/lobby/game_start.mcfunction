## 로비에서 한 세팅 적용 (nl:lobby.settings -> nl:settings)
function nl_lobby:lobby/settings/apply_setting

## 플레이어 캐릭터 및 퍽 설정 로딩
execute as @a[tag=NL,scores={NL_player_id=1..}] run advancement grant @s only nl_system:modules/hotbar_holder/base/inventory_changed_detection


## 맵 종류에 따라 맵 불러오기
execute if data storage nl_settings map{type:"cave"} run function nl_lobby:lobby/settings/maps/select_cave


tellraw @a [{"text":"\"","color":"blue"},{"nbt":"map.type","storage":"nl:settings","color":"green","bold":true},{"text":"\"","color":"blue"},{"text":" 맵에서 시작합니다","color":"white"},{"text":"\n"},{"selector":"@a[tag=NL]","separator":" "},{"text":"\n"},{"text":"게임이 시작됩니다","color":"white","bold":true}]
## nl:settings에서 불러온 레드스톤을 맵에 적용
function nl_lobby:modules/redstone_generator/redstone_generator_start