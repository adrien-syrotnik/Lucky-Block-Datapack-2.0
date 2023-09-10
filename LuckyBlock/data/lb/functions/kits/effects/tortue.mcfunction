execute at @s as @s run scoreboard players set @s position 1
execute at @s as @s if score @s currentplayer = BestDistance currentplayer run scoreboard players set @s position 2
execute at @s as @s if score @s currentplayer = WorstDistance currentplayer run scoreboard players set @s position 0

execute as @s[scores={position=2}] run effect give @s minecraft:resistance 1 0 true
execute as @s[scores={position=0}] run effect give @s minecraft:speed 1 0 true
