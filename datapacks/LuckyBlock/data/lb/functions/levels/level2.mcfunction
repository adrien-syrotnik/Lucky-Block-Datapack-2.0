#spawn checkpoint
summon armor_stand ~ ~ ~-5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Respawn"]}
fill ~-2 ~-1 ~-3 ~2 ~-1 ~-7 minecraft:white_stained_glass
fill ~-2 ~-1 ~-5 ~2 ~-1 ~-5 minecraft:sea_lantern


fill ~-3 ~-3 ~-3 ~-3 ~20 ~-7 minecraft:barrier
fill ~3 ~-3 ~-3 ~3 ~20 ~-7 minecraft:barrier

tp @s ~ ~ ~-5

scoreboard players operation @s maxweightstage += level2weight maxweightstage
scoreboard players set @s level 2
