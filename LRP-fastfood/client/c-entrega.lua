
ESX = nil
local PlayerData                = {}
Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(50)
    end
    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(50)
    end

    PlayerData = ESX.GetPlayerData()

end)  

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
   PlayerData.job = job
end)

Combo1bT = true
Citizen.CreateThread(function()
    while Combo1bT do
    local ped = PlayerPedId()
    local coords = GetEntityCoords(PlayerPedId()) 
    local tiemposuerte = math.random(1,3)
     Citizen.Wait(12)

 if not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityDead(GetPlayerPed(-1)) then
    
  if PlayerData.job ~= nil and PlayerData.job.name == 'fastfood' and not IsEntityDead( ped ) then

       if GetDistanceBetweenCoords(coords, Config.EntregaCombo1b.x, Config.EntregaCombo1b.y, Config.EntregaCombo1b.z, true) < 0.65 then
       DrawText3DRojo(vector3(Config.EntregaCombo1b.x, Config.EntregaCombo1b.y, Config.EntregaCombo1b.z), "Presiona [E] para cocinar", 0.30)    

                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.EntregaCombo1b.x, Config.EntregaCombo1b.y, Config.EntregaCombo1b.z, true) < 0.50 then

                            if IsControlJustReleased(1, 51) then 
                     EntregaOrdenCombotest()
                     FreezeEntityPosition(ped, true) 
                     Combo1bT = false
                     Citizen.Wait(tiemposuerte * 60000)    
                     Combo1bT = true
                   end
                end
            end
end

else
    Citizen.Wait(1000)    
    end
   end
end)

Combo2bT = true
Citizen.CreateThread(function()
    while Combo2bT do
    local ped = PlayerPedId()
    local coords = GetEntityCoords(PlayerPedId()) 
    local tiemposuerte = math.random(1,3)
     Citizen.Wait(12)
if not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityDead(GetPlayerPed(-1)) then

   if PlayerData.job ~= nil and PlayerData.job.name == 'fastfood' and not IsEntityDead( ped ) then

       if GetDistanceBetweenCoords(coords, Config.EntregaCombo2b.x,Config.EntregaCombo2b.y,Config.EntregaCombo2b.z, true) < 0.65 then
     DrawText3DRojo(vector3(Config.EntregaCombo2b.x,Config.EntregaCombo2b.y,Config.EntregaCombo2b.z), "Presiona [E] para entregar la orden", 0.30)    
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.EntregaCombo2b.x, Config.EntregaCombo2b.y, Config.EntregaCombo1b.z, true) < 0.50 then
                     
                            if IsControlJustReleased(1, 51) then

                 EntregaOrdenCombotest()
                 FreezeEntityPosition(ped, true) 
                    Combo2bT = false
                    Citizen.Wait(tiemposuerte * 60000)                  
                    Combo2bT = true
                   end
                end
            end
 end   

  else
    Citizen.Wait(1000)
  end       
   end
end) 

Combo3bT = true
Citizen.CreateThread(function()
    while Combo3bT do
    local ped = PlayerPedId()
    local coords = GetEntityCoords(PlayerPedId()) 
    local tiemposuerte = math.random(1,3)
    Citizen.Wait(12)

 if not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityDead(GetPlayerPed(-1)) then
   
     if PlayerData.job ~= nil and PlayerData.job.name == 'fastfood' and not IsEntityDead( ped ) then

       if GetDistanceBetweenCoords(coords, Config.EntregaCombo3b.x,Config.EntregaCombo3b.y,Config.EntregaCombo3b.z, true) < 0.65 then
     DrawText3DRojo(vector3(Config.EntregaCombo3b.x,Config.EntregaCombo3b.y,Config.EntregaCombo3b.z), "Presiona [E] para entregar la orden", 0.30)    
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.EntregaCombo3b.x, Config.EntregaCombo3b.y, Config.EntregaCombo3b.z, true) < 0.50 then
                     
                            if IsControlJustReleased(1, 51) then

                 EntregaOrdenCombotest()
                 FreezeEntityPosition(ped, true) 
                    Combo3bT = false
                    Citizen.Wait(tiemposuerte * 60000)                  
                    Combo3bT = true
                   end
                end
            end
    end

  else
    Citizen.Wait(1000)
  end  

   end
end)

Combo4cT = true
Citizen.CreateThread(function()
    while Combo4cT do
    local ped = PlayerPedId()
    local coords = GetEntityCoords(PlayerPedId()) 
    local tiemposuerte = math.random(1,3)
    Citizen.Wait(12)
 if not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityDead(GetPlayerPed(-1)) then

 if PlayerData.job ~= nil and PlayerData.job.name == 'fastfood' and not IsEntityDead( ped ) then

       if GetDistanceBetweenCoords(coords, Config.EntregaCombo4c.x,Config.EntregaCombo4c.y,Config.EntregaCombo4c.z, true) < 0.65 then
     DrawText3DRojo(vector3(Config.EntregaCombo4c.x,Config.EntregaCombo4c.y,Config.EntregaCombo4c.z), "Presiona [E] para entregar la orden", 0.30)    
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.EntregaCombo4c.x, Config.EntregaCombo4c.y, Config.EntregaCombo4c.z, true) < 0.50 then
                     
                            if IsControlJustReleased(1, 51) then
                 EntregaOrdenCombotest()
                 FreezeEntityPosition(ped, true) 
                    Combo4cT = false
                    Citizen.Wait(tiemposuerte * 60000)                  
                    Combo4cT = true
                   end
                end
            end
 end 

   else
    Citizen.Wait(1000)
  end  

   end
