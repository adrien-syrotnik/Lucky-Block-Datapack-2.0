schedule function lb:effects/immobile/2 1s
tellraw @a ["",{"text":"[Curse - Immobility] ","color":"black"},{"text":" Don't move in 2 seconds...","color":"gold"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @p ~ ~ ~ 1 1