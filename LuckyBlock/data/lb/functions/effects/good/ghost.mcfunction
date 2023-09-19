gamemode spectator @s
tag @s add ghost_start
scoreboard players set @s ghost_count 80

playsound minecraft:entity.vex.ambient ambient @a ~ ~ ~ 1 1

summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["ghost"]}
execute as @e[tag=ghost,limit=1,sort=nearest] run scoreboard players operation @s currentplayer = @p[scores={ingame=1},gamemode=survival] currentplayer
tp @e[tag=ghost,limit=1,sort=nearest] @s

# say to the player with title that he has 4 seconds to haunt a player
title @s title {"text":"Ghost mode","color":"white"}
title @s subtitle {"text":"You have 4 seconds to haunt a player","color":"grey"}

effect give @s mining_fatigue 7 255 true

scoreboard players add @s lbluck 1