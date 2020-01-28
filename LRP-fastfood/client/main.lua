local PlayerData                = {}
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(45)
    end

    PlayerData = ESX.GetPlayerData()


end)  

objects = {}

function refri()
    local refris = CreateObject(GetHashKey("v_res_fridgemoda"),-1195.40, -899.93, 14.0, false, false, false) 
    FreezeEntityPosition(refris, true)
    SetEntityHeading(refris,GetEntityHeading(refris)+0)
    table.insert(objects, refris)
    return objects

end

Citizen.CreateThread(function()
    Citizen.Wait(0)
    objects = refri()
end)




RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
   PlayerData.job = job
end)


Citizen.CreateThread(function()
    blip1 = AddBlipForCoord(Config.vestuariofd.x, Config.vestuariofd.y, Config.vestuariofd.z)
    SetBlipSprite(blip1, 80)
    SetBlipColour(blip1, 47)
    SetBlipAsShortRange(blip1, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("FastFood")
    EndTextCommandSetBlipName(blip1)   
    SetBlipScale(blip1,0.8)
end)


Citizen.CreateThread(function()
    while true do
  local ped = PlayerPedId()
        Citizen.Wait(12)


   if not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityDead(GetPlayerPed(-1)) then
      
            if PlayerData.job ~= nil and PlayerData.job.name == 'fastfood' and not IsEntityDead( ped ) then
                if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.vestuariofd.x, Config.vestuariofd.y, Config.vestuariofd.z, true) < 5 then
                    DrawMarker(20, Config.vestuariofd.x, Config.vestuariofd.y, Config.vestuariofd.z, 0, 0, 0, 0, 0, 90.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
                        if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.vestuariofd.x, Config.vestuariofd.y, Config.vestuariofd.z, true) < 1 then
                            
                                if IsControlJustReleased(1, 51) then
                                    Vestuario() 
                                end
                            end
                        end
                    end
else
  Citizen.Wait(1000)
end


                end
            end)



marcadorCC  = true
marcadorCC2 = true
Citizen.CreateThread(function()
    
  while marcadorCC do
  local ped = PlayerPedId()
  local coords = GetEntityCoords(PlayerPedId())  
    Citizen.Wait(12)



   if not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityDead(GetPlayerPed(-1)) then

 if PlayerData.job ~= nil and PlayerData.job.name == 'fastfood' and not IsEntityDead( ped ) then

   if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.marcador1.x, Config.marcador1.y ,Config.marcador1.z, true) < 4 then
         DrawMarker(0,Config.marcador1.x, Config.marcador1.y,Config.marcador1.z, 0, 0, 0, 0, 0, 55.0, 1.2, 1.2, 0.5, 0, 155, 253, 100, 0, 0, 2, 0, 0, 0, 0)            
    
            if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.marcador1.x, Config.marcador1.y,Config.marcador1.z, true) < 1.3 then
                
                    if IsControlJustReleased(1, 51) then
               
               PedidoOrden()
             FreezeEntityPosition(ped,true)
               marcadorCC = false
               Citizen.Wait(Config.TiempoOrden *1000)
               marcadorCC = true                                 
           
            end
        
        end
   end

end 
      else
  Citizen.Wait(1000)
  end
end

end)




Citizen.CreateThread(function()
    
  while marcadorCC2 do
  local ped = PlayerPedId()
  local coords = GetEntityCoords(PlayerPedId())  
 Citizen.Wait(12)

   if not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityDead(GetPlayerPed(-1)) then

 if PlayerData.job ~= nil and PlayerData.job.name == 'fastfood' and not IsEntityDead( ped ) then

   if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.marcador2.x, Config.marcador2.y ,Config.marcador2.z, true) < 4 then
         DrawMarker(0,Config.marcador2.x, Config.marcador2.y,Config.marcador2.z, 0, 0, 0, 0, 0, 55.0, 1.2, 1.2, 0.5, 0, 155, 253, 100, 0, 0, 2, 0, 0, 0, 0)            
    
            if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.marcador2.x, Config.marcador2.y,Config.marcador2.z, true) < 1.3 then
                
                    if IsControlJustReleased(1, 51) then
               
               PedidoOrden()
               FreezeEntityPosition(ped,true)

               marcadorCC2 = false
               Citizen.Wait(Config.TiempoOrden *1000)
               marcadorCC2 = true                                 
            end
       
        end
   end

