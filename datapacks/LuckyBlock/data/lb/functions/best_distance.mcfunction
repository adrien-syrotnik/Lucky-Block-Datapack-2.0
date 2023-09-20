# scoreboard players set BestDistance -1 0
# execute at @a[gamemode=!spectator] if score BestDistance -1 < @p Distance run scoreboard players operation BestDistance -1 = @p Distance
# execute at @a if score @p Distance = BestDistance -1 run scoreboard players operation BestDistance currentplayer = @p currentplayer


scoreboard players set BestDistance -1 0
execute at @a[gamemode=!spectator] run function lb:effects/blueshellscore
execute at @a if score @p Distance = BestDistance -1 run scoreboard players operation BestDistance currentplayer = @p currentplayer