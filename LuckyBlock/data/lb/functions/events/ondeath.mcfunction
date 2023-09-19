# On death functions here

# if passive effect is 1 (random kit when die), then give a random kit
execute as @s[scores={passif_game=1}] at @s run function lb:kits/get_full_random_kit


execute as @s[scores={kit=1}] at @s run function lb:kits/effects/ouvrier

execute as @s[scores={kit=3}] at @s run function lb:kits/effects/pretre_effect

execute as @s[scores={on_death=2}] at @s unless score @s kit matches 2 as @a[scores={kit=2}] at @s run function lb:kits/effects/necromancien

execute as @s[scores={kit=7}] at @s run function lb:kits/effects/sorcier

execute as @s[scores={kit=9}] at @s run function lb:kits/effects/auspice

execute as @s[scores={kit=10}] at @s run function lb:kits/effects/trompe_la_mort


tag @s add death_reset_abandon


scoreboard players reset @s[scores={on_death=2..}] on_death