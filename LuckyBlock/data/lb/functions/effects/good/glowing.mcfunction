effect give @a[distance=1.1..] glowing 10 1 false
tellraw @a ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"You can see your opponents ","color":"gold"},{"text":"through the walls.","color":"dark_red"}]

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbluck 1