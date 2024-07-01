#> nl_lobby:maps/cave/locations/library/set_route_point
# 경비병의 루트를 결정하는 포인트 배치


#> 배열 순서대로 그 안의 포인트를 경유한다



## 포인트 배치
kill @e[type=text_display,tag=NL,tag=library]
summon text_display 702.5 39 582.5 {view_range:0f,billboard:"center",see_through:1b,Tags:["library","point1","NL"],text:'{"text":"1구역"}'}
summon text_display 702.5 39 566.5 {view_range:0f,billboard:"center",see_through:1b,Tags:["library","point2","NL"],text:'{"text":"2구역"}'}
summon text_display 688.5 39 565.5 {view_range:0f,billboard:"center",see_through:1b,Tags:["library","point3","NL"],text:'{"text":"3구역"}'}
summon text_display 688.5 39 582.5 {view_range:0f,billboard:"center",see_through:1b,Tags:["library","point4","NL","refill"],text:'{"text":"4구역"}'}
summon text_display 692.5 35 594.5 {view_range:0f,billboard:"center",see_through:1b,Tags:["library","point5","NL"],text:'{"text":"5구역"}'}
summon text_display 695.5 34 571.5 {view_range:0f,billboard:"center",see_through:1b,Tags:["library","point6","NL"],text:'{"text":"6구역"}'}
summon text_display 702.5 34 596.5 {view_range:0f,billboard:"center",see_through:1b,Tags:["library","point7","NL"],text:'{"text":"7구역"}'}
summon text_display 701.5 39 597.5 {view_range:0f,billboard:"center",see_through:1b,Tags:["library","point8","NL"],text:'{"text":"8구역"}'}

