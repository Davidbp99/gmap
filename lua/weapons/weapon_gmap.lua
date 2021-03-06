AddCSLuaFile()
SWEP.Author = "David"
SWEP.Purpose = "Get Map Id"
SWEP.Category = "gMap"
SWEP.Instructions = "LMB+RMB To get map creation id"
SWEP.ViewModelFOV = 62
SWEP.ViewModelFlip = false
SWEP.PrintName = "gMap"
SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.HoldType = "normal"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.AttackDelay = 0
SWEP.droppable = false
SWEP.NextAttackW = 0

function SWEP:DrawWorldModel()
end

function SWEP:Initialize()
    self:SetHoldType("normal")
end

function SWEP:Holster()
    return true
end

function SWEP:CanPrimaryAttack()
    return true
end

-- lua_run Entity(1):ChatPrint(Entity(1):GetEyeTrace().Entity:MapCreationID())
function SWEP:SecondaryAttack()

    local getmapid = LocalPlayer():GetEyeTrace().Entity:MapCreationID()
    PrintMessage(HUD_PRINTTALK, getmapid)
end

function SWEP:PrimaryAttack()

    local getmapid = Entity(1):GetEyeTrace().Entity:MapCreationID(self)
    PrintMessage(HUD_PRINTTALK, getmapid)
end