scoreboard players reset @a mdegat
scoreboard players set @r[gamemode=survival] mdegat 1

effect give @a[scores={mdegat=1..}] instant_damage


schedule function lb:effects/malediction_degat 1s
tellraw @a ["",{"text":"[Curse - Damage] ","color":"black"},{"text":"New wave in 1 second...","color":"gold"}]
