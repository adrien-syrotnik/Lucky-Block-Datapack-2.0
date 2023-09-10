scoreboard players operation @s centieme = @s timerun
scoreboard players operation @s secondes = @s timerun

scoreboard players operation @s centieme %= 20 number

scoreboard players operation @s secondes -= @s centieme

scoreboard players operation @s centieme *= 5 number

scoreboard players operation @s secondes /= 20 number

scoreboard players operation @s minutes = @s secondes
scoreboard players operation @s minutes /= 60 number
scoreboard players operation @s secondes %= 60 number

