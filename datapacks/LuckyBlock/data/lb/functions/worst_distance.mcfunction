scoreboard players set WorstDistance 0 1000000
execute at @a[gamemode=!spectator] run function lb:effects/turtlescore
execute at @a if score @p Distance = WorstDistance 0 run scoreboard players operation WorstDistance currentplayer = @p currentplayer