execute as @a run playsound minecraft:block.portal.trigger ambient @a ~ ~ ~ 2 0.1
execute as @a run playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 2 1

summon minecraft:armor_stand ~ ~360 ~ {Invisible:1b,Invulnerable:1b,Tags:["nuke"],NoGravity:1b}
execute positioned ~ ~360 ~ run scoreboard players set @e[type=minecraft:armor_stand,tag=nuke,limit=1,sort=nearest] count 180
