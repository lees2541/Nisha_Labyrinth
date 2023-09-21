## 로비에서 한 세팅 적용 (nl:lobby.settings -> nl:settings)
function nl_lobby:lobby/settings/apply_setting

## 플레이어 캐릭터 및 퍽 설정 로딩

## 맵 종류에 따라 맵 불러오기
execute if data storage nl_settings map{type:"cave"} run function nl_lobby:lobby/settings/maps/select_cave



## nl:settings에서 불러온 레드스톤을 맵에 적용
function nl_lobby:modules/redstone_generator/redstone_generator_start