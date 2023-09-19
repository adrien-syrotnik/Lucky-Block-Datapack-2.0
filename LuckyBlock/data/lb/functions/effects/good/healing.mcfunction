execute as @p[scores={ingame=1},gamemode=survival] at @s run effect give @s instant_health 1 1 true
execute as @p[scores={ingame=1},gamemode=survival] at @s run particle heart ~ ~ ~ 1 1 1 0.1 30

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbluck 1