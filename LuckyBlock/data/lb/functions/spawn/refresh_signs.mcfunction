


# GAME CONFIG
# Phase 1
setblock 5011 101 4998 birch_wall_sign[facing=west]{front_text:{messages:['{"text":" ","clickEvent":{"action":"run_command","value":"function lb:scores/askrefresh"}}','{"text":"[+]","color":"dark_green","clickEvent":{"action":"run_command","value":"execute if score level0weight maxweightstage >= @e[name=GameManager,limit=1] 0 run scoreboard players add level0weight maxweightstage 1"}}','{"text":" ","clickEvent":{"action":"run_command","value":"execute if score level0weight maxweightstage >= @e[name=GameManager,limit=1] 0 run setblock 5011 100 4998 birch_wall_sign[facing=west]{front_text:{messages:[\'{\\"text\\":\\"**************\\"}\',\'{\\"text\\":\\"Phase 1\\",\\"color\\":\\"dark_blue\\"}\',\'{\\"score\\":{\\"name\\":\\"level0weight\\",\\"objective\\":\\"maxweightstage\\"},\\"color\\":\\"gold\\"}\',\'{\\"text\\":\\"**************\\"}\']},is_waxed:1b} destroy"}}','{"text":""}']}} destroy
setblock 5011 100 4998 birch_wall_sign[facing=west]{front_text:{messages:['{"text":"**************"}','{"text":"Phase 1","color":"dark_blue"}','{"score":{"name":"level0weight","objective":"maxweightstage"},"color":"gold"}','{"text":"**************"}']},is_waxed:1b} destroy
setblock 5011 99 4998 birch_wall_sign[facing=west]{front_text:{messages:['{"text":" ","clickEvent":{"action":"run_command","value":"function lb:scores/askrefresh"}}','{"text":"[-]","color":"dark_red","clickEvent":{"action":"run_command","value":"execute if score level0weight maxweightstage > @e[name=GameManager,limit=1] 1 run scoreboard players remove level0weight maxweightstage 1"}}','{"text":" ","clickEvent":{"action":"run_command","value":"execute if score level0weight maxweightstage >= @e[name=GameManager,limit=1] 1 run setblock 5011 100 4998 birch_wall_sign[facing=west]{front_text:{messages:[\'{\\"text\\":\\"**************\\"}\',\'{\\"text\\":\\"Phase 1\\",\\"color\\":\\"dark_blue\\"}\',\'{\\"score\\":{\\"name\\":\\"level0weight\\",\\"objective\\":\\"maxweightstage\\"},\\"color\\":\\"gold\\"}\',\'{\\"text\\":\\"**************\\"}\']},is_waxed:1b} destroy"}}','{"text":""}']}} destroy

# Phase 2
setblock 5011 101 4999 birch_wall_sign[facing=west]{front_text:{messages:['{"text":" ","clickEvent":{"action":"run_command","value":"function lb:scores/askrefresh"}}','{"text":"[+]","color":"dark_green","clickEvent":{"action":"run_command","value":"execute if score level1weight maxweightstage >= @e[name=GameManager,limit=1] 0 run scoreboard players add level1weight maxweightstage 1"}}','{"text":" ","clickEvent":{"action":"run_command","value":"execute if score level1weight maxweightstage >= @e[name=GameManager,limit=1] 0 run setblock 5011 100 4999 birch_wall_sign[facing=west]{front_text:{messages:[\'{\\"text\\":\\"**************\\"}\',\'{\\"text\\":\\"Phase 2\\",\\"color\\":\\"dark_blue\\"}\',\'{\\"score\\":{\\"name\\":\\"level1weight\\",\\"objective\\":\\"maxweightstage\\"},\\"color\\":\\"gold\\"}\',\'{\\"text\\":\\"**************\\"}\']},is_waxed:1b} destroy"}}','{"text":""}']}} destroy
setblock 5011 100 4999 birch_wall_sign[facing=west]{front_text:{messages:['{"text":"**************"}','{"text":"Phase 2","color":"dark_blue"}','{"score":{"name":"level1weight","objective":"maxweightstage"},"color":"gold"}','{"text":"**************"}']},is_waxed:1b} destroy
setblock 5011 99 4999 birch_wall_sign[facing=west]{front_text:{messages:['{"text":" ","clickEvent":{"action":"run_command","value":"function lb:scores/askrefresh"}}','{"text":"[-]","color":"dark_red","clickEvent":{"action":"run_command","value":"execute if score level1weight maxweightstage > @e[name=GameManager,limit=1] 1 run scoreboard players remove level1weight maxweightstage 1"}}','{"text":" ","clickEvent":{"action":"run_command","value":"execute if score level1weight maxweightstage >= @e[name=GameManager,limit=1] 1 run setblock 5011 100 4999 birch_wall_sign[facing=west]{front_text:{messages:[\'{\\"text\\":\\"**************\\"}\',\'{\\"text\\":\\"Phase 2\\",\\"color\\":\\"dark_blue\\"}\',\'{\\"score\\":{\\"name\\":\\"level1weight\\",\\"objective\\":\\"maxweightstage\\"},\\"color\\":\\"gold\\"}\',\'{\\"text\\":\\"**************\\"}\']},is_waxed:1b} destroy"}}','{"text":""}']}} destroy

