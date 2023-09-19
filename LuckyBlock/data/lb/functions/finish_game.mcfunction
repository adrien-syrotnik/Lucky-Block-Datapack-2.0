# check if all players have abandoned the game
scoreboard players set abandons nbplayers 0
execute as @a[scores={abandon=1..}] run scoreboard players add abandons nbplayers 1

# if all players have abandoned the game say a sad message
execute if score @e[name="GameManager",limit=1,type=armor_stand] nbplayers = abandons nbplayers run tellraw @a ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"The game is finished and... everyone has abandoned the game :( cringe!","color":"gold"}]
execute unless score @e[name="GameManager",limit=1,type=armor_stand] nbplayers = abandons nbplayers run tellraw @a ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"All players finished the game! Congratulations to the winner: ","color":"gold"},{"selector":"@p[scores={finish=1,abandon=0}]","color":"dark_red"},{"text":" !!!","color":"gold"}]

scoreboard players add @p[scores={finish=1,abandon=0}] win 1
execute as @p[scores={finish=1,abandon=0}] if score @s win matches 5.. run advancement grant @p[scores={finish=1}] only lb:lucky_block/win1
execute as @p[scores={finish=1,abandon=0}] if score @s win matches 20.. run advancement grant @p[scores={finish=1}] only lb:lucky_block/win2
execute as @p[scores={finish=1,abandon=0}] if score @s win matches 50.. run advancement grant @p[scores={finish=1}] only lb:lucky_block/win3

#update best score only if nobody has abandoned the game
#execute unless score @e[name="GameManager",limit=1,type=armor_stand] nbplayers = abandons nbplayers run function lb:scores/finalscore
function lb:scores/finalscore

gamemode spectator @a

schedule function lb:cleargame 5s
schedule function lb:finishtp 10s


