InfMap.chunk_resolution = 1

InfMap.filter["infmap_terrain_collider"] = true	// dont pass in chunks
InfMap.disable_pickup["infmap_terrain_collider"] = true	// no pickup

function InfMap.height_function(x, y) 
	return -15
end

if CLIENT then return end

// TO THE MAX
hook.Add("InitPostEntity", "infmap_physenv_setup", function()
	local mach = 270079	// mach 20 in hammer units
	physenv.SetPerformanceSettings({MaxVelocity = mach, MaxAngularVelocity = mach})
	RunConsoleCommand("sv_maxvelocity", tostring(mach))
end)