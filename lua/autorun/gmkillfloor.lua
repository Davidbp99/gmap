gMap:Print("Map Addon Loaded")

hook.Add("PlayerUse", "KillFloor", function(pl, ent)
    if (gMap.KillFloorAccess[ent:MapCreationID()]) then

        if (gMap.KillFloorOn == true) then return false end
            -- here it gets the rank and checks if it should have perms 
            if (pl:GetUserGroup() == gMap.KillFloorAccess[ent:MapCreationID()]) then 
            
                for k, v in pairs(player.GetAll()) do
                    if v:GetPos():WithinAABox(Vector(gMap.KillFloorPointA), Vector(gMap.KillFloorPointB)) then

                    else
                    	if (v:GetUserGroup() == gMap.Nottobeeffectedbykillfloor[v:GetUserGroup()]) then return 

end
           
                        v:Kill()
                    end
                end
         else
         	print(gMap.DeniedMessage) 
            	end
                
            end
       
end)