#> nl_char:jobs/explorer/magician/set_stats
# 주술사의 스탯을 설정하는 함수
# 

#> 기본 이미지(우측 gui)
data modify storage nl:image_code player.magician.font.icon1 set value "uE121"

#> 맞았을 떄 이미지(우측 gui)
data modify storage nl:image_code player.magician.font.icon2 set value "uE122"

#> 스턴됐을 떄 이미지 (우측 gui)
data modify storage nl:image_code player.magician.font.icon3 set value "uE123"
#> 제물이 됐을 때 이미지 (우측 gui)
data modify storage nl:image_code player.magician.font.icon4 set value "uE124"
#> 수감자가 됐을 때 이미지(우측 gui)
data modify storage nl:image_code player.magician.font.icon5 set value "uE125"
#> 스킬 이미지
data modify storage nl:image_code player.magician.font.buff_slot.skill1_1 set value "uE612"
data modify storage nl:image_code player.magician.font.buff_slot.skill1_2 set value "uE611"
data modify storage nl:image_code player.magician.font.buff_slot.skill2_1 set value "uE611"
data modify storage nl:image_code player.magician.font.buff_slot.skill2_2 set value "uE612"






#> 책에 저장될 정보
data modify storage nl:book.magician player.character.magician set value 1b
data modify storage nl:book.magician player.custom_model_data.tool1 set value 1
data modify storage nl:book.magician player.custom_model_data.tool2 set value 2
data modify storage nl:book.magician player.custom_model_data.tool3 set value 3
data modify storage nl:book.magician player.custom_model_data.book1 set value 102001
data modify storage nl:book.magician player.custom_model_data.book2 set value 3002001
data modify storage nl:book.magician player.custom_model_data.book3 set value 3002002




# 