end
else
  Citizen.Wait(1000)
  end


  
end
end)

Citizen.CreateThread(function()
    
  while true do
  local ped = PlayerPedId()
  local coords = GetEntityCoords(PlayerPedId())  
 Citizen.Wait(12)


   if not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityDead(GetPlayerPed(-1)) then



   if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.marcador3.x, Config.marcador3.y ,Config.marcador3.z, true) < 4 then
         DrawMarker(0,Config.marcador3.x, Config.marcador3.y,Config.marcador3.z, 0, 0, 0, 0, 0, 55.0, 1.2, 1.2, 0.5, 252, 34, 12, 100, 0, 0, 2, 0, 0, 0, 0)            
    
            if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.marcador3.x, Config.marcador3.y,Config.marcador3.z, true) < 1.3 then
              
                    if IsControlJustReleased(1, 51) then
                    PedidoOrdenCivil()
            end
       
        end
   end


 else
  Citizen.Wait(1000)
 end

end
end)





TiempoLimitador = true
Citizen.CreateThread(function()
    while TiempoLimitador do
    local ped = PlayerPedId()
    local coords = GetEntityCoords(PlayerPedId()) 

     Citizen.Wait(12)


   if not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityDead(GetPlayerPed(-1)) then




 if PlayerData.job ~= nil and PlayerData.job.name == 'fastfood' and not IsEntityDead( ped ) then
     

      for i=1, #Config.Ccarnes, 1 do
       if GetDistanceBetweenCoords(coords, Config.Ccarnes[i].x,Config.Ccarnes[i].y,Config.Ccarnes[i].z, true) < 0.65 then
           DrawText3Ds(vector3(Config.Ccarnes[i].x,Config.Ccarnes[i].y,Config.Ccarnes[i].z), "Presiona [E] para cocinar", 0.30)    

                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.Ccarnes[i].x, Config.Ccarnes[i].y, Config.Ccarnes[i].z, true) < 0.65 then
                     
                            if IsControlJustReleased(1, 51) then

                     CocinaCarne()
                     FreezeEntityPosition(ped,true)

                     TiempoLimitador = false
                     Citizen.Wait(5500)
                     TiempoLimitador = true

                            end
                        end
            end
       end
 -------------  

      for i=1, #Config.CFrituras, 1 do
       if GetDistanceBetweenCoords(coords, Config.CFrituras[i].x,Config.CFrituras[i].y,Config.CFrituras[i].z, true) < 0.65 then
           DrawText3Ds(vector3(Config.CFrituras[i].x,Config.CFrituras[i].y,Config.CFrituras[i].z), "Presiona [E] para  Freir", 0.30)    

                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.CFrituras[i].x, Config.CFrituras[i].y, Config.CFrituras[i].z, true) < 0.65 then
              
                            if IsControlJustReleased(1, 51) then

                   CocinaFrituras()
                  FreezeEntityPosition(ped,true)
                     TiempoLimitador = false
                     Citizen.Wait(5500)
                     TiempoLimitador = true
                            end
                        end
            end
       end
------

      for i=1, #Config.DispensadorGas, 1 do
       if GetDistanceBetweenCoords(coords, Config.DispensadorGas[i].x,Config.DispensadorGas[i].y,Config.DispensadorGas[i].z, true) < 0.65 then
           DrawText3Ds(vector3(Config.DispensadorGas[i].x,Config.DispensadorGas[i].y,Config.DispensadorGas[i].z), "Presiona [E]  Usar Dispensador", 0.30)    

                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.DispensadorGas[i].x, Config.DispensadorGas[i].y, Config.CFrituras[i].z, true) < 0.65 then
                    
                            if IsControlJustReleased(1, 51) then

                   DispensadorGaseosa()
                   FreezeEntityPosition(ped, true) 
                     TiempoLimitador = false
                     Citizen.Wait(5500)
                     TiempoLimitador = true
                            end
                        end
            end
       end
