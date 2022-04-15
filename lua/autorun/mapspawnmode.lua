gMap:Print("RP_Downtown_tits_david Addon Loaded")
-- For a map that I never released

--// Set the spawn mode. false = it got the teleport + stairs up to main square.  true= just the teleports
local spawnmodeenabled = false
--// Disable teleports
-- mainsquaretpbutton , beachtpbutton , parktpbutton, warehousetpbutton, pvptpbutton, estatestpbutton
-- As this only runs once while you start up the server/singleplayer you will need to config it how you want it from the start.
local disablemainsquaretp = false
local disablebeachtp = false
local disableparktp = false
local disablewarehousetp = false
local disablepvptp = false
local disableestatestp = false

--//
hook.Add("Initialize", "Automatedmap", function()
    if (game.GetMap() == "rp_downtown_tits_david_*") then
        timer.Simple(5, function()
            if spawnmodeenabled == true then
                for k, v in pairs(ents.FindByName("disablespawn")) do
                    v:Fire("use")
                end
            end

            if disablemainsquaretp == true then
                for k, v in pairs(ents.FindByName("mainsquaretpbutton")) do
                    v:Fire("use")
                end
            end

            if disablebeachtp == true then
                for k, v in pairs(ents.FindByName("beachtpbutton")) do
                    v:Fire("use")
                end
            end

            if disableparktp == true then
                for k, v in pairs(ents.FindByName("parktpbutton")) do
                    v:Fire("use")
                end
            end

            if disablewarehousetp == true then
                for k, v in pairs(ents.FindByName("warehousetpbutton")) do
                    v:Fire("use")
                end
            end

            if disablepvptp == true then
                for k, v in pairs(ents.FindByName("pvptpbutton")) do
                    v:Fire("use")
                end
            end

            if disableestatestp == true then
                for k, v in pairs(ents.FindByName("estatestpbutton")) do
                    v:Fire("use")
                end
            end

            gMap:Print("Map Settings Have Deployed")
        end)
    end
end)