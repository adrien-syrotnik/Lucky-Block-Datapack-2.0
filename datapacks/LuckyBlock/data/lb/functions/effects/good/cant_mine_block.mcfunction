execute at @p[scores={ingame=1},gamemode=survival] run effect give @a[distance=1..] mining_fatigue 3 50 true
tellraw @p[scores={ingame=1},gamemode=survival] ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"Your opponents ","color":"gold"},{"text":"can't mine blocks","color":"dark_red"},{"text":" for ","color":"gold"},{"text":"3 seconds.","color":"dark_red"}]
execute at @p[scores={ingame=1},gamemode=survival] run tellraw @a[distance=1..] ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"You ","color":"gold"},{"text":"can't mine blocks","color":"dark_red"},{"text":" for ","color":"gold"},{"text":"3 seconds.","color":"dark_red"}]
execute at @a run playsound minecraft:entity.villager.no ambient @s ~ ~ ~ 2 0.5 1

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbluck 1