--------

      for i=1, #Config.EmpaquetadoH, 1 do
       if GetDistanceBetweenCoords(coords, Config.EmpaquetadoH[i].x,Config.EmpaquetadoH[i].y,Config.EmpaquetadoH[i].z, true) < 0.65 then
           DrawText3Ds(vector3(Config.EmpaquetadoH[i].x,Config.EmpaquetadoH[i].y,Config.EmpaquetadoH[i].z), " Presiona [E]  para empaquetar ", 0.30)    

                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.EmpaquetadoH[i].x, Config.EmpaquetadoH[i].y, Config.EmpaquetadoH[i].z, true) < 0.65 then
                     
                            if IsControlJustReleased(1, 51) then

                EmpaquetadoH()
                   FreezeEntityPosition(ped, true) 
                     TiempoLimitador = false
                     Citizen.Wait(5500)
                     TiempoLimitador = true

                            end
                        end
            end
       end
--------
end

 else
  Citizen.Wait(1000)
 end

    end
end)


function Vestuario()
    local elements = {
        {label = 'Ropa de Civil',   value = 'RopaCivil'},
        {label = 'Roba de Trabajo',      value = 'RopaTrabajo'},
        {label = 'Salir   &nbsp;&nbsp;<span style="color:#EA1313;"> Cerrar Ventana</span>' ,  value = 'Salir'}
      
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'miner_actions', {
        title    = 'Miner',
        align    = 'top-left',
        elements = elements
    }, function(data, menu)
        if data.current.value == 'RopaCivil' then
          
            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
                TriggerEvent('skinchanger:loadSkin', skin)
            end)  
              menu.close()
  
        elseif data.current.value == 'RopaTrabajo' then
           

            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
                if skin.sex == 0 then
                    TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
                else
                    TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_female)
                end

            
            end)
             menu.close()
   

        elseif data.current.value == 'Salir' then
            menu.close()
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)
        
        end
    end)
end

function EmpaquetadoH()
  local ped = GetPlayerPed(-1)
    local elements = {
        {label = '<span style="color:#06E931;"> Empaquetar Hamburguesa de Carne  </span>' ,   value = 'Item1'},
        {label = '<span style="color:#06E931;"> Empaquetar Hamburguesa de Pollo  </span>' ,   value = 'Item2'},
        {label = 'Salir   &nbsp;&nbsp;<span style="color:#EA1313;"> Cerrar Ventana</span>' ,  value = 'Salir'}

    }

    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default',  GetCurrentResourceName(), 'EmpaquetadoH', {
        title    = ' Menu de Empaquetado ',
        align    = 'top-right',
        elements = elements
    }, function(data, menu)

        if data.current.value == 'Item1' then
            TriggerServerEvent("LRP-fastfood:empaquetadohcarne")
            AnimacionEmpaquetado()
            menu.close()

            exports['progressBars']:startUI(Config.TiempoFD, " Sirviendo ")
            Citizen.Wait(Config.TiempoFD)
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)


       elseif data.current.value == 'Item2' then
            TriggerServerEvent("LRP-fastfood:empaquetadohpollo")
            AnimacionEmpaquetado()
           FreezeEntityPosition(ped,false)
            menu.close()

exports['progressBars']:startUI(Config.TiempoFD, " Sirviendo ")
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



function AnimacionEmpaquetado()
 local ped = GetPlayerPed(-1)
 local anim1 = "anim@amb@prop_human_atm@interior@female@enter"
 local lib2 =  "enter"

 TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 7.0, 'empaquetar', 0.50) 
Citizen.Wait(100)
ESX.Streaming.RequestAnimDict(anim1, function()
TaskPlayAnim(ped, anim1, lib2 , 8.0, -8, -1, 0, 0, 0, 0, 0)
end)

end

function AnimacionCocinaDispensador()
 local ped = GetPlayerPed(-1)
 local anim1 = "anim@safehouse@whisky"
 local lib2 = "drink_whisky_stage3"

 TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 7.0, 'dispensador', 0.50) 
