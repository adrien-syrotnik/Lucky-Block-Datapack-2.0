tellraw @a ["",{"text":"[Curse - Health] ","color":"black"},{"selector":"@p[scores={ingame=1},gamemode=survival]","color":"gold"},{"text":" triggered the Curse of ","color":"gold"},{"text":"Health.","color":"red"}]
schedule function lb:effects/health/1 1s

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbunluck 1