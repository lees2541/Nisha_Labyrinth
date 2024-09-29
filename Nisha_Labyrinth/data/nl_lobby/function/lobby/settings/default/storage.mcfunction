## 레드스톤 자동 생성기 분포정도 설정

data modify storage nl:default settings.redstone.rolls set value {red:2,yellow:2,green:2,area:3}
data modify storage nl:default settings.manastone.rolls set value {red:1,yellow:1,green:1,area:1}
## 맵 종류 기본 설정
data modify storage nl:default settings.map set value {type:cave}
## 오염된 늪 최대 개수 설정
data modify storage nl:default settings.swamp.tainted.max set value 3
## 제단 게이지 설정
data modify storage nl:default settings.altar.gauge.max set value 12000
data modify storage nl:default settings.altar.gauge.speed set value 10
## 도서관 알람 게이지 최대치 설정
data modify storage nl:default settings.location.library.gauge.max set value 1000

