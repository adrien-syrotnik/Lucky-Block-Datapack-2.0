execute as @s[scores={damage_pretre=30..9999}] at @s run effect clear @s minecraft:resistance
execute as @s[scores={damage_pretre=30..9999}] at @s run tellraw @s [{"text":"[Lucky Block] ","color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":"You loose your ","color":"gold","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":"Divine Shield","color":"red","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":".","color":"gold","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}}]
execute as @s[scores={damage_pretre=30..9999}] at @s run scoreboard players set @s damage_pretre 10000
execute as @s[scores={damage_pretre=..30}] at @s run scoreboard players set @s damage_pretre 0