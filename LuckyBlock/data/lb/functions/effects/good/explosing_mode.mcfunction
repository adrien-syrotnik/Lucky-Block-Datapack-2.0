scoreboard players set explosif -1 -1
scoreboard players set @e[name=timer] rainbow 30
schedule clear lb:effects/resetexplosif
schedule function lb:effects/resetexplosif 15s
tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"text":"***","obfuscated":true},{"text":" Mode Explosif activé ! ","color":"dark_red"},{"text":"***","obfuscated":true}]
execute at @a run playsound minecraft:entity.generic.explode ambient @p ~ ~ ~ 1 1