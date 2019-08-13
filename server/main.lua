ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


---------------------------------------------------------------------------------------
----------------------------------BAŞARILI HACK ÖDÜLLERİ-------------------------------
---------------------------------------------------------------------------------------

RegisterServerEvent('esx_hackerjob:hackparasi')
AddEventHandler('esx_hackerjob:hackparasi', function(verilenPara)
local xPlayer = ESX.GetPlayerFromId(source)
xPlayer.addBank(verilenPara)
end)
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------




---------------------------------------------------------------------------------------
-----------------------------------POLİS SAYISI ÖĞRENME--------------------------------
---------------------------------------------------------------------------------------

RegisterServerEvent('esx_hackerjob:hackparasiAl')
AddEventHandler('esx_hackerjob:hackparasiAl', function()
local xPlayer = ESX.GetPlayerFromId(source)
local xPlayers = ESX.GetPlayers()
local price = 15
local _source = source
PoliceConnected = 0
if (xPlayer.getBank() >= price) then
	xPlayer.removeBank(price)
	
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
	
		if xPlayer.job.name == 'police' then
			PoliceConnected = PoliceConnected + 1
		end	
	end
				
			TriggerClientEvent("pNotify:SendNotification", source,{
                    text = ("<b style='color:#67f046'>$15000 </b>Ödedin! Aktif polis sayısı: " .. PoliceConnected .. ""),
                    type = "alert",
					theme = "metroui",
                    timeout = 5000,
                    layout = "topRight",
					queue = "lmao"
                }
            )

			
	else
					TriggerClientEvent("pNotify:SendNotification", source,{
                    text = ("<b style='color:#f23a22'>Hesabında yeterli para yok!</b>"),
                    type = "alert",
					theme = "metroui",
                    timeout = 2500,
                    layout = "topRight",
					queue = "lmao"
                }
            )
	end
end)






