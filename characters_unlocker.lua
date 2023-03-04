function GenericDLCManager:has_character_pack_sokol()
	return true
end

function GenericDLCManager:has_character_pack_clover()
        return true
end

function GenericDLCManager:has_character_pack_dragan()
        return true
end
 
function WINDLCManager:_verify_dlcs()
	for dlc_name, dlc_data in pairs(Global.dlc_manager.all_dlc_data) do
		if dlc_name == "character_pack_sokol" then
			dlc_data.verified = true
		end
		if dlc_name == "character_pack_dragan" then
                        dlc_data.verified = true
                end
		if dlc_name == "character_pack_clover" then
			dlc_data.verified = true
		end
		if not dlc_data.verified and self:_check_dlc_data(dlc_data) then
			dlc_data.verified = true
		end
	end
end
