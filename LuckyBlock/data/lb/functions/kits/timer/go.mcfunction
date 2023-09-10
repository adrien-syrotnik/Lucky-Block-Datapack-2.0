title @a title {"text":"Fin du choix des kits","color":"dark_red"}
title @a subtitle {"text":"Lancement de la partie...","color":"dark_red"}

execute as @e[tag=startwaitkit] at @s run setblock ~ ~ ~-1 air

#effects off ender chest that disapear
execute as @e[tag=startwaitkit] at @s run particle minecraft:portal ~ ~ ~-1 0 0 0 1 100 force
execute as @e[tag=startwaitkit] at @s positioned ~ ~ ~-1 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1

kill @e[tag=startwaitkit]
kill @e[type=armor_stand,tag=EnderItems]

advancement grant @a only lb:lucky_block/lucky_block

function lb:starttimer/start