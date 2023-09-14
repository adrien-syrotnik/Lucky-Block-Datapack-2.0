execute if score ingame ingame matches 1 run scoreboard players add @e[name=timer] tick 1
execute as @e[scores={tick=20..},name=timer] at @s run scoreboard players add @e[name=timer] bossbar 1
execute as @e[scores={tick=20..},name=timer] at @s run scoreboard players add @s secondes 1
execute as @e[scores={secondes=60..},name=timer] at @s run scoreboard players add @s minutes 1
execute as @e[scores={secondes=60..},name=timer] at @s run scoreboard players set @e[name=timer] bossbar 0
execute as @e[scores={tick=20..},name=timer] at @s run scoreboard players set @s tick 0
execute as @e[scores={secondes=60..},name=timer] at @s run scoreboard players set @s secondes 0


execute store result bossbar minecraft:timer value run scoreboard players get @e[name=timer,limit=1] bossbar


execute as @a if score @s currentplayer = BestDistance currentplayer run bossbar set timer name [    {"text":"1st - ","color":"dark_red","bold":false},    {"selector":"@s","color":"gold","bold":true},    {"text":"        "},    {"score":{"name":"@e[name=timer]","objective":"minutes"},"color":"dark_red","bold":true},    {"text":"m ","color":"dark_red","bold":false},    {"score":{"name":"@e[name=timer]","objective":"secondes"},"color":"dark_red","bold":true},    {"text":"s","color":"dark_red","bold":false}]


#execute as @a if score @s currentplayer = BestDistance currentplayer run bossbar set timer name [{"selector":"@s","color":"gold","bold":true},{"text":" est actuellement premier(e) - ","color":"dark_red","bold":false},{"score":{"name":"@e[name=timer]","objective":"minutes"},"color":"dark_red","bold":true},{"text":"m ","color":"dark_red","bold":false},{"score":{"name":"@e[name=timer]","objective":"secondes"},"color":"dark_red","bold":true},{"text":"s","color":"dark_red","bold":false}]


execute as @e[name=timer,scores={rainbow=1..,rainbow_timer=10}] at @s run scoreboard players remove @s rainbow 1
execute as @e[name=timer,scores={rainbow=1..,rainbow_timer=10}] at @s run scoreboard players set @s rainbow_timer 0
execute as @e[name=timer,scores={rainbow=0}] at @s run bossbar set minecraft:timer color yellow
execute as @e[name=timer,scores={rainbow=1..}] at @s run scoreboard players add @s rainbow_timer 1


#rainbow effect
execute as @e[name=timer,scores={rainbow=1..,rainbow_timer=10}] at @s run bossbar set minecraft:timer color purple
execute as @e[name=timer,scores={rainbow=1..,rainbow_timer=8}] at @s run bossbar set minecraft:timer color red
execute as @e[name=timer,scores={rainbow=1..,rainbow_timer=6}] at @s run bossbar set minecraft:timer color yellow
execute as @e[name=timer,scores={rainbow=1..,rainbow_timer=4}] at @s run bossbar set minecraft:timer color green
execute as @e[name=timer,scores={rainbow=1..,rainbow_timer=2}] at @s run bossbar set minecraft:timer color blue