stopsound @s[scores={stop_music=1,count=..0}] master minecraft:music_disc.wait
stopsound @s[scores={stop_music=1,water=1..}] master minecraft:music_disc.wait
scoreboard players set @s stop_music 0
scoreboard players set @s water 0
scoreboard players set @s count 0