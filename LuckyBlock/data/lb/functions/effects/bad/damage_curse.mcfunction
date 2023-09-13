tellraw @a ["",{"text":"[Curse - Damage] ","color":"black"},{"selector":"@p","color":"gold"},{"text":" triggered the Curse of ","color":"gold"},{"text":"Damage.","color":"red"}]
function lb:effects/malediction_degat
execute as @a at @s run playsound minecraft:entity.wither.spawn ambient @p ~ ~ ~ 1 0