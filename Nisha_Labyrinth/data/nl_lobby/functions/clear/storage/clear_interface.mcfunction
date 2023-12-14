#declare storage nl:settings map
#declare storage nl:buffer player
#declare storage nl:in_game player
#declare storage nl:lobby

say 초기화
## 스토리지 초기화
data remove storage nl:settings map
data remove storage nl:settings redstone
data remove storage nl:settings players
data remove storage nl:settings perk

data remove storage nl:buffer settings
data remove storage nl:buffer player
data remove storage nl:buffer entity
data remove storage nl:buffer operation
data remove storage nl:buffer item

data remove storage nl:in_game player






## 스토리지 인터페이스 세팅

data merge storage nl:settings {\
    map:{type:""},\
    redstone:{rolls:{red:0,yellow:0,green:0,area:0}},\
    players:{player:{id:0,character:0,UUID:[],name:""}},\
    perk:{}\
}

data merge storage nl:in_game {\
    player:[\
        {id:0,character:"(str)", Inventory:{}, status:{resource:{redstone:0,lifestone:0}}, effects:{}}\
    ]\
}


data merge storage nl:buffer {\
    settings:{\
        player:{id:"(int)",character:"(string)",team:"(string)",UUID:[]},\
        rolls:"(int)"\
    },\
    player:{\
        id:"(int)",\
        selectedSlot:"(int)",\
        item:{switch:{id:"(str)",slot:"(int|str)",stack:"(int)",nbt:{tag:{},Slot:"(byte)",Count:"(int)"}}},\
        inventory:{},\
        status:{},\
        team:"(str)"\
    },\
    entity:{},\
    operation:{\
        id:"(int)",\
        item:"(str)",\
        operator:"(str)",\
        operand:"(int)",\
        result:"(int)"\    
    },\
    item:{CustomModelData:"(int)"}\
}
## 버퍼 클리어



