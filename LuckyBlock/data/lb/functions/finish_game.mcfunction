tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"text":"Tous les joueurs ont terminé la partie ! Félicitation au gagnant : ","color":"gold"},{"selector":"@p[scores={finish=1}]","color":"dark_red"},{"text":" !!!","color":"gold"}]

scoreboard players add @p[scores={finish=1}] win 1
execute as @p[scores={finish=1}] if score @s win matches 5 run advancement grant @p[scores={finish=1}] only lb:lucky_block/win1
execute as @p[scores={finish=1}] if score @s win matches 20 run advancement grant @p[scores={finish=1}] only lb:lucky_block/win2
execute as @p[scores={finish=1}] if score @s win matches 50 run advancement grant @p[scores={finish=1}] only lb:lucky_block/win3

#update best score
function lb:finalscore

gamemode spectator @a

schedule function lb:cleargame 5s
schedule function lb:finishtp 10s