Citizen.Wait(100)
ESX.Streaming.RequestAnimDict(anim1, function()
TaskPlayAnim(ped, anim1, lib2 , 8.0, -8, 4000, 1, 0, 0, 0, 0)
end)
end

function AnimacionCocinaFrituras()
 local ped = GetPlayerPed(-1)
 local anim1 = "amb@prop_human_bbq@male@enter"
 local lib2 = "enter"

TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 7.0, 'cocinafrituras', 0.50) 
Citizen.Wait(100)
ESX.Streaming.RequestAnimDict(anim1, function()
TaskPlayAnim(ped, anim1, lib2 , 8.0, -8, -1, 1,1, 0, 0, 0)
end)
end

function AnimacionOrden()
 local ped = GetPlayerPed(-1)
 local anim1 = "anim@amb@prop_human_atm@interior@female@idle_a"
 local lib2 = "idle_b"

TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 2.0, 'cajaorden', 0.50) 
Citizen.Wait(100)
ESX.Streaming.RequestAnimDict(anim1, function()
TaskPlayAnim(ped, anim1, lib2 , 8.0, -8, -1, 1, 1, 0, 0, 0)
end) 
end


function AnimacionOrdenCivil()
 local ped = GetPlayerPed(-1)
 local anim1 = "anim@heists@keycard@"
 local lib2 = "exit"

Citizen.Wait(100)
ESX.Streaming.RequestAnimDict(anim1, function()
TaskPlayAnim(ped, anim1, lib2 , 8.0, -8, -1, 16, 0, 0, 0, 0)
end) 
end





function AnimacionCocinaCarne()
 local ped = GetPlayerPed(-1)

 TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 7.0, 'cocinacarne', 0.50) 
 Citizen.Wait(100)
 TaskStartScenarioInPlace(ped , "PROP_HUMAN_BBQ", 0, false)
 
end


function DispensadorGaseosa()
local ped = GetPlayerPed(-1)
    local elements = {
        {label = '<span style="color:#06E931;"> Servir Cocacola  </span>' ,   value = 'Item1'},
        {label = '<span style="color:#06E931;"> Servir Inkacola  </span>' ,   value = 'Item2'},
        {label = '<span style="color:#06E931;"> Servir Sprite  </span>' ,     value = 'Item3'},
        {label = 'Salir   &nbsp;&nbsp;<span style="color:#EA1313;"> Cerrar Ventana</span>' ,  value = 'Salir'}

    }

    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default',  GetCurrentResourceName(), 'DispensadorGaseosa', {
        title    = ' Dispensador de Gaseosa ',
        align    = 'top-right',
        elements = elements
    }, function(data, menu)

        if data.current.value == 'Item1' then
            TriggerServerEvent("LRP-fastfood:dispensadorcocacola")
            AnimacionCocinaDispensador()
            menu.close()

exports['progressBars']:startUI(Config.TiempoFD, " Sirviendo ")
            Citizen.Wait(Config.TiempoFD)
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)

       elseif data.current.value == 'Item2' then
            TriggerServerEvent("LRP-fastfood:dispensadorinkacola")
            AnimacionCocinaDispensador()
         menu.close()

exports['progressBars']:startUI(Config.TiempoFD, " Sirviendo ")
            Citizen.Wait(Config.TiempoFD)
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)

       elseif data.current.value == 'Item3' then
         TriggerServerEvent("LRP-fastfood:dispensadorsprite")
         AnimacionCocinaDispensador()
         menu.close()

exports['progressBars']:startUI(Config.TiempoFD, " Sirviendo ")
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


