scoreboard players reset @e[tag=finalscore] level

#set the score level to 4 for the right armor stand to be more easier
execute as @e[tag=finalscore] if score level0weight maxweightstage = @s lbphase1 if score level1weight maxweightstage = @s lbphase2 if score level2weight maxweightstage = @s lbphase3 if score level3weight maxweightstage = @s lbphase4 run scoreboard players set @s level 4


#rename l'armurestand avec les bons stage
data modify block -5 -59 -5 front_text.messages[0] set value '[{"text":"Phases : ","color":"gold"},{"score":{"name":"level0weight","objective":"maxweightstage"},"color":"dark_green","bold":true},{"text":"/"},{"score":{"name":"level1weight","objective":"maxweightstage"},"color":"dark_green","bold":true},{"text":"/"},{"score":{"name":"level2weight","objective":"maxweightstage"},"color":"dark_green","bold":true},{"text":"/"},{"score":{"name":"level3weight","objective":"maxweightstage"},"color":"dark_green","bold":true}]'
execute as @e[type=minecraft:armor_stand,scores={score_position=0}] run data modify entity @s CustomName set from block -5 -59 -5 front_text.messages[0]


#refresh les scores
#set the new score for the armor stand
execute as @e[type=minecraft:armor_stand] if score @s score_position matches 1..3 run data modify entity @s CustomName set value '{"text":"[ No score recorded ]", "color":"dark_gray"}'


#still 1
execute if score @e[tag=finalscore,scores={level=4},limit=1] top1 matches 1.. run scoreboard players operation @e[tag=finalscore,scores={level=4},limit=1] timerun = @e[tag=finalscore,scores={level=4},limit=1] top1
execute if score @e[tag=finalscore,scores={level=4},limit=1] top1 matches 1.. as @e[tag=finalscore,scores={level=4},limit=1] run function lb:scores/calculatetime
execute if score @e[tag=finalscore,scores={level=4},limit=1] top1 matches 1.. run data modify block -5 -59 -5 front_text.messages[0] set value '[{"text":"1st","color":"gold","bold":true},{"text":" - ","color":"dark_red"},{"nbt":"HandItems[0].tag.SkullOwner.Name","entity":"@e[tag=finalscore,scores={level=4},limit=1]","color":"dark_red","bold":true},{"text":" : ","color":"dark_red","bold":"false"},{"score":{"name":"@e[tag=finalscore,scores={level=4},limit=1]","objective":"minutes"},"color":"green","italic":true},{"text":":","color":"green","italic":true},{"score":{"name":"@e[tag=finalscore,scores={level=4},limit=1]","objective":"secondes"},"color":"green","italic":true},{"text":":","color":"green","italic":true},{"score":{"name":"@e[tag=finalscore,scores={level=4},limit=1]","objective":"centieme"},"color":"green","italic":true}]'
execute if score @e[tag=finalscore,scores={level=4},limit=1] top1 matches 1.. as @e[type=minecraft:armor_stand,scores={score_position=1}] run data modify entity @s CustomName set from block -5 -59 -5 front_text.messages[0]

#still 2
execute if score @e[tag=finalscore,scores={level=4},limit=1] top2 matches 1.. run scoreboard players operation @e[tag=finalscore,scores={level=4},limit=1] timerun = @e[tag=finalscore,scores={level=4},limit=1] top2
execute if score @e[tag=finalscore,scores={level=4},limit=1] top2 matches 1.. as @e[tag=finalscore,scores={level=4},limit=1] run function lb:scores/calculatetime
execute if score @e[tag=finalscore,scores={level=4},limit=1] top2 matches 1.. run data modify block -5 -59 -5 front_text.messages[0] set value '[{"text":"2nd","color":"gray","bold":true},{"text":" - ","color":"dark_red"},{"nbt":"HandItems[1].tag.SkullOwner.Name","entity":"@e[tag=finalscore,scores={level=4},limit=1]","color":"dark_red","bold":true},{"text":" : ","color":"dark_red","bold":"false"},{"score":{"name":"@e[tag=finalscore,scores={level=4},limit=1]","objective":"minutes"},"color":"green","italic":true},{"text":":","color":"green","italic":true},{"score":{"name":"@e[tag=finalscore,scores={level=4},limit=1]","objective":"secondes"},"color":"green","italic":true},{"text":":","color":"green","italic":true},{"score":{"name":"@e[tag=finalscore,scores={level=4},limit=1]","objective":"centieme"},"color":"green","italic":true}]'
execute if score @e[tag=finalscore,scores={level=4},limit=1] top2 matches 1.. as @e[type=minecraft:armor_stand,scores={score_position=2}] run data modify entity @s CustomName set from block -5 -59 -5 front_text.messages[0]

#top3 still 3
execute if score @e[tag=finalscore,scores={level=4},limit=1] top3 matches 1.. run scoreboard players operation @e[tag=finalscore,scores={level=4},limit=1] timerun = @e[tag=finalscore,scores={level=4},limit=1] top3
execute if score @e[tag=finalscore,scores={level=4},limit=1] top3 matches 1.. as @e[tag=finalscore,scores={level=4},limit=1] run function lb:scores/calculatetime
execute if score @e[tag=finalscore,scores={level=4},limit=1] top3 matches 1.. run data modify block -5 -59 -5 front_text.messages[0] set value '[{"text":"3rd","color":"#C15A36","bold":true},{"text":" - ","color":"dark_red"},{"nbt":"ArmorItems[3].tag.SkullOwner.Name","entity":"@e[tag=finalscore,scores={level=4},limit=1]","color":"dark_red","bold":true},{"text":" : ","color":"dark_red","bold":"false"},{"score":{"name":"@e[tag=finalscore,scores={level=4},limit=1]","objective":"minutes"},"color":"green","italic":true},{"text":":","color":"green","italic":true},{"score":{"name":"@e[tag=finalscore,scores={level=4},limit=1]","objective":"secondes"},"color":"green","italic":true},{"text":":","color":"green","italic":true},{"score":{"name":"@e[tag=finalscore,scores={level=4},limit=1]","objective":"centieme"},"color":"green","italic":true}]'
execute if score @e[tag=finalscore,scores={level=4},limit=1] top3 matches 1.. as @e[type=minecraft:armor_stand,scores={score_position=3}] run data modify entity @s CustomName set from block -5 -59 -5 front_text.messages[0]