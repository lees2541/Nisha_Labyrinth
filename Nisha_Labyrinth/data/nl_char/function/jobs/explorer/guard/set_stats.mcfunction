#> nl_char:jobs/explorer/guard/set_stats
# 게임 시작 전 기본 캐릭터 정보데이터
# 

#> 기본 이미지(우측 gui)
data modify storage nl:image_code player.guard.font.icon1 set value "uE181"
#> 맞았을 때 이미지 (우측 gui)
data modify storage nl:image_code player.guard.font.icon2 set value "uE182"
#> 스턴됐을 떄 이미지 (우측 gui)
data modify storage nl:image_code player.guard.font.icon3 set value "uE183"
#> 제물이 됐을 때 이미지 (우측 gui)
data modify storage nl:image_code player.guard.font.icon4 set value "uE184"
#> 수감자가 됐을 때 이미지(우측 gui)
data modify storage nl:image_code player.guard.font.icon5 set value "uE185"
#> 스킬 이미지
data modify storage nl:image_code player.guard.font.buff_slot.skill1_1 set value "uE491"
data modify storage nl:image_code player.guard.font.buff_slot.skill1_2 set value "uE492"



#> 책에 저장될 정보
data modify storage nl:book.guard player.character.guard set value 1b
data modify storage nl:book.guard player.custom_model_data.tool1 set value 1
data modify storage nl:book.guard player.custom_model_data.tool2 set value 2
data modify storage nl:book.guard player.custom_model_data.tool3 set value 3
data modify storage nl:book.guard player.custom_model_data.book1 set value 0
data modify storage nl:book.guard player.custom_model_data.book2 set value 1
data modify storage nl:book.guard player.custom_model_data.book3 set value 2


#> 스킬 관련 수치
# 완소식량 퍽에서 음식이 나올떄의 제한시간(초)
data modify storage nl:guard perk2.timer set value 90