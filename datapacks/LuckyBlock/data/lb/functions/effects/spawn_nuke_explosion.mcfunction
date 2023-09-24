summon armor_stand ~ ~10 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["nuke_explosion"]}
execute positioned ~ ~10 ~ run scoreboard players set @e[type=armor_stand,tag=nuke_explosion,distance=..2,limit=3,sort=nearest] count 100
execute positioned ~ ~10 ~ at @e[type=armor_stand,tag=nuke_explosion,distance=..2,limit=3,sort=nearest] facing entity @s eyes run tp @e[type=armor_stand,tag=nuke_explosion,limit=1,sort=nearest] ~ ~-10 ~ ~ 0
scoreboard players set @e[type=armor_stand,tag=nuke_explosion,distance=..2,limit=3,sort=nearest] count 100