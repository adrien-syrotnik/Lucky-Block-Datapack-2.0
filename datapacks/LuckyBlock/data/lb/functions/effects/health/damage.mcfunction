damage @s 4 minecraft:starve
scoreboard players set @s[scores={health=..5,effect_curse_heal=1}] effect_curse_heal 2
scoreboard players set @s[scores={health=..2,effect_curse_heal=1..}] count 99
execute as @s[scores={health=..2,effect_curse_heal=1}] at @s run tellraw @s ["",{"text":"[Curse - Health] ","color":"black"},{"text":"Survive 5 seconds to be regenerated.","color":"gold"}]
scoreboard players set @s[scores={health=..2,effect_curse_heal=1}] effect_curse_heal 3
