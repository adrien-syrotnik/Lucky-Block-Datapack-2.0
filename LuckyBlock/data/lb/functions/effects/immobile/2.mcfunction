schedule function lb:effects/immobile/spawn 1s
tellraw @a ["",{"text":"[Malediction - Immobile] ","color":"black"},{"text":" Ne bougez plus dans 1...","color":"gold"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @p ~ ~ ~ 1 1