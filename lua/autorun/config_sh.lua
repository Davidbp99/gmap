print("gMap Config")

gMap = gMap or {}

-------[Global Config]---------------
gMap.DeniedMessage = "You Can't Access This"
gMap.FullAccess = {
	["superadmin"] = true,
}

-------[Kill Floor System]---------------
gMap.KillFloorOn = false
gMap.KillFloorAccess = {
[3834] = "superadmin",
}
gMap.Nottobeeffectedbykillfloor = {
["superadmin"] = true,
}
gMap.KillFloorPointA = "305.067566, 5814.046387, 2001.242554"
gMap.KillFloorPointB = "-211.905014, 5945.804688, 2069.676514"


-------[Button Permission System]---------------
gMap.ButtonSystem = true
gMap.Buttonpermissionrank = {
[3837] = "gamemasters",
[3903] = "gamemasters",
[3893] = "gamemasters",
}
gMap.Buttonpermissionjob = {
 -- [mapid] = "job name", (job name does not team TEAM_)
}


-------[SCP-008 System]---------------
gMap.SCP008AddonOn = false
gMap.ButtonID = {
    [3411] = true
}
gMap.SCP008PointA = "428.834076, -950.255554, 7985.613770"
gMap.SCP008PointB = "194.459717, -1234.658569, 7873.828613"
gMap.SCP008TurningTime = 10
gMap.SCP008Protection = {
	[TEAM_STAFF] = true,
}