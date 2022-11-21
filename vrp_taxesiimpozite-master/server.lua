--Settings--
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_salar")


salarii = {

	{"taxe.paycheck", 250, ""},
}


RegisterServerEvent('salar1')
AddEventHandler('salar1', function(salar1)
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	pictura = "CHAR_ANDREAS"
	titlu = "Banca Nationala"
	mesaj = "Taxele au fost ridicate mane, sry ~g~$"
	for i, v in pairs(salarii) do
		permisiune = v[1]
		if(vRP.hasPermission({user_id, permisiune}))then
			salar1 = v[2]
			deLaGrupa = v[3]
	             vRP.tryFullPayment({user_id,salar1})
			vRPclient.notifyPicture(player,{pictura, 9, titlu, false, mesaj..salar1.. "~w~. "..deLaGrupa})
		end
	end
end)