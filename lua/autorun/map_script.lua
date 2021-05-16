print("mapscript loaded")



local fullaccess = {
["superadmin"] = true,


}

local donthaveaccess = "You Can't Access This"

local JobDoors = {
 -- [mapid] = "job name", (job name does not team TEAM_)
}



local RankDoors = {
[3837] = "gamemasters",
[3903] = "gamemasters",
[3893] = "gamemasters",
}



hook.Add("PlayerUse", "DoorJobs", function(pl, ent)
--  // door permission



  if (JobDoors[ent:MapCreationID()]) or (RankDoors[ent:MapCreationID()]) then 
   -- if (fullaccess[pl:GetUserGroup()] == true) then return end -- To add your own rank so management and superadmins don't need to be added to 200 buttons
  	  if (pl:GetUserGroup() == RankDoors[ent:MapCreationID()]) then -- here it gets the rank and checks if it should have perms
  	  	 return 
  	  	 else
          PrintMessage( HUD_PRINTTALK, donthaveaccess)
  	  	 end
    if (pl:getDarkRPVar("job") ~= JobDoors[ent:MapCreationID()]) then -- here it gets the jobs and checks if it should have perms
    	
      return false
    end
end
end)
