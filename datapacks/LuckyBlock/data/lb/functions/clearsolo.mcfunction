fill ~-4 ~-5 ~-3 ~3 ~10 ~2 minecraft:air
kill @e[type=!player,distance=..20, name=!"NextStage"]
tp @s ~ ~ ~5

execute positioned ~ ~ -990 if entity @s[distance=..3] run kill @s

execute positioned ~ ~ -990 if entity @s[distance=5..] run schedule clear lb:cleargame
execute positioned ~ ~ -990 if entity @s[distance=5..] run schedule function lb:cleargame 1t