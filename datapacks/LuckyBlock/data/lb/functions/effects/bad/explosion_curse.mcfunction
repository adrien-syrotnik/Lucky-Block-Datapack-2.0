tellraw @a ["",{"text":"[Curse - Immobility] ","color":"black"},{"selector":"@p[scores={ingame=1},gamemode=survival]","color":"gold"},{"text":" triggered the Curse of ","color":"gold"},{"text":"Immobility.","color":"red"}]
execute as @a at @s run playsound minecraft:entity.zombie_villager.cure master @p ~ ~ ~ 2 0.7 1
schedule function lb:effects/immobile/1 1s

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbunluck 1