#init the armorstand waiting for the player
# wait for the game / barrier
execute as @a at @s run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Rotation:[180F,0F],Tags:["startwait"]}
execute as @a at @s run scoreboard players operation @e[tag=startwait,distance=..2] currentplayer = @s currentplayer

execute as @e[tag=startwait] at @s run fill ~-2 ~ ~-2 ~2 ~2 ~-2 barrier

# show only a P on the title
title @a title {"text":"P","color":"blue"}
schedule function lb:passive/timer/pa 8t