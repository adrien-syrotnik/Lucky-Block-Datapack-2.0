


# GAME CONFIG
# Phases
setblock 5011 101 5000 birch_wall_sign[facing=west]{front_text:{messages:['{"text":""}','{"text":"[+]","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"function lb:spawn/add_weight"}}','{"text":""}','{"text":""}']}} destroy
setblock 5011 100 5000 birch_wall_sign[facing=west]{front_text:{messages:['{"text":"Lucky Blocks","color":"dark_blue","bold":true}','{"text":"/ Phases","color":"dark_blue","bold":true}','{"score":{"name":"level1weight","objective":"maxweightstage"},"color":"gold"}','{"text":""}']},is_waxed:1b} destroy
setblock 5011 99 5000 birch_wall_sign[facing=west]{front_text:{messages:['{"text":""}','{"text":"[-]","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"function lb:spawn/remove_weight"}}','{"text":""}','{"text":""}']}} destroy

#configuration game -> enable passive games
function lb:spawn/refresh_passive_sign
#change platform types
function lb:spawn/refresh_platform_type

# Start Game (Relaced by the bell)
# setblock 5000 100 5013 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"**************"}','{"text":"Start","color":"dark_green"}','{"text":""}','{"text":"**************","clickEvent":{"action":"run_command","value":"function lb:startgame"}}']},is_waxed:1b} destroy

# Reset Scores
# setblock ~ ~ ~ oak_wall_sign[facing=east]{front_text:{messages:['{"text":" ","clickEvent":{"action":"run_command","value":"title @a title {\\"text\\":\\"Scores deleted\\",\\"color\\":\\"dark_red\\",\\"bold\\":true}"}}','{"text":"Are you sure?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"kill @e[tag=finalscore]"}}','{"text":" ","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_signs"}}','{"text":""}']}} destroy
setblock 5013 100 5000 oak_wall_sign[facing=east]{front_text:{messages:['{"text":""}','{"text":"Delete all scores?","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"setblock ~ ~ ~ oak_wall_sign[facing=east]{front_text:{messages:[\'{\\"text\\":\\" \\",\\"clickEvent\\":{\\"action\\":\\"run_command\\",\\"value\\":\\"title @a title {\\\\\\\\\\"text\\\\\\\\\\":\\\\\\\\\\"Scores deleted\\\\\\\\\\",\\\\\\\\\\"color\\\\\\\\\\":\\\\\\\\\\"dark_red\\\\\\\\\\",\\\\\\\\\\"bold\\\\\\\\\\":true}\\"}}\',\'{\\"text\\":\\"Are you sure?\\",\\"color\\":\\"dark_red\\",\\"bold\\":true,\\"clickEvent\\":{\\"action\\":\\"run_command\\",\\"value\\":\\"kill @e[tag=finalscore]\\"}}\',\'{\\"text\\":\\" \\",\\"clickEvent\\":{\\"action\\":\\"run_command\\",\\"value\\":\\"function lb:spawn/refresh_signs\\"}}\',\'{\\"text\\":\\"\\"}\']}} destroy"}}','{"text":""}','{"text":""}']}} destroy


function lb:scores/refreshscore