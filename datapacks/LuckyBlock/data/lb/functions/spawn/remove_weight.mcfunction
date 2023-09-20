execute if score level0weight maxweightstage > @e[name=GameManager,limit=1] 1 run scoreboard players remove level0weight maxweightstage 1
execute if score level1weight maxweightstage > @e[name=GameManager,limit=1] 1 run scoreboard players remove level1weight maxweightstage 1
execute if score level2weight maxweightstage > @e[name=GameManager,limit=1] 1 run scoreboard players remove level2weight maxweightstage 1
execute if score level3weight maxweightstage > @e[name=GameManager,limit=1] 1 run scoreboard players remove level3weight maxweightstage 1

# execute unless score level3weight maxweightstage > @e[name=GameManager,limit=1] 1 run return 0

execute if score level1weight maxweightstage >= @e[name=GameManager,limit=1] 0 run setblock 5011 100 5000 birch_wall_sign[facing=west]{front_text:{messages:['{"text":"Lucky Blocks","color":"dark_blue","bold":true}','{"text":"/ Phases","color":"dark_blue","bold":true}','{"score":{"name":"level1weight","objective":"maxweightstage"},"color":"gold"}','{"text":""}']},is_waxed:1b} destroy


function lb:scores/askrefresh