#declare storage nl:settings map
#declare storage nl:buffer player
#declare storage nl:in_game player
#declare storage nl:lobby

## 스토리지 초기화
data remove storage nl:settings map
data remove storage nl:settings redstone
data remove storage nl:settings players
data remove storage nl:settings perk

data remove storage nl:buffer settings
data remove storage nl:buffer player
data remove storage nl:buffer entity

data remove storage nl:in_game player






## 스토리지 인터페이스 세팅

data merge storage nl:settings {\
    map:{type:""},\
    redstone:{rolls:{red:0,yellow:0,green:0,area:0}},\
    players:{player:{id:0,character:0,UUID:[],name:""}},\
    perk:{}\
}

data merge storage nl:in_game {\
    players:[\
        {id: 0,character:"", inventory:{}, status:{}, effects:{}}\
    ]\
}

## 버퍼 클리어




