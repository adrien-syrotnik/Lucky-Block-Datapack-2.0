tp @a 5000 99 5000 0 0
gamemode survival @a

#reset score boss bar
scoreboard players set @e[name=timer] secondes 0
scoreboard players set @e[name=timer] minutes 0
scoreboard players set @e[name=timer] bossbar 0
bossbar set minecraft:timer value 0
bossbar set minecraft:timer visible false