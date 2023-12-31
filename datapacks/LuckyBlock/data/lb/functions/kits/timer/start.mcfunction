# wait for the game / barrier
execute unless entity @e[tag=startwait] as @a at @s run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Rotation:[180F,0F],Tags:["startwait"]}
execute as @a at @s as @e[tag=startwait] unless score @s currentplayer matches 0.. run scoreboard players operation @s currentplayer = @p currentplayer

execute as @e[tag=startwait] at @s run fill ~-2 ~ ~-2 ~2 ~2 ~-2 barrier

# setup kits
execute as @a at @s as @e[tag=startwait] if score @s currentplayer = @p currentplayer at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Rotation:[180F,0F],Tags:["startwaitkit"]}

execute as @e[tag=startwaitkit] at @s run setblock ~ ~ ~-1 ender_chest[facing=south] replace

tag @a add endkittimer

function lb:kits/init

title @a title {"text":"Choose your kit","color":"green"}
title @a subtitle {"text":"You have 30 seconds","color":"green"}

schedule function lb:kits/timer/3 27s