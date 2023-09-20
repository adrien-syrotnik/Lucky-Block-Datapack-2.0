summon glow_squid ~ ~ ~ {NoAI:1b,Rotation:[180.0f,0.0f],Tags:["SquidRocket"]}
scoreboard players set @e[type=glow_squid,tag=SquidRocket,limit=1,sort=nearest] count 250
scoreboard players operation @e[type=glow_squid,tag=SquidRocket,limit=1,sort=nearest] currentplayer = @p[scores={ingame=1},gamemode=survival] currentplayer

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbluck 1