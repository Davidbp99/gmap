print("SCP-008 Map Addon Loaded")

local scp008 = {
    [3411] = true
}

local stage = "closed"

local time = 10

local staffonduty = {
    [TEAM_STAFF] = true,
}

local pointAscp008 = "428.834076, -950.255554, 7985.613770"
local pointBscp008 = "194.459717, -1234.658569, 7873.828613"

hook.Add("PlayerUse", "scp008change", function(pl, ent)
    if (scp008[ent:MapCreationID()]) then
        for k, v in pairs(player.GetAll()) do
            if v:GetPos():WithinAABox(Vector(pointAscp008), Vector(pointBscp008)) then
            else
                if (staffonduty[pl:Team()] == true) then return v:PrintMessage(HUD_PRINTTALK, "You won't be effected SCP-008") end
                
            if v:GetPos():WithinAABox(Vector(pointAscp008), Vector(pointBscp008)) then
                

                timer.Simple(time / 3, function()
                    if v:IsPlayer() then
                        v:ChatPrint("You start to feel dizzy..")
                    end
                end)

                timer.Simple(time / 2, function()
                    if v:IsPlayer() then
                        v:ChatPrint("You have an unsationable urge to eat flesh..")
                    end
                end)

                timer.Simple(time, function()
                    if v:IsPlayer() then
                        v:SetModel("models/player/zombie_classic.mdl")
                        v:StripWeapons()
                        v:Give("weapon_hpwr_stick")
                        v:EmitSound("npc/zombie/zombie_pain5.mp3")
                        v:SetNoDraw(false)
                        v:DoAnimationEvent(ACT_HL2MP_ZOMBIE_SLUMP_RISE)
                        v:SetCollisionGroup(COLLISION_GROUP_NONE)

                    end
                end)
            end
        end
        
    end
end
end)