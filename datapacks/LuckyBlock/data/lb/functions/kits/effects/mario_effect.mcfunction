execute as @s[scores={bottle_thrown=1..}] at @s run setblock ~ ~-1 ~ minecraft:brown_stained_glass keep
execute as @s[scores={bottle_thrown=1..}] at @s run setblock ~ ~-1 ~-1 minecraft:brown_stained_glass keep
execute as @s[scores={bottle_thrown=1..}] at @s run setblock ~ ~-1 ~1 minecraft:brown_stained_glass keep
execute as @s[scores={bottle_thrown=1..}] at @s run setblock ~-1 ~-1 ~ minecraft:brown_stained_glass keep
execute as @s[scores={bottle_thrown=1..}] at @s run setblock ~-1 ~-1 ~-1 minecraft:brown_stained_glass keep
execute as @s[scores={bottle_thrown=1..}] at @s run setblock ~-1 ~-1 ~1 minecraft:brown_stained_glass keep
execute as @s[scores={bottle_thrown=1..}] at @s run setblock ~1 ~-1 ~-1 minecraft:brown_stained_glass keep
execute as @s[scores={bottle_thrown=1..}] at @s run setblock ~1 ~-1 ~ minecraft:brown_stained_glass keep
execute as @s[scores={bottle_thrown=1..}] at @s run setblock ~1 ~-1 ~1 minecraft:brown_stained_glass keep
execute as @s[scores={bottle_thrown=1..}] at @s run kill @e[type=minecraft:experience_bottle,distance=..5]
execute as @s[scores={bottle_thrown=1..}] at @s run summon armor_stand ~ ~10 ~ {NoGravity:1b,Small:1b,Invisible:1b,NoBasePlate:1b,CustomName:'{"text":"mario"}'}
execute as @s[scores={bottle_thrown=1..}] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 2 2 1
execute as @s[scores={bottle_thrown=1..}] at @s run scoreboard players set @s bottle_thrown 0
