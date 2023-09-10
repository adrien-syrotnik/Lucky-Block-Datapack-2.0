# On death functions here
execute as @s[scores={kit=1,on_death=1}] at @s run function lb:kits/effects/ouvrier

execute as @a[scores={on_death=1}] at @s as @a[scores={kit=2}] at @s run function lb:kits/effects/necromancien

execute as @s[scores={kit=7,on_death=1}] at @s run function lb:kits/effects/sorcier

execute as @a[scores={kit=9,on_death=2}] at @s run function lb:kits/effects/auspice

execute as @a[scores={kit=10,on_death=1}] at @s run function lb:kits/effects/trompe_la_mort





scoreboard players add @s[scores={on_death=1..3}] on_death 1
scoreboard players reset @s[scores={on_death=3..}] on_death