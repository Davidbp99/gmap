gMap:Print("RP_Downtown_tits_david Addon Loaded")




local spawnmodebutton = 4086 -- ID for the button that activates the wall brushes in main square and in spawn

--// Disable teleports

--//
function SpawnMode()
    if IsValid( spawnmodebutton ) then
    spawnmodebutton:Fire("use")
end
end