function script_path()
    local str = debug.getinfo(2, "S").source:sub(2)
    return str:match("(.*/)")
 end

function GetDLCName(check_data)
	for dlc_name, dlc_data in pairs(Global.dlc_manager.all_dlc_data) do
		if dlc_data == check_data then
			return dlc_name
		end
	end
	return ""
end

function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

local heists = {}

function get_heists()
    local filename = script_path() .."dlcs-to-unlock.txt"
    local file = io.open(filename, "r") 

    if file == nil then 
        
        file = io.open(filename, "a") 
        file:write("*")
        file:close() 
    end

    file = io.open(filename, "r") 
    for line in file:lines() do
        table.insert (heists, line)
    end

    file:close()
    
end

function unlock_dlcs(dlc_data)
    if(heists[1] == nil) then
        get_heists()
    end

    if(heists[1] == "*") then
        return true
    end

    if has_value(heists, GetDLCName(dlc_data)) then
        return true 
    end

    return false
end

old_steam_check = old_steam_check or WinSteamDLCManager._check_dlc_data
old_epic_check = old_epic_check or WinEpicDLCManager._check_dlc_data
old_win_check = old_win_check or WINDLCManager._check_dlc_data


function WinSteamDLCManager:_check_dlc_data(dlc_data)
    -- if has_value(heists, dlc_data.app_id) then
    --     return true 
    -- end

    return unlock_dlcs(dlc_data) or old_steam_check(self, dlc_data)

end

function WinEpicDLCManager:_check_dlc_data(dlc_data)

    return unlock_dlcs(dlc_data) or old_epic_check(self, dlc_data)
end

function WINDLCManager:_check_dlc_data(dlc_data)

    return unlock_dlcs(dlc_data) or old_epic_check(self, dlc_data)
end