scoreboard players reset @a mdegat
scoreboard players set @r mdegat 1

effect give @a[scores={mdegat=1..}] instant_damage


schedule function lb:effects/malediction_degat 1s
tellraw @a ["",{"text":"[Malediction - Dégats] ","color":"black"},{"text":"Nouvelle vague dans 1 seconde...","color":"gold"}]
