## 로비에서 한 세팅 적용
data modify storage nl:settings {} merge from storage nl:lobby settings

data modify storage nl:in_game player set from storage nl:lobby settings.player 