## 스토리지 초기화
data remove storage nl:settings map
data remove storage nl:settings redstone
data remove storage nl:settings players
data remove storage nl:settings perk

data remove storage nl:buffer settings




## 스토리지 인터페이스 세팅

data merge storage nl:settings {\
    map:{},\
    redstone:{},\
    players:{},\
    perk:{}\
}

## 버퍼 클리어




