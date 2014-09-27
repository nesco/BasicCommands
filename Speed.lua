function HandleSpeedCommand(Split, Player)
			if (#Split == 2) then
					SetGlobalMaxSpeed(Player, tonumber(Split[2]))
					return true
					
			elseif (#Split == 3) then
					SetMaxSpeed(Player, tonumber(Split[2]), Split[3])
					return true
					
			elseif (#Split == 4) then
					local exist = false
					cRoot:Get():FindAndDoWithPlayer(Split[2], 
							function(a_Player)
									exist = true
									SetMaxSpeed(a_Player, tonumber(Split[3]), Split[4])
									return true
							end
					)
					if not exist then
							Player:SendMessage(cChatColor.Rose .. "Player couldn't be found.")
					end
					return true
			end
			
			Player:SendMessage(cChatColor.Blue .. "Usage: " .. Split[1] .. " [player] speed [mode]")
			Player:SendMessage(cChatColor.Blue .. "Mode : walking, flying, sprinting")
			return true
end
	
