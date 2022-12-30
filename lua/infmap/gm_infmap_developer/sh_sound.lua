
hook.Add("PlayerFootstep", "infmap_ground_footsteps", function(ply, pos, foot, sound, volume, rf)
    -- Trace to see if we're standing on the world
    local tr = util.TraceLine({
        start = pos,
        endpos = pos - Vector(0, 0, 100),
        filter = ply
    })

    if (tr.Entity != game.GetWorld()) then return end
    if (CLIENT) then return true end

	ply:EmitSound(foot == 0 and "Tile.StepLeft" or "Tile.StepRight")
	
    return true
end)
