#declare storage nl:settings 게임시작 전 맵 또는 게임설정등을 정한다
#declare storage nl:buffer 계산 혹은 데이터 로드를 위한 임시 버퍼
#declare storage nl:in_game 인 게임의 데이터를 저장
#declare storage nl:lobby 로비에서 조작할 수 있는 설정들, 게임 시작 시 nl:settings에 들어간다
#declare storage nl:default 게임의 기본설정, 게임 초기화 시 이 저장소의 내용이 로비로 병합된다
#declare storage nl:image_code 이미지 폰트 및 커스텀 모델 데이터 값을 저장한다
#declare storage nl:status_data 상태이상(포괄적인 이름, 스턴 같은거)가 함유하는 실질적인 mob effect와 수치를 저장 
say 스토리지 초기화
## 스토리지 초기화
data remove storage nl:settings map
data remove storage nl:settings redstone
data remove storage nl:settings players
data remove storage nl:settings perk
data remove storage nl:settings altar
data remove storage nl:settings swamp
data remove storage nl:settings etc

data remove storage nl:buffer settings
data remove storage nl:buffer player
data remove storage nl:buffer entity
data remove storage nl:buffer operation
data remove storage nl:buffer item
data remove storage nl:buffer position
data remove storage nl:buffer status

data remove storage nl:in_game player
data remove storage nl:in_game status
data remove storage nl:in_game records

data remove storage nl:inven player




## 스토리지 인터페이스 세팅

data merge storage nl:settings {\
    map:{type:""},\
    redstone:{rolls:{red:0,yellow:0,green:0,area:0}},\
    players:{player:{id:0,character:0,UUID:[],name:""}},\
    perk:{},\
    altar:{gauge:{max:0,speed:0}},\
    etc:{earlydeath:0}\
}
data remove storage nl:settings players


data merge storage nl:in_game {\
    player:[\
        {id:1,character:"(str)", status:{resource:{redstone:0,lifestone:0},status:{},effects:{}}}\
    ],\
    status:{\
        ongoing:0,altar:{mode:0,speed:"(float)"},location:{main:{},library:{alarm:0,opened:0b}},\
        status:[{type:"(str)",tag:"(str)",time:"(int)"}],\
    },\
    records:{\
        player:[{ex:"플레이어별 스킬, 각종 상호작용 횟수"}],\
        explorer:{\
            mined:{redstone:"(int)",lifestone:"(int)"}\
        },\
        roamer:{\
            mined:{lifestone:"(int)"}\
        }\
    },\
    icons{\
            lf_slot:[{}],\
            buff_slot:[{}],\
            debuff_slot[{}],\
        }\
}
data remove storage nl:in_game player




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
    item:{CustomModelData:"(int)"},\
    position:{X:"(double)",Y:"(double)",Z:"(double)"}\
}
## 버퍼 클리어


return 1
