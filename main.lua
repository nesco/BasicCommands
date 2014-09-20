-- main.lua

-- Implements the main plugin entrypoint



function Initialize(Plugin)
 	-- Load the InfoReg shared library:
	dofile(cPluginManager:GetPluginsPath() .. "/InfoReg.lua")
	
 	Plugin:SetName(g_PluginInfo.Name) 
 	Plugin:SetVersion(g_PluginInfo.Version)
 	
 	-- Bind all the commands:
	RegisterPluginInfoCommands();
 		
 	return true
end

function OnDisable()
	LOG( "Disabled BasicCommands!" )
end
