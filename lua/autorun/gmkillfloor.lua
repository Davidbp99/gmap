print("Map Addon Loaded")

-- Killfloor 3834

local killflooraccess = {
[3834] = "superadmin", -- Kill floor
}
local donthaveaccess = "You Can't Access This"
local nottobeeffected = {
["superadmin"] = true,



}
local pointAkillfloor = "305.067566 5814.046387 2001.242554"
local pointBkillfloor = "-211.905014, 5945.804688, 2069.676514"

	hook.Add("PlayerUse", "KillFloor", function(pl, ent)
		 
if (killflooraccess[ent:MapCreationID()]) then 
	if (pl:GetUserGroup() == killflooraccess[ent:MapCreationID()]) then -- here it gets the rank and checks if it should have perms 
  	  	 for k, v in pairs(player.GetAll()) do
		if v:GetPos():WithinAABox(Vector(pointAkillfloor), Vector(pointBkillfloor)) then
		
		else
if (pl:GetUserGroup() == nottobeeffected[pl:GetUserGroup()]) then return end
			v:Kill()
		end
	end
  	  	 else
          print(donthaveaccess)
  	  	 end
	
end


end)