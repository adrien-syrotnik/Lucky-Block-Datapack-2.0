schedule function lb:effects/immobile/spawn 1s
tellraw @a ["",{"text":"[Curse - Immobility] ","color":"black"},{"text":" Don't move in 1 second...","color":"gold"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @p ~ ~ ~ 1 1