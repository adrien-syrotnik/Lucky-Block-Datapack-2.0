spawnpoint @s ~ ~ ~ 180
# kill old armor stand with the same score
execute as @e[tag=spawnpoint,type=armor_stand] if score @s currentplayer = @p currentplayer run kill @s
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["spawnpoint"]}
execute as @e[tag=spawnpoint,limit=1,sort=nearest] run scoreboard players operation @s currentplayer = @p currentplayer
