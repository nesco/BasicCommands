-- main.lua

-- Implements the main plugin entrypoint



function Initialize(Plugin)
 	-- Load the InfoReg shared library:
	dofile(cPluginManager:GetPluginsPath() .. "/InfoReg.lua")
 		Plugin:SetName("Commands") 
 		Plugin:SetVersion(1)
 		
 		return true
end