function CocinaFrituras()
 local ped = GetPlayerPed(-1)

    local elements = {
        {label = '<span style="color:#06E931;"> Freir Papas  </span>' ,   value = 'Item1'},
        {label = '<span style="color:#06E931;"> Freir Nuggets  </span>' ,   value = 'Item2'},
        {label = '<span style="color:#06E931;"> Freir Pollo Broster  </span>' ,   value = 'Item3'},
        {label = 'Salir   &nbsp;&nbsp;<span style="color:#EA1313;"> Cerrar Ventana</span>' ,  value = 'Salir'}

    }

    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default',  GetCurrentResourceName(), 'CocinaFrituras', {
        title    = ' Cocina de Frituras ',
        align    = 'top-right',
        elements = elements
    }, function(data, menu)

        if data.current.value == 'Item1' then
            TriggerServerEvent("LRP-fastfood:cocinapapas")
            AnimacionCocinaFrituras()
            menu.close()

exports['progressBars']:startUI(Config.TiempoFD, " Friendo ")
            Citizen.Wait(Config.TiempoFD)
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)

       elseif data.current.value == 'Item2' then
            TriggerServerEvent("LRP-fastfood:cocinanuggets")
            AnimacionCocinaFrituras()
         menu.close()

exports['progressBars']:startUI(Config.TiempoFD, " Friendo ")
            Citizen.Wait(Config.TiempoFD)
            FreezeEntityPosition(ped,false)
            ClearPedTasks(ped)

       elseif data.current.value == 'Item3' then
         TriggerServerEvent("LRP-fastfood:cocinapollobroster")
         AnimacionCocinaFrituras()
         menu.close()

exports['progressBars']:startUI(Config.TiempoFD, " Friendo ")
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



function PedidoOrden()
   local ped = GetPlayerPed(-1)

    local elements = {
        {label = '<span style="color:#06E931;"> Pedir Orden   </span>' ,   value = 'Item1'},
        {label = 'Salir   &nbsp;&nbsp;<span style="color:#EA1313;"> Cerrar Ventana</span>' ,  value = 'Salir'},

    }

    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default',  GetCurrentResourceName(), 'PedidoOrden', {
        title    = ' Menu Orden ',
        align    = 'top-right',
        elements = elements
    }, function(data, menu)

        if data.current.value == 'Item1' then

            TriggerServerEvent("LRP-fastfood:PedidosOrden")
            AnimacionOrden()
            menu.close()

exports['progressBars']:startUI(Config.TiempoFD, " Pidiendo Orden ")
            Citizen.Wait(Config.TiempoFD)
            FreezeEntityPosition(ped, false) 
           ClearPedTasks(ped)

        elseif data.current.value == 'Salir' then
         menu.close()
          FreezeEntityPosition(ped, false) 
           ClearPedTasks(ped)
        end
    end)

end

function PedidoOrdenCivil()
   local ped = GetPlayerPed(-1)

    local elements = {
  {label = '<span style="color:#107BF7;"> Pedir Combo1  </span>' ,   value = 'Item1'},
  {label = '<span style="color:#F50808;"> Pedir Combo2   </span>' ,   value = 'Item2'},
  {label = '<span style="color:#FF6817;"> Pedir Combo3   </span>' ,   value = 'Item3'},
  {label = '<span style="color:#6c02fc;"> Pedir Combo4   </span>' ,   value = 'Item4'},
  {label = '<span style="color:#e2ab03;"> Pedir Combo5   </span>' ,   value = 'Item5'},
    {label = '<span style="color:#ffff;"> Pedir Ticket  </span>' ,   value = 'Item6'},
  {label = 'Salir   &nbsp;&nbsp;<span style="color:#EA1313;"> Cerrar Ventana</span>' ,  value = 'Salir'},

    }

    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default',  GetCurrentResourceName(), 'PedidoOrdenCivil', {
        title    = ' Menu Orden ',
        align    = 'top-right',
        elements = elements
    }, function(data, menu)

        if data.current.value == 'Item1' then

--COMBO3 --
menu.close() 
exports['mythic_notify']:DoCustomHudText(  'cajaazul', ' PAPAS FRITAS ',7000 )
Citizen.Wait(100)
exports['mythic_notify']:DoCustomHudText(  'cajaazul', ' HAMBURGUESA DE CARNE ',7000 )
Citizen.Wait(100)
exports['mythic_notify']:DoCustomHudText(  'cajaazul', ' INKACOLA ',7000 )
       elseif data.current.value == 'Item2' then

