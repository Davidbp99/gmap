gMap:Print("mapscript loaded")

hook.Add("PlayerUse", "DoorJobs", function(pl, ent)
    --  // door permission
    if (gMap.Buttonpermissionjob[ent:MapCreationID()]) or (gMap.Buttonpermissionrank[ent:MapCreationID()]) then
        if (gMap.ButtonSystem == true) then
            if (gMap.FullAccess[pl:GetUserGroup()] == true) && (gMap.FullAccess[pl:GetSecondaryUserGroup()] == true) then return false end -- To add your own rank so management and superadmins don't need to be added to 200 buttons

            
            if (pl:GetUserGroup() == gMap.Buttonpermissionrank[ent:MapCreationID()]) && (pl:GetSecondaryUserGroup() == gMap.Buttonpermissionrank[ent:MapCreationID()]) then -- here it gets the rank and checks if it should have perms
                return false
            else
                PrintMessage(HUD_PRINTTALK, gMap.DeniedMessage)
            end

            if (pl:getDarkRPVar("job") ~= gMap.Buttonpermissionjob[ent:MapCreationID()]) then return false end -- here it gets the jobs and checks if it should have perms
        end
    end
end)