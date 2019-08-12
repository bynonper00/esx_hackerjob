local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}


local IsDead                    = false

ESX                             = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

function DrawSub(msg, time)
	ClearPrints()
	SetTextEntry_2("STRING")
	AddTextComponentString(msg)
	DrawSubtitleTimed(time, 1)
end

function ShowLoadingPromt(msg, time, type)
	Citizen.CreateThread(function()
		Citizen.Wait(0)
		BeginTextCommandBusyString("STRING")
		AddTextComponentString(msg)
		EndTextCommandBusyString(type)
		Citizen.Wait(time)

		RemoveLoadingPrompt()
	end)
end








----------------------------------------------------
-------------------------------------bbbbbbbbbbbbbbb


-----------------------------------------bbbbbbbbbbbbbbbbbb

---------------------------------aaaa


local sonTest = 0

function hackerActionMenu()

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'mobile_ambulance_actions', {
		title    = _U('hacker_baslik'),
		align    = 'top-left',
		elements = {
			{label = _U('kredi_hack'), value = 'kredihack_menu'},
			{label = _U('kapi_hack'), value = 'kapihack'},
			{label =  'Aktif Polis Sayısını Gör - <span style="color:green;">$15000</span>', value = 'aktifPolice'}
		}
	}, function(data, menu)
		ESX.UI.Menu.CloseAll()
		if data.current.value == 'kredihack_menu' then
		
			
			
			
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'kredihack_menu', {
				title    = _U('kredihack_menu_title'),
				align    = 'top-left',
				elements = {
					{label = _U('kolay_kredi'), value = 'kolay'},
					{label = _U('orta_kredi'), value = 'orta'},
					{label = _U('zor_kredi'), value = 'zor'},
					{label = _U('enzor_kredi'), value = 'enzor'}				
				}
			}, function(data, menu)
				ESX.UI.Menu.CloseAll()
				
				
				
					if data.current.value == 'kolay' and GetGameTimer() - sonTest > Config.HackSure * 60000 then
					
						sonTest = GetGameTimer()
						
						TriggerEvent("mhacking:show")
						TriggerEvent("mhacking:start",7,30,mycbkolay)
						
						exports.pNotify:SendNotification(
							{
								text = ("W, A, S, D tuşlarını kullanarak seçim yapabilir ve BOŞLUK tuşuyla sol kod bloğundan seçim yapabilirsin."),
								type = "alert",
								theme = "metroui",
								timeout = 3000,
								layout = "bottomRight"
							}
						)
							exports.pNotify:SendNotification(
							{
								text = ("Yön tuşlarını kullanarak seçim yapabilir ve ENTER tuşuyla sağ kod bloğundan seçim yapabilirsin."),
								type = "alert",
								theme = "metroui",
								timeout = 3000,
								layout = "bottomRight"
							}
						)
						
						
					
				
					
					elseif data.current.value == 'orta' and GetGameTimer() - sonTest > Config.HackSure * 60000 then
					
					sonTest = GetGameTimer()
						
					TriggerEvent("mhacking:show")
					TriggerEvent("mhacking:start",5,30,mycborta)
					
					exports.pNotify:SendNotification(
                {
                    text = ("W, A, S, D tuşlarını kullanarak seçim yapabilir ve BOŞLUK tuşuyla sol kod bloğundan seçim yapabilirsin."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "bottomRight"
                }
            )
					exports.pNotify:SendNotification(
                {
                    text = ("Yön tuşlarını kullanarak seçim yapabilir ve ENTER tuşuyla sağ kod bloğundan seçim yapabilirsin."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "bottomRight"
                }
            )
								
					elseif data.current.value == 'zor' and GetGameTimer() - sonTest > Config.HackSure * 60000 then
					
					sonTest = GetGameTimer()
						
					TriggerEvent("mhacking:show")
					TriggerEvent("mhacking:start",4,30,mycbzor)
					
		exports.pNotify:SendNotification(
                {
                    text = ("W, A, S, D tuşlarını kullanarak seçim yapabilir ve BOŞLUK tuşuyla sol kod bloğundan seçim yapabilirsin."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "bottomRight"
                }
            )
		exports.pNotify:SendNotification(
                {
                    text = ("Yön tuşlarını kullanarak seçim yapabilir ve ENTER tuşuyla sağ kod bloğundan seçim yapabilirsin."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "bottomRight"
                }
            )

					elseif data.current.value == 'enzor' and GetGameTimer() - sonTest > Config.HackSure * 60000 then
					
					sonTest = GetGameTimer()
						
					TriggerEvent("mhacking:show")
					TriggerEvent("mhacking:start",2,25,mycbenzor)

		exports.pNotify:SendNotification(
                {
                    text = ("W, A, S, D tuşlarını kullanarak seçim yapabilir ve BOŞLUK tuşuyla sol kod bloğundan seçim yapabilirsin."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "bottomRight"
                }
            )
		exports.pNotify:SendNotification(
                {
                    text = ("Yön tuşlarını kullanarak seçim yapabilir ve ENTER tuşuyla sağ kod bloğundan seçim yapabilirsin."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "bottomRight"
                }
            )


		else 
						
						 local zamanYeniHack = Config.HackSure * 60000 - (GetGameTimer() - sonTest)
						   exports.pNotify:SendNotification({
							text = ""..math.floor(zamanYeniHack / 60000 + 1).. " dakika sonra tekrar dene.",
							type = "error", 
							timeout = 1000, 
							layout = "centerRight", 
							queue = "right", 
							killer = true, 
							animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}
						})


					end
					
			
				
			
			
			end, function(data, menu)
				menu.close()
			end)
			
			
								
					elseif data.current.value == 'kapihack' then
					
					TriggerServerEvent('esx_doorlock:hack', mycb)
					
		exports.pNotify:SendNotification(
                {
                    text = ("W, A, S, D tuşlarını kullanarak seçim yapabilir ve BOŞLUK tuşuyla sol kod bloğundan seçim yapabilirsin."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "bottomRight"
                }
            )
			
		exports.pNotify:SendNotification(
                {
                    text = ("Yön tuşlarını kullanarak seçim yapabilir ve ENTER tuşuyla sağ kod bloğundan seçim yapabilirsin."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "bottomRight"
                }
            )
	
	
					elseif data.current.value == 'aktifPolice' then
														

					TriggerServerEvent('esx_hackerjob:hackparasiAl')

			end
	end, function(data, menu)
		menu.close()
	end)
end

------------------------------------aaaa
	
	
		

function mycbkolay(success, timeremaining)
    if success then
		TriggerServerEvent('esx_hackerjob:hackparasi', 758)
        print('Success with '..timeremaining..'s remaining.')
		
		
		exports.pNotify:SendNotification(
                {
                    text = ("Tebrikler! Hesabınıza 758$ yatırıldı 15 dakika sonra tekrar deneyebilirsiniz."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "topRight"
                }
            )
			
			
        TriggerEvent('mhacking:hide')
    else
        print('Failure')
        TriggerEvent('mhacking:hide')
				
			exports.pNotify:SendNotification(
                {
                    text = ("Başaramadın!"),
                    type = "error",
					theme = "metroui",
                    timeout = 3000,
                    layout = "topRight"
                }
            )
		
    end
end


function mycborta(success, timeremaining)
    if success then
		TriggerServerEvent('esx_hackerjob:hackparasi', 1758)
        print('Success with '..timeremaining..'s remaining.')
		
		exports.pNotify:SendNotification(
                {
                    text = ("Tebrikler! Hesabınıza 1758$ yatırıldı 15 dakika sonra tekrar deneyebilirsiniz."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "topRight"
                }
            )
		
        TriggerEvent('mhacking:hide')
    else
        print('Failure')
        TriggerEvent('mhacking:hide')
		
			exports.pNotify:SendNotification(
                {
                    text = ("Başaramadın!"),
                    type = "error",
					theme = "metroui",
                    timeout = 3000,
                    layout = "topRight"
                }
            )
    end
end

function mycbzor(success, timeremaining)
    if success then
		TriggerServerEvent('esx_hackerjob:hackparasi', 2671)
        print('Success with '..timeremaining..'s remaining.')
		
		exports.pNotify:SendNotification(
                {
                    text = ("Tebrikler! Hesabınıza 2671$ yatırıldı 15 dakika sonra tekrar deneyebilirsiniz."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "topRight"
                }
            )
		
        TriggerEvent('mhacking:hide')
    else
        print('Failure')
        TriggerEvent('mhacking:hide')
		
		exports.pNotify:SendNotification(
                {
                    text = ("Başaramadın!"),
                    type = "error",
					theme = "metroui",
                    timeout = 3000,
                    layout = "topRight"
                }
            )
			
    end
end

function mycbenzor(success, timeremaining)
    if success then
		TriggerServerEvent('esx_hackerjob:hackparasi', 4827)
        print('Success with '..timeremaining..'s remaining.')
		
		exports.pNotify:SendNotification(
                {
                    text = ("Tebrikler! Hesabınıza 4827$ yatırıldı 15 dakika sonra tekrar deneyebilirsiniz."),
                    type = "alert",
					theme = "metroui",
                    timeout = 3000,
                    layout = "topRight"
                }
            )

        TriggerEvent('mhacking:hide')
    else
        print('Failure')
        TriggerEvent('mhacking:hide')
		
		exports.pNotify:SendNotification(
                {
                    text = ("Başaramadın!"),
                    type = "error",
					theme = "metroui",
                    timeout = 3000,
                    layout = "topRight"
                }
            )
			
    end
end

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)


-- Create Blips



-- Key Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		

		if IsControlJustReleased(0, Keys['F6']) and not IsDead and ESX.PlayerData.job and ESX.PlayerData.job.name == 'hackerjob' then
			hackerActionMenu()
			
		end
	end
end)

AddEventHandler('esx:onPlayerDeath', function()
	IsDead = true
end)

AddEventHandler('playerSpawned', function(spawn)
	IsDead = false
end)
