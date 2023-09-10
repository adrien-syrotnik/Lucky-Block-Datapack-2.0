tellraw @a ["",{"text":"[Malediction - Immobile] ","color":"black"},{"selector":"@p","color":"gold"},{"text":" a déclanché la Malédiction : ","color":"gold"},{"text":"Immobile","color":"red"}]
execute as @a at @s run playsound minecraft:entity.zombie_villager.cure master @p ~ ~ ~ 2 0.7 1
schedule function lb:effects/immobile/1 1s
