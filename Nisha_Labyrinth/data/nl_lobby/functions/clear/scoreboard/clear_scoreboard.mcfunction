scoreboard objectives remove NL_player_id
scoreboard objectives add NL_player_id dummy
scoreboard players set #lobby NL_player_id 0
scoreboard players set #game NL_rm_enterance 81
scoreboard objectives remove NL_mined_red
scoreboard objectives add NL_mined_red minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives remove NL_mined_life
scoreboard objectives add NL_mined_life minecraft.mined:minecraft.bone_block
scoreboard players reset @a NL_redstone_count
scoreboard players reset @a NL_lifestone_count
scoreboard players reset @a NL_chance

##스킬 관련
scoreboard players set @a NL_skill_cool1 -1
scoreboard players set @a NL_skill_cool2 -1
scoreboard players set @a NL_skill_cool3 -1


scoreboard players set @a E_efficiency 0



function nl_lobby:clear/scoreboard/clear_status_gui