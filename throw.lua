function HandleThrowCommand(Split, Player)
		if (Split[2] == nil) then
				Player:SendMessage(cChatColor.Blue .. "Usage: " .. Split[1] .. " [arrow|egg|expbottle|fireball|firecharge|skull|snowball] ")
				return true
		end
		
		local speed = 30
		Id = Throw(Player, Split[2], 30)
			
		if (Id == false) then
				Player:SendMessage(cChatColor.Blue .. "Usage: " .. Split[1] .. " [arrow|egg|expbottle|fireball|firecharge|skull|snowball] ")
				return true
		end
		
		return true
end
