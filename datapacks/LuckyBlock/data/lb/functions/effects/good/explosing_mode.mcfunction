scoreboard players set explosif -1 -1
scoreboard players set @e[name=timer] rainbow 30
schedule clear lb:effects/resetexplosif
schedule function lb:effects/resetexplosif 15s
tellraw @a ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"***","obfuscated":true},{"text":" Exploding mode activated! ","color":"dark_red"},{"text":"***","obfuscated":true}]
execute at @a run playsound minecraft:entity.generic.explode ambient @p ~ ~ ~ 1 1

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbluck 1