#> nl_char:jobs/roamer/hunter/set_stats
# 데이터팩이 로드될 때 실행되는 함수


#> 기본 이미지(우측 gui)
data modify storage nl:image_code player.hunter.font.icon1 set value "uE211"
#> 맞았을 때 이미지 (우측 gui)
data modify storage nl:image_code player.hunter.font.icon2 set value "uE212"
#> 스턴됐을 떄 이미지 (우측 gui)
data modify storage nl:image_code player.hunter.font.icon3 set value "uE213"




data modify storage nl:book.hunter player.character.hunter set value 1b
data modify storage nl:book.hunter player.custom_model_data.tool1 set value 1
data modify storage nl:book.hunter player.custom_model_data.tool2 set value 2
data modify storage nl:book.hunter player.custom_model_data.tool3 set value 3

data modify storage nl:book.hunter player.character.hunter set value 1b
data modify storage nl:book.hunter player.strings.name.perk1 set value "사냥꾼의 징표"
data modify storage nl:book.hunter player.strings.lore.perk1 set value {"text":"[집요함]","type":"text","extra":["\n","늑대가 강화되고 기본공격으로 표식을 부여할 수 있습니다."],"color":"white","font":"minecraft:default"}

data modify storage nl:book.hunter player.strings.name.perk2 set value "연마된 흑철파편"
data modify storage nl:book.hunter player.strings.lore.perk2 set value {"text":"[덫 개조]","type":"text","extra":["\n","덫이 강화됩니다."],"color":"white","font":"minecraft:default"}