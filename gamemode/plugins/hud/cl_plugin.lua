local PLUGIN = PLUGIN

--[[---------------------------------------------------------------------------
Display notifications
- Credits to FPtje for DarkRP.notify functionality.
- SV: https://github.com/FPtje/DarkRP/blob/a54ed7c50a99a23d8d99305b1321590c2ead9eeb/gamemode/modules/base/sv_util.lua
- CL: https://github.com/FPtje/DarkRP/blob/a54ed7c50a99a23d8d99305b1321590c2ead9eeb/gamemode/modules/hud/cl_hud.lua#L366
---------------------------------------------------------------------------]]--
local function DisplayNotify(msg)
	local txt = msg:ReadString()
	GAMEMODE:AddNotify(txt, msg:ReadShort(), msg:ReadLong())
	surface.PlaySound("buttons/lightswitch2.wav")

	-- Log to client console
	MsgC(Color(255, 20, 20, 255), "["..fruit.Name.."]", Color(200, 200, 200, 255), txt, "\n")
end
usermessage.Hook("_Notify", DisplayNotify)