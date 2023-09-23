gamemode spectator @s
scoreboard players set @s finish 1
clear @s
stopsound @s
execute at @a run playsound minecraft:entity.player.levelup master @p ~ ~ ~ 2 1 1

#tellraw @a ["",{"text":"[Lucky Block] ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":" a terminé la course !","color":"gold"}]

#add tag winner if no one have it
execute unless entity @a[tag=winner] run tag @s add winner

execute as @a[scores={finish=1..}] unless score @s currentplayer = @p currentplayer run scoreboard players add @p finish 1

# Add stats blocktravelled_stat to the player
scoreboard players operation @s blocktravelled_stat += @s Distance

#if you want to stop if 1 player left, uncomment this
#scoreboard players add @s finish 1

scoreboard players set @s ingame 0

#afficher le temps du joueur
function lb:scores/calculatetime
function lb:scores/calculate_ratio
tellraw @a ["",{"text":"\n"},{"text":"[Lucky Block] ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":" has reach the finish line in ","color":"gold"},{"score":{"name":"@s","objective":"minutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"secondes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"centieme"},"color":"gold"},{"text":" with a luck ratio of ","color":"gold"},{"score":{"name":"@s","objective":"ratioLuck"},"color":"gold","hoverEvent": {"action": "show_text", "value": {"text": "Luck ratio = (number of 'Lucky' lucky blocks broken) / (total number of lucky blocks broken)","italic": true,"color": "gold"}}},{"text":"%","color":"gold"},{"text":" !","color":"gold"}]

#old execute if score level0weight maxweightstage = 10 number if score level1weight maxweightstage = 10 number if score level2weight maxweightstage = 10 number if score level3weight maxweightstage = 10 number if score @s timerun < 2400 number run advancement grant @s only lb:lucky_block/fast
execute if score level0weight maxweightstage = 5 number if score level1weight maxweightstage = 5 number if score level2weight maxweightstage = 5 number if score level3weight maxweightstage = 5 number if score @s timerun < 1200 number run advancement grant @s only lb:lucky_block/fast

scoreboard players set @e[name=timer] rainbow 6

execute if score @s finish = @e[name="GameManager",type=armor_stand,limit=1] nbplayers run function lb:finish_game