# On death functions here
execute as @s[scores={kit=1}] at @s run function lb:kits/effects/ouvrier

execute as @a[scores={kit=3}] at @s run function lb:kits/effects/pretre_effect

execute as @a[scores={on_death=2}] at @s unless score @s kit matches 2 as @a[scores={kit=2}] at @s run function lb:kits/effects/necromancien

execute as @s[scores={kit=7}] at @s run function lb:kits/effects/sorcier

execute as @a[scores={kit=9}] at @s run function lb:kits/effects/auspice

execute as @a[scores={kit=10}] at @s run function lb:kits/effects/trompe_la_mort




execute as @a[scores={kit=3}] at @s run effect clear @s minecraft:resistance
scoreboard players reset @s[scores={on_death=2..}] on_death