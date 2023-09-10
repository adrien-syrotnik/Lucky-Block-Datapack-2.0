title @a title {"text":"Fin du choix des kits","color":"dark_red"}
title @a subtitle {"text":"Lancement de la partie...","color":"dark_red"}

execute as @e[tag=startwaitkit] at @s run setblock ~ ~ ~-1 air
kill @e[tag=startwaitkit]
kill @e[type=armor_stand,tag=EnderItems]

advancement grant @a only lb:lucky_block/lucky_block

function lb:starttimer/start