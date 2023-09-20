execute as @a at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.4
schedule function lb:effects/immobile/end 3s
tellraw @a ["",{"text":"[Curse - Immobility] ","color":"black"},{"text":" Don't move for ","color":"gold"}, {"text":"3 seconds!","color":"gold"}]
execute as @a at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["dontmove"]}
scoreboard players set @e[tag=dontmove] count 60