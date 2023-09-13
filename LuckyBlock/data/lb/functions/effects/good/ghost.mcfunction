gamemode spectator @p
tag @p add ghost_start
scoreboard players set @p ghost_count 80

execute as @p at @s run playsound minecraft:entity.vex.ambient ambient @a ~ ~ ~ 1 1

summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["ghost"]}
execute as @e[tag=ghost,limit=1,sort=nearest] run scoreboard players operation @s currentplayer = @p currentplayer
tp @e[tag=ghost,limit=1,sort=nearest] @p

# say to the player with title that he has 4 seconds to haunt a player
title @p title {"text":"Ghost mode","color":"white"}
title @p subtitle {"text":"You have 4 seconds to haunt a player","color":"grey"}

effect give @p mining_fatigue 7 255 true