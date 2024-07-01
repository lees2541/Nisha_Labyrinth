#> nl_lobby:lobby/settings/apply_setting
# 로비에서 한 세팅 적용:
#   -참가 플레이어 기본 정보
#   -선택한 맵, 선택한 레드스톤 개수 및 비율 등
#@private
#@within nl_lobby:lobby/game_start

data modify storage nl:settings {} merge from storage nl:lobby settings

data modify storage nl:in_game player set from storage nl:lobby settings.player


