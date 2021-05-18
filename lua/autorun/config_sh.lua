gMap = gMap or {}


------[Print]-----

 local PrefixColor = Color(200, 0, 255)
// Console Printing.
function gMap:Print(message)
 
  if SERVER then
    PrefixColor = Color(200, 150, 255)
  end
  MsgC(Color(255, 255, 255), "[")
  MsgC(PrefixColor, "gMap")
  MsgC(Color(255, 255, 255), "] " .. message)
  MsgC(Color(255, 255, 255), "\n")
end






-------[Global Config]---------------
gMap.DeniedMessage = "You Can't Access This"
gMap.FullAccess = {
	["admin"] = true
}

-------[Kill Floor System]---------------
gMap.KillFloorOn = true
gMap.KillFloorAccess = {
[3861] = "admin",
}
gMap.Nottobeeffectedbykillfloor = {
["superadmin"] = true,
}
gMap.KillFloorPointA = "305.067566, 5814.046387, 2001.242554"
gMap.KillFloorPointB = "-211.905014, 5945.804688, 2069.676514"


-------[Button Permission System]---------------
gMap.ButtonSystem = true
gMap.Buttonpermissionrank = {
--[3837] = "gamemasters",
--[3903] = "gamemasters",
--[3893] = "gamemasters",
}
gMap.Buttonpermissionjob = {
 -- [mapid] = "job name", (job name does not team TEAM_)
}


-------[SCP-008 System]---------------(WIP)
gMap.SCP008AddonOn = false
gMap.ButtonID = {
    --[3411] = true
}
gMap.SCP008PointA = "428.834076, -950.255554, 7985.613770"
gMap.SCP008PointB = "194.459717, -1234.658569, 7873.828613"
gMap.SCP008TurningTime = 10
gMap.SCP008Protection = {
	[TEAM_STAFF] = true,
}

gMap:Print("gMap Config")