--COMBO2 --
menu.close() 
exports['mythic_notify']:DoCustomHudText(  'cajaroja', ' POLLO BROSTER ',7000 )
Citizen.Wait(100)
exports['mythic_notify']:DoCustomHudText(  'cajaroja', ' HAMBURGUESA DE POLLO ',7000 )
Citizen.Wait(100)
exports['mythic_notify']:DoCustomHudText(  'cajaroja', ' COCACOLA',7000 )
  

       elseif data.current.value == 'Item3' then
--COMBO3 --
menu.close() 
exports['mythic_notify']:DoCustomHudText(  'cajanaranja', ' PAPAS FRITAS ',7000 )
Citizen.Wait(100)
exports['mythic_notify']:DoCustomHudText(  'cajanaranja', ' HAMBURGUESA DE POLLO ',7000 )
Citizen.Wait(100)
exports['mythic_notify']:DoCustomHudText(  'cajanaranja', ' SPRITE ',7000 )

       elseif data.current.value == 'Item4' then
--COMBO4 --      
menu.close() 
exports['mythic_notify']:DoCustomHudText(  'cajamorada', ' BROSTER ',7000 )
Citizen.Wait(100)
exports['mythic_notify']:DoCustomHudText(  'cajamorada', ' HAMBURGUESA DE CARNE ',7000 )
Citizen.Wait(100)
exports['mythic_notify']:DoCustomHudText(  'cajamorada', ' INKACOLA ',7000 )

       elseif data.current.value == 'Item5' then
--COMBO5 --      
menu.close() 
exports['mythic_notify']:DoCustomHudText(  'cajaamarilla', ' NUGGETS ',7000 )
Citizen.Wait(100)
exports['mythic_notify']:DoCustomHudText(  'cajaamarilla', ' HAMBURGUESA DE POLLO ',7000 )
Citizen.Wait(100)
exports['mythic_notify']:DoCustomHudText(  'cajaamarilla', ' SPRITE ',7000 )

      elseif data.current.value == 'Item6' then

          TriggerServerEvent("LRP-fastfood:ticket")

          AnimacionOrdenCivil()



          menu.close()
        elseif data.current.value == 'Salir' then
         menu.close()
           FreezeEntityPosition(ped,false)
           ClearPedTasks(ped)
        end
    end)


end



function CocinaCarne()
 local ped = GetPlayerPed(-1)

    local elements = {
        {label = '<span style="color:#06E931;"> Cocinar Carne Cruda  </span>' ,   value = 'Item1'},
        {label = '<span style="color:#06E931;"> Cocinar Carne de pollo Cruda  </span>' ,   value = 'Item2'},

        {label = 'Salir   &nbsp;&nbsp;<span style="color:#EA1313;"> Cerrar Ventana</span>' ,  value = 'Salir'},

    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default',  GetCurrentResourceName(), 'CocinaCarne', {
        title    = ' Cocina ',
        align    = 'top-right',
        elements = elements
    }, function(data, menu)

        if data.current.value == 'Item1' then

            TriggerServerEvent("LRP-fastfood:cocinahcarnecruda")
            AnimacionCocinaCarne()
             menu.close()    

exports['progressBars']:startUI(Config.TiempoFD, " Cocinando ")


           Citizen.Wait(Config.TiempoFD)  
           FreezeEntityPosition(ped, false)  
           ClearPedTasks(ped) 
               
  elseif data.current.value == 'Item2' then

          TriggerServerEvent("LRP-fastfood:cocinahpollocrudo")
          AnimacionCocinaCarne()
          menu.close()
exports['progressBars']:startUI(Config.TiempoFD, " Cocinando ")


           Citizen.Wait(Config.TiempoFD)
           FreezeEntityPosition(ped, false)  
           ClearPedTasks(ped) 
           

        elseif data.current.value == 'Salir' then
           FreezeEntityPosition(ped, false)  
           ClearPedTasks(ped) 
           menu.close()
        end
    end)
end








DrawText3Ds = function(coords, text, scale)
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

    DrawRect(_x, _y + 0.0090, 0.025 + factor, 0.030, 41, 11, 41, 100)
end