end)


Combo5aT = true
Citizen.CreateThread(function()
    while Combo5aT do
    local ped = PlayerPedId()
    local coords = GetEntityCoords(PlayerPedId()) 
    local tiemposuerte = math.random(1,3)

    Citizen.Wait(12)
 if not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityDead(GetPlayerPed(-1)) then

 if PlayerData.job ~= nil and PlayerData.job.name == 'fastfood' and not IsEntityDead( ped ) then

       if GetDistanceBetweenCoords(coords, Config.EntregaCombo5a.x,Config.EntregaCombo5a.y,Config.EntregaCombo5a.z, true) < 0.65 then
     DrawText3DRojo(vector3(Config.EntregaCombo5a.x,Config.EntregaCombo5a.y,Config.EntregaCombo5a.z), "Presiona [E] para entregar la orden", 0.30)    
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.EntregaCombo5a.x, Config.EntregaCombo5a.y, Config.EntregaCombo5a.z, true) < 0.50 then
                     
                            if IsControlJustReleased(1, 51) then

                 EntregaOrdenCombotest()
                 FreezeEntityPosition(ped, true) 
                    Combo5aT = false
                    Citizen.Wait(tiemposuerte * 60000)                  
                    Combo5aT = true
                   end
                end
            end
 end  

else
  Citizen.Wait(1000)
end
   end
end)


function EntregaOrdenCombotest()
     local ped = GetPlayerPed(-1)
    local elements = {
         {label = '<span style="color:#007fff;"> Entregar Orden Combo1</span>' ,   value = 'Item1'},
         {label = '<span style="color:#ff1304;"> Entregar Orden Combo2 </span>' ,   value = 'Item2'},
         {label = '<span style="color:#ff6400;"> Entregar Orden Combo3 </span>' ,   value = 'Item3'},
         {label = '<span style="color:#7f00ff;"> Entregar Orden Combo4 </span>' ,   value = 'Item4'},
         {label = '<span style="color:#f4ad00;"> Entregar Orden Combo5 </span>' ,   value = 'Item5'},

         {label = 'Salir   &nbsp;&nbsp;<span style="color:#EA1313;"> Cerrar Ventana</span>' ,  value = 'Salir'}

    }

    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default',  GetCurrentResourceName(), 'EntregaOrden', {
        title    = ' EntregaOrden',
        align    = 'top-right',
        elements = elements
    }, function(data, menu)

        if data.current.value == 'Item1' then
            TriggerServerEvent("LRP-EntregaOrdenMesa:combo1")
            Animacionentrega()
           


      exports['progressBars']:startUI(Config.TiempoFD, " Cobrando ")
            Citizen.Wait(Config.TiempoFD)
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)

        elseif data.current.value == 'Item2' then
            TriggerServerEvent("LRP-EntregaOrdenMesa:combo2")
            Animacionentrega()
        

      exports['progressBars']:startUI(Config.TiempoFD, " Cobrando ")
            Citizen.Wait(Config.TiempoFD)
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)

 elseif data.current.value == 'Item3' then
            TriggerServerEvent("LRP-EntregaOrdenMesa:combo3")
            Animacionentrega()
          



      exports['progressBars']:startUI(Config.TiempoFD, " Cobrando ")
            Citizen.Wait(Config.TiempoFD)
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)

 elseif data.current.value == 'Item4' then
            TriggerServerEvent("LRP-EntregaOrdenMesa:combo4")
            Animacionentrega()
         

      exports['progressBars']:startUI(Config.TiempoFD, " Cobrando ")
            Citizen.Wait(Config.TiempoFD)
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)

elseif data.current.value == 'Item5' then
            TriggerServerEvent("LRP-EntregaOrdenMesa:combo5")
            Animacionentrega()
        


      exports['progressBars']:startUI(Config.TiempoFD, " Cobrando ")
            Citizen.Wait(Config.TiempoFD)
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)

        elseif data.current.value == 'Salir' then
         menu.close()
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)

        end
    end)
end

function Animacionentrega()
 local ped = GetPlayerPed(-1)
 local anim1 = "anim@heists@planning_board@" -- 
 local lib2  = "3_picture_action" 

local anim12 = "mini@repair"
 local lib22 = "fixing_a_ped"

ESX.Streaming.RequestAnimDict(anim1, function()
TaskPlayAnim(ped, anim1, lib2 , 8.0, -8, 800, 1, 1, 0, 0, 0)
end)
 Citizen.Wait(800)

ESX.Streaming.RequestAnimDict(anim12, function()
TaskPlayAnim(ped,anim12, lib22 , 8.0, -8,1800, 1, 1, 0, 0, 0)
end)

end



DrawText3DRojo = function(coords, text, scale)
    local x,y,z = coords.x, coords.y, coords.z
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local pX, pY, pZ = table.unpack(GetGameplayCamCoords())

    SetTextScale(scale, scale)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEntry("STRING")
    SetTextCentre(1)
    SetTextColour(255, 255, 255, 215)

    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 470

    DrawRect(_x, _y + 0.0090, 0.025 + factor, 0.030,  245, 8, 8 , 100)
end
