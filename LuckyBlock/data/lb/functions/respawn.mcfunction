execute as @a[gamemode=survival] at @s if block ~ ~-1 ~ minecraft:sea_lantern if entity @e[tag=Respawn,distance=..3] run scoreboard players set @p checkpoint_valid 1
execute as @a[scores={checkpoint_valid=1}] at @s run effect give @s minecraft:resistance 1 255 true
execute as @a[scores={checkpoint_valid=1}] at @s at @e[tag=Respawn,distance=..3,limit=1,sort=nearest] run fill ~-2 ~-1 ~-2 ~2 ~ ~2 minecraft:gold_block replace minecraft:white_stained_glass
execute as @a[scores={checkpoint_valid=1}] at @s at @e[tag=Respawn,distance=..3,limit=1,sort=nearest] run fill ~-2 ~-1 ~-2 ~2 ~ ~2 minecraft:gold_block replace minecraft:sea_lantern
execute as @a[scores={checkpoint_valid=1}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;14602026],FadeColors:[I;15790320]}]}}}}
execute as @a[scores={checkpoint_valid=1}] at @s run spawnpoint @s ~ ~ ~ 180
execute as @a[scores={checkpoint_valid=1}] at @s run tellraw @a ["",{"text":"[LuckyBlock] ","color":"dark_red"},{"selector":"@s","color":"gold"},{"text":" a atteint un checkpoint"}] 
#execute as @a[scores={checkpoint_valid=1}] at @s run kill @e[tag=Respawn,distance=..3,limit=1,sort=nearest]
execute as @a[scores={checkpoint_valid=1}] run scoreboard players set @e[name=timer] rainbow 6
execute as @a[scores={checkpoint_valid=1}] at @s run scoreboard players set @p checkpoint_valid 0