effect give @p[scores={ingame=1},gamemode=survival] minecraft:haste 10 40 false
tellraw @p[scores={ingame=1},gamemode=survival] ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"You mine blocks faster for ","color":"gold"},{"text":"10 seconds.","color":"dark_red"}]

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbluck 1