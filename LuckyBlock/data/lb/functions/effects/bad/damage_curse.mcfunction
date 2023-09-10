tellraw @a ["",{"text":"[Malediction - Dégats] ","color":"black"},{"selector":"@p","color":"gold"},{"text":" a déclanché la Malédiction : ","color":"gold"},{"text":"Dégâts","color":"red"}]
function lb:effects/malediction_degat
execute as @a at @s run playsound minecraft:entity.wither.spawn ambient @p ~ ~ ~ 1 0