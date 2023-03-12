old_verify_dlcs = old_verify_dlcs or WINDLCManager._verify_dlcs
function WINDLCManager:_verify_dlcs()
	old_verify_dlcs(self)
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
		}
	) do
		Global.dlc_manager.all_dlc_data[dlc].verified = true
	end
end