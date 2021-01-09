CFCTurretMuter = {}
CFCTurretMuter.hookName = "CFC_TurretMuter_Watcher"

function CFCTurretMuter:MuteTurret( turret )
    turret.Sound = ""
    turret.sound = ""
    turret.SetSound = function()
        -- noop
    end
end

function CFCTurretMuter:CheckSpawnedEnt( ent )
    if not IsValid( ent ) then return end
    if ent:GetClass() ~= "gmod_turret" then return end

    self:MuteTurret( ent )
end

hook.Add( "OnEntityCreated", CFCTurretMuter.hookName, function( ent )
    CFCTurretMuter:CheckSpawnedEnt( ent )
end )
