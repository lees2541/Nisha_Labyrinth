item replace entity @s hotbar.8 with written_book{pages:["[\"\",{\"text\":\"[게임시작]\",\"bold\":true,\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function nl_lobby:lobby/game_start\"}},\"\\n\",{\"text\":\"<레드스톤 지급> \",\"bold\":true,\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"\"}},{\"text\":\"<↑> \",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function #nl_system:calc_resource {resource:redstone,operator:add,operand:1}\"}},{\"text\":\"<↓>   \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function #nl_system:calc_resource {resource:redstone,operator:remove,operand:1}\"}},\"\\n\",{\"text\":\"<생명석 지급> \",\"bold\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"\"}},{\"text\":\"<↑> \",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function #nl_system:calc_resource {resource:lifestone,operator:add,operand:1}\"}},{\"text\":\"<↓>   \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function #nl_system:calc_resource {resource:lifestone,operator:remove,operand:1}\"}},\"\\n\",{\"text\":\"<체력회복>\",\"bold\":true,\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/effect give @s minecraft:instant_health 1 100\"}},\"\\n\",{\"text\":\"<포만감 버프>\",\"bold\":true,\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/effect give @s minecraft:saturation 1 105\"}},\"\\n\",\"\\n\",\"\\n\",{\"text\":\"[게임리셋]\",\"bold\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function nl_lobby:lobby/game_reset\"}}]","[\"\",{\"text\":\"생존가\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function nl_lobby:lobby/jobs/choose_job {character:survivor,team:explorer}\"}},\"\\n\",{\"text\":\"주술사\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function nl_lobby:lobby/jobs/choose_job {character:magician,team:explorer}\"}},\"\\n\",{\"text\":\"검객\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function nl_lobby:lobby/jobs/choose_job {character:swordsman,team:explorer}\"}},\"\\n\",{\"text\":\"맹인\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function nl_lobby:lobby/jobs/choose_job {character:blind,team:explorer}\"}}]"],title:"니샤라비린스",author:Player}