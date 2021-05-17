print("SCP-008 Map Addon Loaded")

hook.Add("PlayerUse", "scp008change", function(pl, ent)
    if (gMap.ButtonID[ent:MapCreationID()]) then
        if (gMap.SCP008AddonOn == true) then
            for k, v in pairs(player.GetAll()) do
                if v:GetPos():WithinAABox(Vector(gMap.SCP008PointA), Vector(gMap.SCP008PointA)) then
                else
                    if (gMap.SCP008Protection[pl:Team()] == true) then return v:PrintMessage(HUD_PRINTTALK, "You won't be effected SCP-008") end

                    timer.Simple(gMap.SCP008TurningTime / 3, function()
                        if v:IsPlayer() then
                            v:ChatPrint("You start to feel dizzy..")
                        end
                    end)

                    timer.Simple(gMap.SCP008TurningTime / 2, function()
                        if v:IsPlayer() then
                            v:ChatPrint("You have an unsationable urge to eat flesh..")
                        end
                    end)

                    timer.Simple(gMap.SCP008TurningTime, function()
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