# Phase 3
setblock 5011 101 5001 birch_wall_sign[facing=west]{front_text:{messages:['{"text":" ","clickEvent":{"action":"run_command","value":"function lb:scores/askrefresh"}}','{"text":"[+]","color":"dark_green","clickEvent":{"action":"run_command","value":"execute if score level2weight maxweightstage >= @e[name=GameManager,limit=1] 0 run scoreboard players add level2weight maxweightstage 1"}}','{"text":" ","clickEvent":{"action":"run_command","value":"execute if score level2weight maxweightstage >= @e[name=GameManager,limit=1] 0 run setblock 5011 100 5001 birch_wall_sign[facing=west]{front_text:{messages:[\'{\\"text\\":\\"**************\\"}\',\'{\\"text\\":\\"Phase 3\\",\\"color\\":\\"dark_blue\\"}\',\'{\\"score\\":{\\"name\\":\\"level2weight\\",\\"objective\\":\\"maxweightstage\\"},\\"color\\":\\"gold\\"}\',\'{\\"text\\":\\"**************\\"}\']},is_waxed:1b} destroy"}}','{"text":""}']}} destroy
setblock 5011 100 5001 birch_wall_sign[facing=west]{front_text:{messages:['{"text":"**************"}','{"text":"Phase 3","color":"dark_blue"}','{"score":{"name":"level2weight","objective":"maxweightstage"},"color":"gold"}','{"text":"**************"}']},is_waxed:1b} destroy
setblock 5011 99 5001 birch_wall_sign[facing=west]{front_text:{messages:['{"text":" ","clickEvent":{"action":"run_command","value":"function lb:scores/askrefresh"}}','{"text":"[-]","color":"dark_red","clickEvent":{"action":"run_command","value":"execute if score level2weight maxweightstage > @e[name=GameManager,limit=1] 1 run scoreboard players remove level2weight maxweightstage 1"}}','{"text":" ","clickEvent":{"action":"run_command","value":"execute if score level2weight maxweightstage >= @e[name=GameManager,limit=1] 1 run setblock 5011 100 5001 birch_wall_sign[facing=west]{front_text:{messages:[\'{\\"text\\":\\"**************\\"}\',\'{\\"text\\":\\"Phase 3\\",\\"color\\":\\"dark_blue\\"}\',\'{\\"score\\":{\\"name\\":\\"level2weight\\",\\"objective\\":\\"maxweightstage\\"},\\"color\\":\\"gold\\"}\',\'{\\"text\\":\\"**************\\"}\']},is_waxed:1b} destroy"}}','{"text":""}']}} destroy

