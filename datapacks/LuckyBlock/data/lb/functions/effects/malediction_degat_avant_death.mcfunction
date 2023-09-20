schedule clear lb:effects/malediction_degat
execute as @a at @s run playsound minecraft:entity.wither.death ambient @a ~ ~ ~ 1 2
tellraw @a ["",{"text":"[Malediction - Dégats] ","color":"black"},{"text":"Ou pas ! Malédiction rompue..., ","color":"gold"},{"selector":"@s","color":"red"},{"text":" n'a pas survécu...","color":"gold"}]

scoreboard players reset @a mdegat