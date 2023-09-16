execute if score level0weight maxweightstage >= @e[name=GameManager,limit=1] 0 run scoreboard players add level0weight maxweightstage 1
execute if score level1weight maxweightstage >= @e[name=GameManager,limit=1] 0 run scoreboard players add level1weight maxweightstage 1
execute if score level2weight maxweightstage >= @e[name=GameManager,limit=1] 0 run scoreboard players add level2weight maxweightstage 1
execute if score level3weight maxweightstage >= @e[name=GameManager,limit=1] 0 run scoreboard players add level3weight maxweightstage 1


execute if score level1weight maxweightstage >= @e[name=GameManager,limit=1] 0 run setblock 5011 100 4999 birch_wall_sign[facing=west]{front_text:{messages:['{"text":"Lucky Blocks for","color":"dark_blue"}','{"text":"each Phases","color":"dark_blue"}','{"score":{"name":"level1weight","objective":"maxweightstage"},"color":"gold"}','{"text":""}']},is_waxed:1b} destroy