# Phase 4
setblock 5011 101 5002 birch_wall_sign[facing=west]{front_text:{messages:['{"text":" ","clickEvent":{"action":"run_command","value":"function lb:scores/askrefresh"}}','{"text":"[+]","color":"dark_green","clickEvent":{"action":"run_command","value":"execute if score level3weight maxweightstage >= @e[name=GameManager,limit=1] 0 run scoreboard players add level3weight maxweightstage 1"}}','{"text":" ","clickEvent":{"action":"run_command","value":"execute if score level3weight maxweightstage >= @e[name=GameManager,limit=1] 0 run setblock 5011 100 5002 birch_wall_sign[facing=west]{front_text:{messages:[\'{\\"text\\":\\"**************\\"}\',\'{\\"text\\":\\"Phase 4\\",\\"color\\":\\"dark_blue\\"}\',\'{\\"score\\":{\\"name\\":\\"level3weight\\",\\"objective\\":\\"maxweightstage\\"},\\"color\\":\\"gold\\"}\',\'{\\"text\\":\\"**************\\"}\']},is_waxed:1b} destroy"}}','{"text":""}']}} destroy
setblock 5011 100 5002 birch_wall_sign[facing=west]{front_text:{messages:['{"text":"**************"}','{"text":"Phase 4","color":"dark_blue"}','{"score":{"name":"level3weight","objective":"maxweightstage"},"color":"gold"}','{"text":"**************"}']},is_waxed:1b} destroy
setblock 5011 99 5002 birch_wall_sign[facing=west]{front_text:{messages:['{"text":" ","clickEvent":{"action":"run_command","value":"function lb:scores/askrefresh"}}','{"text":"[-]","color":"dark_red","clickEvent":{"action":"run_command","value":"execute if score level3weight maxweightstage > @e[name=GameManager,limit=1] 1 run scoreboard players remove level3weight maxweightstage 1"}}','{"text":" ","clickEvent":{"action":"run_command","value":"execute if score level3weight maxweightstage >= @e[name=GameManager,limit=1] 1 run setblock 5011 100 5002 birch_wall_sign[facing=west]{front_text:{messages:[\'{\\"text\\":\\"**************\\"}\',\'{\\"text\\":\\"Phase 4\\",\\"color\\":\\"dark_blue\\"}\',\'{\\"score\\":{\\"name\\":\\"level3weight\\",\\"objective\\":\\"maxweightstage\\"},\\"color\\":\\"gold\\"}\',\'{\\"text\\":\\"**************\\"}\']},is_waxed:1b} destroy"}}','{"text":""}']}} destroy


# Start Game
setblock 5000 100 5013 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"**************"}','{"text":"Start","color":"dark_green"}','{"text":""}','{"text":"**************","clickEvent":{"action":"run_command","value":"function lb:startgame"}}']},is_waxed:1b} destroy

# Reset Scores
# setblock ~ ~ ~ oak_wall_sign[facing=east]{front_text:{messages:['{"text":" ","clickEvent":{"action":"run_command","value":"title @a title {\\"text\\":\\"Scores deleted\\",\\"color\\":\\"dark_red\\",\\"bold\\":true}"}}','{"text":"Are you sure?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"kill @e[tag=finalscore]"}}','{"text":" ","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_signs"}}','{"text":""}']}} destroy
setblock 5013 100 5000 oak_wall_sign[facing=east]{front_text:{messages:['{"text":""}','{"text":"Delete all scores?","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"setblock ~ ~ ~ oak_wall_sign[facing=east]{front_text:{messages:[\'{\\"text\\":\\" \\",\\"clickEvent\\":{\\"action\\":\\"run_command\\",\\"value\\":\\"title @a title {\\\\\\\\\\"text\\\\\\\\\\":\\\\\\\\\\"Scores deleted\\\\\\\\\\",\\\\\\\\\\"color\\\\\\\\\\":\\\\\\\\\\"dark_red\\\\\\\\\\",\\\\\\\\\\"bold\\\\\\\\\\":true}\\"}}\',\'{\\"text\\":\\"Are you sure?\\",\\"color\\":\\"dark_red\\",\\"bold\\":true,\\"clickEvent\\":{\\"action\\":\\"run_command\\",\\"value\\":\\"kill @e[tag=finalscore]\\"}}\',\'{\\"text\\":\\" \\",\\"clickEvent\\":{\\"action\\":\\"run_command\\",\\"value\\":\\"function lb:spawn/refresh_signs\\"}}\',\'{\\"text\\":\\"\\"}\']}} destroy"}}','{"text":""}','{"text":""}']}} destroy