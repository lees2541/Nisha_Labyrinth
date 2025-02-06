#> nl_char:macro/break_tool
# 도구를 깨는 함수, 오른손에 드는 도구를 감지한다.
say 빠야
execute if items entity @s hotbar.1 warped_fungus_on_a_stick[custom_data~{tool:1b}] run return run item modify entity @s hotbar.1 nl_char:items/common/tool/break_tool
execute if items entity @s hotbar.2 warped_fungus_on_a_stick[custom_data~{tool:1b}] run return run item modify entity @s hotbar.2 nl_char:items/common/tool/break_tool
execute if items entity @s hotbar.3 warped_fungus_on_a_stick[custom_data~{tool:1b}] run return run item modify entity @s hotbar.3 nl_char:items/common/tool/break_tool
execute if items entity @s hotbar.4 warped_fungus_on_a_stick[custom_data~{tool:1b}] run return run item modify entity @s hotbar.4 nl_char:items/common/tool/break_tool
execute if items entity @s hotbar.5 warped_fungus_on_a_stick[custom_data~{tool:1b}] run return run item modify entity @s hotbar.5 nl_char:items/common/tool/break_tool
execute if items entity @s hotbar.6 warped_fungus_on_a_stick[custom_data~{tool:1b}] run return run item modify entity @s hotbar.6 nl_char:items/common/tool/break_tool

#item modify entity @s weapon.mainhand nl_char:items/common/tool/break_tool
