tellraw @a ["",{"text":"[Curse - Health] ","color":"black"},{"text":"Every player take damage until they have 1 ","color":"gold"},{"text":"❤","color":"red"},{"text":".","color":"gold"}]
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @p ~ ~ ~ 2 2 1
scoreboard players set @a effect_curse_heal 1