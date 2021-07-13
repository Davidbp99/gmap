gMap:Print("RP_Downtown_tits_david Addon Loaded")




local spawnmodeenabled = false
local spawnmodebutton = "disablespawn" -- name for the button that activates the wall brushes in main square and in spawn

--// Disable teleports
-- mainsquaretpbutton , beachtpbutton , parktpbutton, warehousetpbutton, pvptpbutton, estatestpbutton
local disablemainsquaretp = false
local disablebeachtp = false
local disableparktp = false
local disablewarehousetp = false
local disablepvptp = false
local disableestatestp = false

--//


hook.Add("Initialize", "Automatedmap", function ()
timer.Simple(5, function() 
if spawnmodeenabled == true then
    for k,v in pairs(ents.FindByName(spawnmodebutton)) do
        v:Fire( "use" )
        end
            end

if disablemainsquaretp == true then
    for k,v in pairs(ents.FindByName("mainsquaretpbutton")) do
        v:Fire( "use" )
        end
            end

if disablebeachtp == true then
    for k,v in pairs(ents.FindByName("beachtpbutton")) do
        v:Fire( "use" )
        end
            end


if disableparktp == true then
    for k,v in pairs(ents.FindByName("parktpbutton")) do
        v:Fire( "use" )
        end
            end

if disablewarehousetp == true then
    for k,v in pairs(ents.FindByName("warehousetpbutton")) do
        v:Fire( "use" )
        end
            end

if disablepvptp == true then
    for k,v in pairs(ents.FindByName("pvptpbutton")) do
        v:Fire( "use" )
        end
            end

if disableestatestp == true then
    for k,v in pairs(ents.FindByName("estatestpbutton")) do
        v:Fire( "use" )
        end
            end

end)
end)
