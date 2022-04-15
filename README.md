# gmap
 
My open project for map systems. Each Lua file should explain itself.

This is a system that works via a config instead of going into each file.


What system I made so far. Might make more

## Killfloor: 
You can use any button on the map and any area of the map to be turned into a kill zone. Meaning they die. Use getpos in gmod console to each side (pointA and pointB)

## Door System: 
Instead of using bkeypads or keypad system ingame. You as a server owner can only allow rank and job to be enabled to use a button on the map. For example milrp/swrp training area. You can set per button. You can also give them full access to all buttons that using the door system.

## Map Mode: 
This was a more private system for a map I never got a chance to release for harddrive problems. But it lets you target any buttons that got a name to it. So you could change the map while the server was starting up.

## SCP 008: 
This kinda only works on some maps (well you can use it on any maps). Example my map or the SCP Site 8 V2 (links below). So if someone open the SCP-008 (gas going out) the player will be starting to turn into a monster (zombie). You can control the time and if you go into lua/autorun/scp008addon.lua you can edit the weapon/model it gives.

SCP 008 map supported (that I'm aware of): https://steamcommunity.com/sharedfiles/filedetails/?id=2457474479 https://steamcommunity.com/sharedfiles/filedetails/?id=1107841272

For SCP nerds: https://www.youtube.com/watch?v=gBoKlLW6eCw https://scpcb.fandom.com/wiki/SCP-008

## How to get the ID for the buttons or pos

To get the button id use: lua_run Entity(1):ChatPrint(Entity(1):GetEyeTrace().Entity:MapCreationID())
You can also use the weapon but is throwing an error atm.

To get the pos to set up an box/area. Use: getpos
