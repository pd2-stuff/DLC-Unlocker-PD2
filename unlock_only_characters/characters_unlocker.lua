function GetDLCName(check_data)
	for dlc_name, dlc_data in pairs(Global.dlc_manager.all_dlc_data) do
		if dlc_data == check_data then
			return dlc_name
		end
	end
	return ""
end

function IsCharacterDLC(dlc_name)
	for _,dlc in pairs(
		{
		"character_pack_clover",
		"hl_miami",
		"character_pack_dragan",
		"character_pack_sokol",
		"hlm2_deluxe",
		"dragon",
		"chico",
		"opera",
		"wild",
		"ecp",
		"john_wick_character",
		}
	) do
		if dlc == dlc_name then
			return true
		end
	end
	return false
end

old_steam_check = old_steam_check or WinSteamDLCManager._check_dlc_data
old_epic_check = old_epic_check or WinEpicDLCManager._check_dlc_data
old_win_check = old_win_check or WINDLCManager._check_dlc_data

function WinSteamDLCManager:_check_dlc_data(dlc_data)
	if IsCharacterDLC(GetDLCName(dlc_data)) then
		return true
	end
    return old_steam_check(self, dlc_data)
end
function WinEpicDLCManager:_check_dlc_data(dlc_data)
	if IsCharacterDLC(GetDLCName(dlc_data)) then
		return true
	end
    return old_epic_check(self, dlc_data)
end
function WINDLCManager:_check_dlc_data(dlc_data)
	if IsCharacterDLC(GetDLCName(dlc_data)) then
		return true
	end
    return old_win_check(self, dlc_data)
end
